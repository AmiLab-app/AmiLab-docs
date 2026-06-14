---
sidebar_position: 4
title: Formen und Parameter
description: Die in AmiLab erzeugbaren Formen, ihre Parameter und die zulässigen Eingabebereiche.
---

# Formen und Parameter

Diese Tabelle zeigt die Formen im Dialog **Form einfügen** und die jeweiligen Parameter. Eine Erklärung des Ablaufs findest du unter [Formen erzeugen](../explanations/materializing-shapes.md).

## Formen

| Form | Größe | Zweites Maß | Hinweise |
|---|---|---|---|
| **Kugel, glatt** | Radius (cm) | Höhe (cm), optional | Lass die Höhe leer, damit AmiLab sie aus dem Radius berechnet. |
| **Kugel, sechseckig** | Radius (cm) | Höhe (cm), optional | Sechseckiger Querschnitt mit versetzten Maschen für eine gleichmäßige Kugel. Ohne Eingabe wird die Höhe automatisch berechnet. |
| **Kugel, versetzt** | Radius (cm) | Höhe (cm), optional | Zwischen den Runden versetzte Maschen. Ohne Eingabe wird die Höhe automatisch berechnet. |
| **Zylinder** | Durchmesser (cm) | Länge (cm) | Ein gerader Zylinder in der angegebenen Länge. |
| **Flacher Kreis** | Radius (cm) | – | Eine flache Scheibe ohne zweites Maß. |
| **Gespeichertes Profil** | Max. Radius (cm) | Höhe (cm), optional | Erzeugt eines deiner gespeicherten [Profile](./glossary.md). Als Ausgangswerte dienen die Maße des Profils. |

## Eingabebereiche

| Parameter | Bereich | Schrittweite |
|---|---|---|
| Größe (Radius / Durchmesser) | 1–30 cm | 0,5 |
| Höhe / Länge | 0,5–200 cm | 0,5 |

Die Maschenzahlen für eine bestimmte Größe hängen von deiner [Maschenprobe](../explanations/gauge-and-dimensions.md) ab. Der Dialog rechnet mit der aktuellen Maschenprobe Zentimeter in Maschen und Runden um.

## Verwandte Themen

- [Formen erzeugen](../explanations/materializing-shapes.md) – wie Parameter zu Maschen werden
- [Maschenprobe und Abmessungen](../explanations/gauge-and-dimensions.md) – warum die Maschenprobe das Ergebnis beeinflusst
- [Erste Schritte](../tutorials/getting-started.md) – eine sechseckige Kugel Schritt für Schritt erzeugen
