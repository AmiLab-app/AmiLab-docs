---
sidebar_position: 3
title: Formen erzeugen
description: Was erzeugte Formen sind, wie Parameter zu Maschen werden und warum das Erzeugen die aktuelle Anleitung ersetzt.
---

# Formen erzeugen

Jede Masche einer Kugel von Hand zu setzen dauert lange. Mit **Form erzeugen** übernimmt AmiLab diese Arbeit: Du beschreibst die gewünschte Form mit wenigen Werten, und AmiLab erstellt daraus eine vollständige, bearbeitbare Häkelanleitung.

## Was „erzeugen“ bedeutet

Eine erzeugte Form ist kein besonderes Objekt, sondern eine normale Anleitung. AmiLab berechnet bei deiner aktuellen Maschenprobe die nötigen Maschen und Runden und setzt sie in den Editor, als hättest du sie selbst aufgebaut. Danach kannst du das Ergebnis wie jede andere Anleitung bearbeiten, umfärben und weiter formen.

## Von Parametern zu Maschen

Du gibst eine **Größe** und bei manchen Formen ein zweites Maß an. AmiLab erledigt den Rest:

- Die App liest deine [Maschenprobe](./gauge-and-dimensions.md), um Entfernungen in Maschen und Runden umzurechnen.
- Sie berechnet die Maschenzahl jeder Runde so, dass die Runden der gewählten Silhouette folgen.
- Sie erzeugt die Maschen, ihre Basisverbindungen und mögliche Abschlüsse, etwa den zusammengezogenen Faden am oberen Ende einer Kugel.

Da die Maschenprobe die Berechnung bestimmt, kann dieselbe gewünschte Größe bei verschiedenen Maschenproben unterschiedliche Maschenzahlen ergeben. Entscheidend ist die angeforderte Endgröße, nicht eine feste Maschenzahl.

Alle verfügbaren Formen, Parameter und Grenzwerte stehen in der [Formenreferenz](../reference/shapes-and-parameters.md).

## Das Erzeugen ersetzt die aktuelle Anleitung

Eine Form belegt den gesamten Editor. Deshalb **ersetzt** das Erzeugen die aktuell geöffnete Anleitung und löscht den Verlauf für Rückgängig-Aktionen. Enthält die Anleitung bereits Maschen, fragt AmiLab zuerst nach einer Bestätigung. Bei einer leeren Anleitung erscheint die Form sofort.

Verwende das Erzeugen daher als Ausgangspunkt: Erstelle zuerst die Grundform und bearbeite und färbe sie anschließend zum gewünschten Teil.

## Gespeicherte Profile

Neben den eingebauten Grundformen wie Kugeln, Zylinder und flachem Kreis kannst du eine Form aus einem **Profil** erzeugen. Ein Profil ist eine Silhouette, die du in der Ansicht **Formprofile** entworfen hast. AmiLab dreht diese Silhouette zu einer 3D-Form, sodass deine eigenen Formen als wiederverwendbare Vorlagen dienen.

## Verwandte Themen

- [Formen und Parameter](../reference/shapes-and-parameters.md) – alle Formen mit Eingaben und Grenzwerten
- [Maschenprobe und Abmessungen](./gauge-and-dimensions.md) – wie aus einer Größe Maschenzahlen werden
- [Das Farbmodell](./the-color-model.md) – eine neu erzeugte Form umfärben
