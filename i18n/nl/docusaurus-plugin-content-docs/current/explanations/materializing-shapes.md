---
sidebar_position: 3
title: Vormen genereren
description: Wat gegenereerde vormen zijn, hoe hun parameters steken worden en waarom genereren het huidige patroon vervangt.
---

# Vormen genereren

Elke steek van een bal met de hand plaatsen gaat traag. **Genereren** doet het voor je: je beschrijft een vorm met een paar getallen, en AmiLab bouwt een compleet, bewerkbaar stekenpatroon dat die vorm oplevert.

## Wat "genereren" betekent

Een gegenereerde vorm is geen bijzonder object — het is een gewoon patroon. AmiLab berekent de steken en toeren die nodig zijn om de vorm bij je huidige proeflapje te maken, en zet ze in de editor alsof je ze zelf had gehaakt. Vanaf dat punt kun je het resultaat bewerken, herkleuren en hervormen als elk ander patroon.

## Van parameters naar steken

Je geeft een vorm een **maat**, en soms een tweede afmeting, en AmiLab doet de rest:

- Het leest je [proeflapje](./gauge-and-dimensions.md) om te weten hoeveel steken er over een bepaalde afstand passen.
- Het berekent het steekaantal voor elke toer zodat de toeren het gekozen silhouet volgen.
- Het genereert de steken, hun basisverbindingen en eventuele afwerkingen (bijvoorbeeld de samentrekkende draad boven in een bol).

Omdat het proeflapje het rekenwerk stuurt, levert dezelfde maatopgave bij verschillende proeflapjes verschillende steekaantallen op — het uiteindelijke haakwerk krijgt de maat die je vroeg, niet een vast aantal steken.

De beschikbare vormen en hun precieze parameters en grenzen staan in de [naslag vormen](../reference/shapes-and-parameters.md).

## Genereren vervangt het huidige patroon

Een vorm vult de hele editor, dus genereren **vervangt het patroon dat op dat moment open is** en wist de ongedaan-maken-geschiedenis. Heeft het patroon al steken, dan vraagt AmiLab eerst om bevestiging. Is het leeg, dan verschijnt de vorm meteen.

Daardoor is genereren een startpunt, geen invoeging: genereer eerst de basisvorm, bewerk en kleur die dan tot het haakwerk dat je wilt.

## Opgeslagen profielen

Naast de ingebouwde basisvormen (bollen, een cilinder, een platte cirkel) kun je genereren vanuit een **vormprofiel** — een silhouet dat je in de Vormprofielen-weergave hebt ontworpen. AmiLab draait dat silhouet tot een 3D-vorm op dezelfde manier als het een bol bouwt, zodat je eigen vormen herbruikbare sjablonen worden die je opnieuw kunt genereren.

## Zie ook

- [Vormen en parameters](../reference/shapes-and-parameters.md) — elke vorm met haar invoer en grenzen
- [Proeflapje en afmetingen](./gauge-and-dimensions.md) — hoe maatopgaven steekaantallen worden
- [Het kleurmodel](./the-color-model.md) — een net gegenereerde vorm herkleuren
