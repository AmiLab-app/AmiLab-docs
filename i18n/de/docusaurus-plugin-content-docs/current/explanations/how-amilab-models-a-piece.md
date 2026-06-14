---
sidebar_position: 1
title: Wie AmiLab ein Häkelstück modelliert
description: Der Maschengraph hinter jeder Anleitung – wie Maschen aufeinander verweisen und warum Runden berechnet statt gespeichert werden.
---

# Wie AmiLab ein Häkelstück modelliert

Ein Grundgedanke erklärt fast alles in AmiLab: **Eine Anleitung ist ein Graph aus Maschen, und die angezeigten Runden werden aus diesem Graphen berechnet.** Wenn du verstehst, wie Maschen miteinander verbunden sind, werden Zunahmen, Abnahmen und Bearbeitungen nachvollziehbar.

## Eine Masche und ihre Basismaschen

Für jede Masche sind hier drei Angaben wichtig:

- ihre **Art** – `fM`, `hStb`, `Stb`, `DStb` oder `LM` (siehe [Maschenarten](../reference/stitch-types.md))
- ihre **Basis** – die Masche oder Maschen der darunterliegenden Runde, in die sie gearbeitet wird
- eine optionale **Farbe**

Die Basis ist entscheidend. Eine Masche verweist nach unten auf die Masche, auf der sie sitzt:

- **Keine Basis** – die Masche beginnt das Häkelstück. Dazu gehören die Anfangsmaschen eines Fadenrings oder einer Luftmaschenkette.
- **Eine Basis** – eine normale Masche, die in genau eine Masche der vorherigen Runde gearbeitet wird.
- **Zwei oder mehr Basismaschen** – eine **Abnahme**: Eine Masche wird über mehrere Maschen der vorherigen Runde gearbeitet und verringert die Maschenzahl.

Eine **Zunahme** ist das Gegenstück und benötigt keinen eigenen Datensatz. Wenn zwei Maschen derselben Runde dieselbe Basis teilen, wurden zwei Maschen in dieselbe Einstichstelle gearbeitet. AmiLab erkennt die Zunahme direkt an der Struktur des Graphen.

## Runden werden berechnet, nicht gespeichert

AmiLab speichert keine Angabe wie „Runde 3“. Stattdessen berechnet die App die Runden nach jeder Änderung aus den Basisverbindungen:

- Anfangsmaschen ohne Basis bilden die erste Runde.
- Eine Masche gehört in die Runde direkt über ihrer tiefsten Basis.

Darum bleibt das Maschenraster auch nach Bearbeitungen konsistent. Wenn du eine Basis änderst, eine Masche teilst oder löschst, berechnet AmiLab die Runden aus den Verbindungen neu. Eine separat gespeicherte Anordnung könnte dagegen von der tatsächlichen Struktur abweichen.

## Warum das für dich wichtig ist

- **Zu- und Abnahmen entstehen aus Verbindungen.** Du formst ein Häkelstück, indem du änderst, wie viele Maschen eine Basis teilen – nicht durch ein getrenntes Merkmal „Zunahme“.
- **Bearbeitungen bleiben zusammenhängend.** Rundenanzeige, Anleitungstext und 3D-Vorschau beruhen immer auf demselben Graphen.
- **Auch die 3D-Vorschau entsteht aus diesem Graphen.** Die Basisverbindungen zeigen AmiLab, welche Maschen aufeinanderliegen und wo jede Masche im Raum platziert werden muss.

## Verwandte Themen

- [Maschenprobe und Abmessungen](./gauge-and-dimensions.md) – wie Maschenzahlen zu realen Maßen werden
- [Maschenarten](../reference/stitch-types.md) – die Bausteine des Graphen
- [Glossar](../reference/glossary.md) – kurze Definitionen von Basismasche, Runde, Zunahme und Abnahme
