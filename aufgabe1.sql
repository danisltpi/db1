SELECT * FROM teilestamm;

SELECT * FROM teilestamm WHERE UPPER(bezeichnung) LIKE UPPER('%city%');

SELECT * from auftragsposten;

SELECT teilnr, gesamtpreis 
FROM auftragsposten
WHERE gesamtpreis = (SELECT MAX(gesamtpreis) FROM auftragsposten);

SELECT COUNT(*) as kunden from kunde;
SELECT COUNT(*) from personal;
SELECT COUNT(*) from teilestamm;

SELECT MIN(datum) as von, MAX(datum) as bis from auftrag

--- Auftrag 2 kunde: Maier Ingrid, Personal: Johannes Köster 
SELECT * FROM auftrag WHERE kundnr = 3;
SELECT * FROM personal WHERE persnr = 5;
SELECT name FROM personal WHERE persnr = 1;

SELECT * FROM lager WHERE bestand > 0 ORDER BY bestand;

-- sus
SELECT DISTINCT teilnr FROM lieferung ORDER BY teilnr DESC;

SELECT teilnr AS nummer, bezeichnung, preis AS brutto FROM teilestamm WHERE  preis > 30;

SELECT einzelteilnr AS teilennummer FROM teilestruktur WHERE oberteilnr = 300001 AND anzahl > 100
