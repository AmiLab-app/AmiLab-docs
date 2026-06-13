---
sidebar_position: 5
title: Vormprofielen en doorsneden
description: Hoe het silhouet en de doorsnede van een vormprofiel samen een 3D-vorm worden die je kunt genereren.
---

# Vormprofielen en doorsneden

In de Vormprofielen-weergave ontwerp je vormen die niet in de ingebouwde lijst staan. Het werkt volgens een eenvoudig idee, ontleend aan de draaischijf van een pottenbakker: **teken de omtrek van één kant van een vorm en draai die rond.** Twee dingen bepalen het resultaat — het *vormprofiel* en de *doorsnede*.

## Het vormprofiel: een silhouet van controlepunten

Een **vormprofiel** is het silhouet van één helft van een vorm, beschreven door een handvol **controlepunten**. Elk punt beantwoordt één vraag: *hoe breed is de vorm op deze hoogte?*

- De **hoogte** van een punt is zijn plaats vanaf de onderkant van het haakwerk, in centimeters.
- De **straal** van een punt is hoe ver de vorm op die hoogte vanuit zijn middenas naar buiten reikt. AmiLab bewaart de straal als een fractie van 0 (op de as) tot 1 (de maximale straal van het profiel), zodat de hele vorm schalen één instelling is.

Beweeg een punt naar de as en de vorm knijpt op die hoogte naar binnen; beweeg het naar buiten en de vorm bolt op. Voeg punten toe waar je de curve fijner wilt sturen, haal ze weg waar dat niet nodig is. De omtrek die ze trekken, is het vormprofiel.

Twee instellingen schalen die omtrek naar echte maten:

- **Max. straal** — de grootste breedte die de vorm kan krijgen; het is de echte maat waarop een straalfractie van 1 uitkomt.
- **Totale hoogte** — de hoogte van het bovenste punt, die het hele silhouet verticaal uitrekt of samenperst.

## De doorsnede: hoe het silhouet wordt rondgedraaid

Het vormprofiel beschrijft alleen het zijaanzicht. De **doorsnede** bepaalt hoe de vorm eruitziet als je er dwars doorheen snijdt — de vorm waar AmiLab het silhouet omheen draait:

- **Cirkel** — een glad, rond lichaam (een echt omwentelingslichaam).
- **Cirkel+** — rond, maar met steken die tussen toeren verspringen.
- **Zeshoek** — een zeszijdig lichaam.
- **Vierkant** — een vierzijdig lichaam.

Hetzelfde vormprofiel levert heel verschillende haakwerken op, afhankelijk van de doorsnede: een druppelsilhouet wordt een glad ei met een cirkel, of een geslepen edelsteen met een zeshoek.

## Van vormprofiel naar patroon

Een vormprofiel is een herbruikbaar *sjabloon*, geen patroon op zichzelf. Wanneer je het [genereert](./materializing-shapes.md), combineert AmiLab het silhouet en de doorsnede met je [proeflapje](./gauge-and-dimensions.md) om het steekaantal voor elke toer te berekenen, en bouwt het dan de steken — precies zoals het de ingebouwde vormen doet. Het vormprofiel blijft opgeslagen, klaar om opnieuw te genereren op elke maat of proeflapje.

## Zie ook

- [Vormen genereren](./materializing-shapes.md) — hoe een vormprofiel steken wordt
- [Bedieningselementen van de vormprofiel-editor](../reference/profile-editor-controls.md) — de bediening in de Vormprofielen-weergave
- [Een eigen vorm maken](../tutorials/create-a-custom-shape.md) — ontwerp en genereer een vormprofiel stap voor stap
