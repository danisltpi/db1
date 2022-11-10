BEGIN;
SELECT COUNT(*) as anzahl_lieferungen FROM lieferung;
DELETE FROM lieferant;
SELECT COUNT(*) as anzahl_lieferungen FROM lieferung;
ROLLBACK;
SELECT COUNT(*) as anzahl_lieferungen FROM lieferung;
COMMIT;

-- wegen zeile 82