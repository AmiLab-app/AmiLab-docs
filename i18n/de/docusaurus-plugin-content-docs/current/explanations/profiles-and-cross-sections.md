---
sidebar_position: 5
title: Profile und Querschnitte
description: Wie die Silhouette und der Querschnitt eines Profils gemeinsam eine erzeugbare 3D-Form ergeben.
---

# Profile und Querschnitte

In der Ansicht **Formprofile** entwirfst du Formen, die nicht in der eingebauten Liste stehen. Das Prinzip ist einfach: **Zeichne den Umriss einer Seite und drehe ihn um eine Achse.** Zwei Eigenschaften bestimmen das Ergebnis – das *Profil* und der *Querschnitt*.

## Das Profil: eine Silhouette aus Kontrollpunkten

Ein **Profil** ist die Silhouette einer Hälfte der Form. Sie wird durch mehrere **Kontrollpunkte** beschrieben. Jeder Punkt beantwortet die Frage: *Wie breit ist die Form auf dieser Höhe?*

- Die **Höhe** eines Punkts ist sein Abstand vom unteren Ende des Häkelstücks in Zentimetern.
- Der **Radius** gibt an, wie weit die Form auf dieser Höhe von der Mittelachse nach außen reicht. AmiLab speichert den Radius als Anteil von 0 auf der Achse bis 1 beim maximalen Profilradius. Dadurch lässt sich die gesamte Form mit einer Einstellung skalieren.

Ziehst du einen Punkt zur Achse, wird die Form dort schmaler. Ziehst du ihn nach außen, wölbt sie sich. Füge Punkte hinzu, wenn du die Kurve genauer steuern möchtest, und entferne überflüssige Punkte. Der verbundene Umriss ist das Profil.

Zwei Einstellungen übertragen diesen Umriss in reale Maße:

- **Max. Radius** – die größte Breite der Form; ein Radiusanteil von 1 entspricht diesem realen Wert.
- **Gesamthöhe** – die Höhe des obersten Punkts; sie streckt oder staucht die ganze Silhouette vertikal.

## Der Querschnitt: wie die Silhouette gedreht wird

Das Profil zeigt nur die Seitenansicht. Der **Querschnitt** bestimmt die Form eines horizontalen Schnitts und damit, wie AmiLab die Silhouette räumlich aufbaut:

- **Kreis** – ein glatter, runder Körper.
- **Kreis+** – rund, mit zwischen den Runden versetzt angeordneten Maschen.
- **Sechseck** – ein Körper mit sechs Seiten.
- **Quadrat** – ein Körper mit vier Seiten.

Dasselbe Profil ergibt je nach Querschnitt sehr unterschiedliche Häkelstücke. Eine Tropfensilhouette wird mit einem Kreis zu einem glatten Ei und mit einem Sechseck zu einer kantigen Form.

## Vom Profil zur Anleitung

Ein Profil ist eine wiederverwendbare *Vorlage*, noch keine Anleitung. Beim [Erzeugen](./materializing-shapes.md) kombiniert AmiLab Silhouette und Querschnitt mit deiner [Maschenprobe](./gauge-and-dimensions.md). Daraus berechnet die App die Maschenzahl jeder Runde und erzeugt anschließend die Maschen – genau wie bei eingebauten Formen. Das Profil bleibt gespeichert und kann später in jeder Größe und mit jeder Maschenprobe erneut verwendet werden.

## Verwandte Themen

- [Formen erzeugen](./materializing-shapes.md) – wie ein Profil zu Maschen wird
- [Bedienelemente im Profileditor](../reference/profile-editor-controls.md) – die Funktionen der Ansicht **Formprofile**
- [Eine eigene Form erstellen](../tutorials/create-a-custom-shape.md) – ein Profil Schritt für Schritt entwerfen und erzeugen
