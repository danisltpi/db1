SELECT auftrnr,
  datum
FROM auftrag
WHERE kundnr IN (
    SELECT nr
    FROM kunde
    WHERE name = 'Fahrrad Shop'
  );
SELECT auftrnr,
  datum
FROM auftrag
WHERE kundnr = SOME (
    SELECT nr
    FROM kunde
    WHERE name = 'Fahrrad Shop'
  );
SELECT auftrnr,
  datum
FROM auftrag
WHERE EXISTS(
    SELECT *
    FROM kunde
    WHERE auftrag.kundnr = (
        SELECT nr
        FROM kunde
        WHERE name = 'Fahrrad Shop'
      )
  );
SELECT kundnr,
  COUNT(*) AS anzahl,
  MIN(datum) AS von,
  MAX(datum) AS bis
FROM auftrag
GROUP BY kundnr
ORDER BY kundnr ASC;
SELECT kundnr,
  COUNT(*) AS anzahl,
  MIN(datum) AS von,
  MAX(datum) AS bis
FROM auftrag
GROUP BY kundnr
HAVING COUNT(*) = 1;
SELECT kunde.nr,
  kunde.name,
  auftrag.auftrnr AS auftrag,
  personal.name
FROM auftrag
  JOIN kunde ON auftrag.kundnr = kunde.nr
  JOIN personal ON auftrag.persnr = personal.persnr;
SELECT kunde.name,
  COUNT(auftrag) as auftraege
FROM kunde
  JOIN auftrag ON auftrag.kundnr = kunde.nr
GROUP BY kunde.name
ORDER BY auftraege desc
LIMIT 1;
WITH gesamt_auftraege AS (
  SELECT kunde.name,
    COUNT (auftrag) AS auftrag_summe,
    SUM(auftragsposten.gesamtpreis) AS umsatz
  FROM kunde
    JOIN auftrag ON auftrag.kundnr = kunde.nr
    JOIN auftragsposten ON auftragsposten.auftrnr = auftrag.auftrnr
  GROUP BY kunde.name
)
SELECT *
FROM gesamt_auftraege
WHERE (
    umsatz = (
      SELECT MAX(umsatz)
      FROM gesamt_auftraege
    )
  );
CREATE VIEW KundenUmsatz AS
SELECT kunde.name,
  SUM(auftragsposten.gesamtpreis) AS summe
FROM kunde
  JOIN auftrag ON auftrag.kundnr = kunde.nr
  JOIN auftragsposten ON auftragsposten.auftrnr = auftrag.auftrnr
GROUP BY kunde.name;
SELECT *
FROM KundenUmsatz;
DROP VIEW KundenUmsatz;