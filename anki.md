# Datenbanken 1


## Relationale Datenbanken
- Daten in Tabellen (Relationen)
- Beziehungen zwischen Tabellen

Nachteile: 
- Redundanzen -> Konsistenzhaltung zwischen Tabellen schwierig
- Hohe Rechenleistung erforderlich


## Objektorientierte Datenbanken
- Erweiterung von Relationalen Datenbanken
- Speichern Objekte und deren Beziehungen
- Komplexer als Relationale
Vorteil ggü. Relationale Datenbanken: 
Entwickler müssen nicht Beziehungen auf Tabellen abbilden 

## Netzwerkorientierte Datenbanken
- Daten in Form eines Netzwerks verbunden
- Aufwändige Struktuen, komplexe Zugriffe


## Zugriffsarten auf Datenbanken
- Abfrage
- Mutation (Einfügen, Aktualisieren, Löschen)
- Transaktion (Abfragen und Mutationen in Folge als eine Einheit)

## Relationen-Modell
![](2022-10-13-14-38-43.png)
| . | . | . |
|---|---|---|
| Relation | Tabelle | Objekte der selben Klasse |
| Tupel | Zeile, Datensatz, Record |  |
| Attribut | Spalte |
| Domäne | Wertebereich | z.B. Text mit max. 11 Zeichen
| Schlüssel |  | Erlauben Zugriff auf einzelne Tupel 
| Operationen |  | Zur Abfrage usw.|
| Regeln | | Zur Konsistenzerhaltung:w

## Domäne
Grundmenge deren Elemente atomar sind

## Grad
Anzahl der Domänen in einem Tupel

## Kardinalität
Anzahl Tupel einer Relation

## Kandidatenschlüssel
- Identifizieren Tupel durch Zusammenstellung von Attributwerten

## Primärschlüssel
- Spezieller Kandidatenschlüssel für diesen Zweck z.B. id (unterstrischen markiert)

## Surrogatschlüssel
- Primärschlüssel als neues Attribut und nicht aus Daten in der Tabelle abgeleitet z.B. id 

## Fremdschlüssel
Referenzierung eines Primärschlüssels einer anderen Relation (durch # markiert)