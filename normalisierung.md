## 1NF

| MitarbeiterNr | Abteilung | ChefNr | Kunde | Ware         | Anzahl |
| ------------- | --------- | ------ | ----- | ------------ | ------ |
| 11            | VT        | 5      | Miele | Dichtung     | 15     |
| 11            | VT        | 5      | Bosch | TFT          | 51     |
| 11            | VT        | 5      | Miele | Drehschalter | 55     |
| 21            | VT        | 5      | DB    | Trafo        | 58     |
| 21            | VT        | 5      | Miele | Dichtung     | 55     |
| 28            | EN        | 8      | SEW   | Wicklung     | 70     |

## 3NF

### Mitarbeiter

| MitarbeiterNr | Abteilung | ChefNr |
| ------------- | --------- | ------ |
| 11            | VT        | 5      |
| 21            | VT        | 5      |
| 28            | EN        | 8      |

### Auftrag

| MitarbeiterNr | Kunde | Ware         | Anzahl |
| ------------- | ----- | ------------ | ------ |
| 11            | Miele | Dichtung     | 15     |
| 11            | Bosch | TFT          | 51     |
| 11            | Miele | Drehschalter | 55     |
| 21            | DB    | Trafo        | 58     |
| 21            | Miele | Dichtung     | 55     |
| 28            | SEW   | Wicklung     | 70     |
