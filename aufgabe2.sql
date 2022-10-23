SELECT auftrnr,
  datum
FROM auftrag
WHERE kundnr = (
    SELECT nr
    FROM kunde
    WHERE name = 'Fahrrad Shop'
  )