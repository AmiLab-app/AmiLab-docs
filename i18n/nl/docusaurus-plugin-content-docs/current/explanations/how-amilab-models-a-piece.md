---
sidebar_position: 1
title: Hoe AmiLab een haakwerk modelleert
description: De stekengraaf achter elk patroon — hoe steken naar elkaar verwijzen en waarom toeren worden afgeleid, niet opgeslagen.
---

# Hoe AmiLab een haakwerk modelleert

Eén idee laat al het andere in AmiLab op zijn plaats vallen: **een patroon is een graaf van steken, en de toeren die je ziet worden uit die graaf afgeleid.** Zodra je weet hoe steken verbonden zijn, gedragen meerderen, minderen en bewerken zich voorspelbaar.

## Een steek en zijn basissteken

Elke steek legt drie dingen vast die hier van belang zijn:

- zijn **soort** — `v`, `hst`, `st`, `dst` of `l` (zie de [naslag steeksoorten](../reference/stitch-types.md))
- zijn **basis** — de steek of steken in de toer eronder waarin hij wordt gehaakt
- een optionele **kleur**

De basis is de sleutel. Een steek wijst "omlaag" naar de steek waarop hij rust:

- **Geen basis** — de steek begint het haakwerk. Dit zijn je opzetsteken: het midden van een magische ring, of een opzetketting.
- **Eén basis** — een gewone steek die in één steek eronder wordt gehaakt.
- **Twee of meer basissteken** — een **mindering**: één steek sluit over meerdere steken eronder en haalt het aantal omlaag.

Een **meerdering** is het spiegelbeeld, en AmiLab heeft er geen aparte registratie voor nodig. Wanneer twee steken in een toer dezelfde basis delen — twee steken in één lus — is dat een meerdering. AmiLab herkent het aan de vorm van de graaf.

## Toeren worden afgeleid, niet opgeslagen

AmiLab slaat nooit "toer 3" op. In plaats daarvan berekent het de toeren uit de basisverbindingen telkens als het patroon verandert:

- Opzetsteken (zonder basis) vormen de eerste toer.
- Een steek hoort bij de toer net boven zijn diepste basis.

Daarom blijft het stekenraster altijd consistent met je bewerkingen. Verander een basis, splits een steek of verwijder er een, en de toeren worden herberekend uit de verbindingen in plaats van uit een opgeslagen indeling die uit de pas kan raken.

## Waarom dit voor jou uitmaakt

- **Meerderen en minderen volgen uit verbindingen.** Je geeft een haakwerk vorm door te veranderen hoeveel steken een basis delen, niet door een aparte "meerder"-schakelaar.
- **Bewerkingen blijven samenhangend.** Omdat toeren herberekend worden, weerspiegelen de aantal-labels, het geschreven patroon en de 3D-preview allemaal dezelfde onderliggende graaf.
- **De 3D-preview is uit dezelfde graaf opgebouwd.** De basisverbindingen vertellen AmiLab welke steken op welke rusten, en juist daarmee plaatst het elke steek in de ruimte.

## Zie ook

- [Proeflapje en afmetingen](./gauge-and-dimensions.md) — hoe steekaantallen echte maten worden
- [Steeksoorten](../reference/stitch-types.md) — de bouwstenen waarnaar hierboven verwezen wordt
- [Begrippenlijst](../reference/glossary.md) — korte definities van basissteek, toer, meerderen en minderen
