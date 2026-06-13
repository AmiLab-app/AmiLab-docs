---
sidebar_position: 2
title: Proeflapje en afmetingen
description: Hoe AmiLab steek- en toeraantallen omzet in echte maten, en waarom een ander proeflapje het hele haakwerk opnieuw schaalt.
---

# Proeflapje en afmetingen

Een haakpatroon is een telling van steken en toeren. Een afgewerkt knuffeltje heeft een maat in centimeters. **Het proeflapje is de brug tussen die twee**, en zo weet AmiLab hoe groot je haakwerk echt is.

## Wat het proeflapje beschrijft

Het proeflapje (ook wel stekenverhouding genoemd) bestaat uit twee getallen die de dichtheid van je werk beschrijven:

- **Steken per 10 cm** — hoeveel steken er over 10 cm naast elkaar passen.
- **Toeren per 10 cm** — hoeveel toeren er over 10 cm hoogte passen.

Die komen voort uit je garen, haaknaald en haakspanning. De betrouwbaarste bron is een proeflapje dat je zelf haakt en opmeet; je garenlabel is een goede eerste schatting. De standaard van AmiLab is **18 steken en 20 toeren per 10 cm**, en je kunt waarden van **1–60** steken en **1–80** toeren instellen.

## Hoe afmetingen worden berekend

AmiLab combineert je proeflapje met de stekengraaf om elke steek in de 3D-ruimte te plaatsen, en meet daarna het resultaat. De **breedte, hoogte en diepte** onder de 3D-preview zijn de echte maat van het haakwerk *bij jouw huidige proeflapje*.

Omdat hetzelfde steekaantal bij een ander proeflapje een andere maat oplevert, zijn de maten alleen zinvol naast het proeflapje dat ze voortbracht. Een bol van 6 toeren is klein in dun katoen en groot in dikke wol — zelfde patroon, ander proeflapje, ander knuffeltje.

## Waarom een ander proeflapje alles herschaalt

Het proeflapje is geen eigenschap per steek; het geldt voor het hele haakwerk. Verander een van beide getallen en AmiLab herberekent de indeling, zodat het hele haakwerk in één keer groeit of krimpt. De steek*aantallen* veranderen niet — het patroon blijft hetzelfde — maar de fysieke maat wel.

Dit raakt ook [gegenereerde vormen](./materializing-shapes.md): wanneer AmiLab een bol of cilinder genereert op een maat die je opgeeft, gebruikt het je proeflapje om te bepalen hoeveel steken die maat vraagt.

## Waar het proeflapje leeft

- **In een project** — het proeflapje hoort bij het project, zodat elk patroon erin hetzelfde proeflapje deelt. Bewerk het via de projectinstellingen (de chip **Proeflapje** boven het stekenraster opent ze).
- **Patronen zonder project** — het proeflapje hoort bij dat ene patroon, en de chip **Proeflapje** opent een eenvoudig venster om het te wijzigen.

## Zie ook

- [Hoe AmiLab een haakwerk modelleert](./how-amilab-models-a-piece.md) — de stekengraaf die het proeflapje meet
- [Vormen genereren](./materializing-shapes.md) — hoe het proeflapje gegenereerde vormen bemeet
- [Aan de slag](../tutorials/getting-started.md) — stel je proeflapje in context in
