---
sidebar_position: 2
title: Maschenprobe und Abmessungen
description: Wie AmiLab Maschen- und Rundenzahlen in reale Maße umrechnet und warum eine andere Maschenprobe das ganze Häkelstück skaliert.
---

# Maschenprobe und Abmessungen

Eine Häkelanleitung besteht aus Maschen und Runden. Das fertige Spielzeug hat dagegen Maße in Zentimetern. **Die Maschenprobe verbindet beides** und zeigt AmiLab, wie groß dein Häkelstück tatsächlich wird.

## Was die Maschenprobe beschreibt

Die Maschenprobe besteht aus zwei Werten für die Dichte des Häkelgewebes:

- **Maschen pro 10 cm** – wie viele Maschen auf 10 cm Breite passen.
- **Reihen pro 10 cm** – wie viele Reihen 10 cm Höhe ergeben.

Die Werte hängen von Garn, Häkelnadel und deiner persönlichen Fadenspannung ab. Am zuverlässigsten ist eine selbst gehäkelte und ausgemessene Probe; die Banderole des Garns ist ein guter Ausgangspunkt. AmiLab verwendet standardmäßig **18 Maschen und 20 Reihen pro 10 cm**. Du kannst **1–60** Maschen und **1–80** Reihen einstellen.

## Wie AmiLab die Abmessungen berechnet

AmiLab kombiniert die Maschenprobe mit dem Maschengraph, platziert damit jede Masche im 3D-Raum und misst anschließend das Ergebnis. **Breite, Höhe und Tiefe** unter der 3D-Vorschau zeigen die reale Größe des Häkelstücks *bei der aktuellen Maschenprobe*.

Dieselbe Maschenzahl ergibt bei einer anderen Maschenprobe eine andere Größe. Eine Kugel mit sechs Runden bleibt mit feinem Baumwollgarn klein und wird mit dicker Wolle deutlich größer – die Anleitung ist gleich, die Maschenprobe und damit das fertige Spielzeug sind verschieden.

## Warum eine andere Maschenprobe alles skaliert

Die Maschenprobe gehört nicht zu einzelnen Maschen, sondern gilt für das gesamte Häkelstück. Wenn du einen der beiden Werte änderst, berechnet AmiLab die Anordnung neu. Das Stück wird als Ganzes größer oder kleiner. Die Anzahl der Maschen bleibt unverändert; nur die physische Größe ändert sich.

Das wirkt sich auch auf [erzeugte Formen](./materializing-shapes.md) aus. Wenn du eine Kugel oder einen Zylinder in einer bestimmten Größe anforderst, bestimmt AmiLab anhand deiner Maschenprobe, wie viele Maschen dafür nötig sind.

## Wo die Maschenprobe gespeichert wird

- **In einem Projekt** – die Maschenprobe gehört zum Projekt und gilt für alle darin enthaltenen Anleitungen. Du bearbeitest sie in den Projekteinstellungen, die du über den Chip **Maschenprobe** über dem Maschenraster öffnest.
- **Ohne Projekt** – die Maschenprobe gehört nur zur einzelnen Anleitung. Der Chip **Maschenprobe** öffnet einen einfachen Dialog zum Ändern der Werte.

## Verwandte Themen

- [Wie AmiLab ein Häkelstück modelliert](./how-amilab-models-a-piece.md) – der Maschengraph, den die Maschenprobe skaliert
- [Formen erzeugen](./materializing-shapes.md) – wie die Maschenprobe erzeugte Formen dimensioniert
- [Erste Schritte](../tutorials/getting-started.md) – die Maschenprobe in einem vollständigen Ablauf einstellen
