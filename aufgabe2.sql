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
GROUP BY kundnr;
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
SELECT * FROM (

-- kinda sus
SELECT kunde.name,
  COUNT(auftrag.auftrnr) as anzahl
FROM kunde
  JOIN auftrag ON auftrag.kundnr = kunde.nr
  GROUP BY kunde.name
  HAVING anzahl= MAX(anzahl)
) 