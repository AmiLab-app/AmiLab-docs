---
sidebar_position: 2
title: Eine eigene Form erstellen
description: Entwirf im Profileditor eine eigene Silhouette und erzeuge daraus eine Häkelanleitung.
---

# Eine eigene Form erstellen

Die eingebauten Kugeln und Zylinder decken viele Entwürfe ab. Für andere Formen verwendest du die Ansicht **Formprofile**. Dort zeichnest du ein *Profil*, also den Umriss einer Seite. AmiLab dreht diesen Umriss zu einer 3D-Form, aus der du eine Anleitung erzeugen kannst.

In diesem Tutorial entwirfst du ein einfaches **Ei** und erzeugst es anschließend im Anleitungseditor.

Du lernst:

- die Ansicht **Formprofile** zu öffnen und ein Profil zu beginnen
- Größe und Querschnitt festzulegen
- eine Silhouette durch Verschieben, Hinzufügen und Entfernen von Kontrollpunkten zu formen
- die eigene Form als bearbeitbare Anleitung zu erzeugen

**Dauer:** ungefähr 15 Minuten.

**Voraussetzungen:** Melde dich an, damit das Profil gespeichert wird. Arbeite nach Möglichkeit zuerst [Erste Schritte](./getting-started.md) durch; dieses Tutorial setzt die grundlegende Bedienung voraus.

---

## Schritt 1: Formprofile öffnen

1. Klicke rechts oben auf die Menüschaltfläche (**☰**).
2. Klicke unter **Ansicht** auf **Formprofile**.

Der Arbeitsbereich wechselt zum Profileditor mit Zeichenfläche und 3D-Vorschau.

:::note[Profil und Form]

Die Ansicht heißt **Formprofile**. Darin entwirfst du ein **Profil**, also eine wiederverwendbare Silhouette. Die Form ist das räumliche Ergebnis dieses Profils.

:::

---

## Schritt 2: Profil beginnen

1. Klicke in der Werkzeugleiste auf **Neu**.
2. Gib im Dialog **Profil benennen** einen Namen wie `Ei` ein.
3. Klicke auf **Erstellen**.

Das Profil wird in deinem Konto gespeichert und danach wie eine Anleitung **automatisch gespeichert**. Der Speicherstatus zeigt beim Bearbeiten **Ungesichert** und nach dem Speichern **Gespeichert**.

---

## Schritt 3: Zeichenfläche verstehen

Die Zeichenfläche zeigt das Profil als Kurve mit mehreren **Kontrollpunkten**:

- Der **linke Rand** ist die Mittelachse der Form.
- Nach oben nimmt die **Höhe** zu; horizontal verläuft der **Radius**, also der Abstand von der Mittelachse.
- Jeder Kontrollpunkt bestimmt, **wie breit die Form auf seiner Höhe ist**. Ziehe ihn zur Achse, um die Form dort einzuziehen, oder nach außen, um sie zu wölben.

Ein neues Profil beginnt als leicht zulaufender Zylinder mit einem unteren und einem oberen Punkt. Die 3D-Vorschau zeigt die Form der aktuellen Silhouette und wird bei jeder Änderung aktualisiert.

---

## Schritt 4: Größe und Querschnitt festlegen

Zwei Chips über der Zeichenfläche steuern die Gesamtform.

**Abmessungen** – klicke auf den Chip `r:… h:…`:

1. Setze **Max. Radius** auf `4` cm.
2. Setze **Gesamthöhe** auf `7` cm.
3. Klicke auf **Fertig**.

**Querschnitt** – dieser Chip legt fest, wie AmiLab die Silhouette räumlich aufbaut. Klicke darauf, um zwischen den Optionen zu wechseln:

| Querschnitt | Ergebnis |
|---|---|
| **Kreis** | Glatter, runder Querschnitt. |
| **Kreis+** | Rund, mit versetzten Maschen. |
| **Sechseck** | Querschnitt mit sechs Seiten. |
| **Quadrat** | Querschnitt mit vier Seiten. |

Lass für ein rundes Ei **Kreis** ausgewählt.

---

## Schritt 5: Ei formen

Ein Ei ist an beiden Enden rund und unterhalb der Mitte am breitesten.

1. **Unterseite abrunden.** Ziehe den untersten Punkt zur linken Achse, damit die Basis schmal beginnt.
2. **Bauch ergänzen.** Klicke auf **+ Punkt**. Ziehe den neuen Kontrollpunkt in das untere Drittel der Zeichenfläche und weit nach rechts bis nahe an den maximalen Radius.
3. **Oberseite abrunden.** Ziehe den obersten Punkt zur Achse, bis die Form weich ausläuft.
4. **Kurve glätten.** Füge zwischen Bauch und Enden ein oder zwei Punkte hinzu und verschiebe sie so, dass eine gleichmäßige Eierkurve entsteht. Wähle einen überflüssigen Punkt aus und klicke auf **- Punkt**, um ihn zu entfernen.

Beobachte dabei die 3D-Vorschau. Sie zeigt jede Änderung sofort.

:::tip[Bewegungsbereich der Punkte]

Der **unterste und oberste Punkt** bleiben auf ihrer Höhe und lassen sich nur horizontal verschieben. Ändere die Gesamthöhe im Dialog **Abmessungen**. Die Punkte **dazwischen** lassen sich frei bewegen, solange sie zwischen ihren Nachbarn bleiben.

:::

Wenn die Silhouette einem Ei entspricht und der Speicherstatus **Gespeichert** anzeigt, ist die Form bereit.

---

## Schritt 6: Form als Anleitung erzeugen

Ein Profil ist eine Vorlage. Zum Häkeln erzeugst du daraus eine Anleitung, genauso wie aus einer eingebauten Form.

1. Öffne das Menü (**☰**) und wähle unter **Ansicht** die **Häkelanleitungen**.
2. Klicke auf **Neu**, benenne die leere Anleitung zum Beispiel `Mein Ei` und klicke auf **Erstellen**.
3. Klicke in der Werkzeugleiste auf **Form**, um **Form einfügen** zu öffnen.
4. Öffne die Auswahl **Form** und wähle unter **Gespeicherte Profile** dein **Ei**.
5. **Größe** und **Höhe** stammen aus dem Profil. Übernimm sie oder passe die Endgröße an.
6. Klicke auf **Form erzeugen**.

Das Maschenraster zeigt die Runden des Eis, und die 3D-Vorschau stellt es dar. Ab jetzt ist es eine normale Anleitung, die du umfärben, bearbeiten und schließen kannst.

:::note[Maschenprobe und vorhandene Anleitung]

AmiLab berechnet die Maschenzahlen mit deiner aktuellen [Maschenprobe](../explanations/gauge-and-dimensions.md). Das fertige Ei entspricht daher bei dieser Maschenprobe den angegebenen Maßen. Da eine Form die gesamte Anleitung füllt, fordert AmiLab beim Ersetzen vorhandener Maschen eine Bestätigung an. Deshalb hast du mit einer leeren Anleitung begonnen.

:::

---

## Ergebnis

Du hast eine wiederverwendbare Form entworfen und daraus eine Häkelanleitung erzeugt. Das Profil **Ei** bleibt unter deinen gespeicherten Formen verfügbar und lässt sich später mit jeder Größe oder Maschenprobe erneut verwenden.

## Nächste Schritte

- Färbe das Ei mithilfe des [Farbmodells](../explanations/the-color-model.md) und der Farbschritte aus [Erste Schritte](./getting-started.md).
- [Schließe das fertige Häkelstück](../how-to/close-up-a-piece.md).
- Lies [Formen erzeugen](../explanations/materializing-shapes.md), um die Umrechnung von Profilen in Maschen zu verstehen.
