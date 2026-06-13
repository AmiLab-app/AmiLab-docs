---
sidebar_position: 4
title: Vormen en parameters
description: De vormen die AmiLab kan genereren, de bijbehorende parameters en de toegestane invoerwaarden.
---

# Vormen en parameters

In het venster **Vorm invoegen** kies je een vorm en de bijbehorende afmetingen. Lees [Vormen genereren](../explanations/materializing-shapes.md) voor uitleg over hoe AmiLab deze invoer omzet in steken.

## Vormen

| Vorm | Maat | Tweede afmeting | Toelichting |
|---|---|---|---|
| **Gladde bol** | Straal (cm) | Hoogte (cm), optioneel | Laat de hoogte leeg om deze automatisch uit de straal te laten berekenen. |
| **Zeshoekige bol** | Straal (cm) | Hoogte (cm), optioneel | Een zeshoekige doorsnede met versprongen steken zorgt voor een gelijkmatige bol. Laat de hoogte leeg om deze automatisch te berekenen. |
| **Versprongen bol** | Straal (cm) | Hoogte (cm), optioneel | Een bol met versprongen steekplaatsing. Laat de hoogte leeg om deze automatisch te berekenen. |
| **Cilinder** | Diameter (cm) | Lengte (cm) | Een rechte cilindervorm met de opgegeven lengte. |
| **Platte cirkel** | Straal (cm) | — | Een platte schijf zonder tweede afmeting. |
| **Opgeslagen profiel** | Max. straal (cm) | Hoogte (cm), optioneel | Genereert een van je opgeslagen [vormprofielen](./glossary.md). AmiLab vult eerst de afmetingen van het profiel in. |

## Invoerbereiken

| Parameter | Bereik | Stapgrootte |
|---|---|---|
| Maat (straal / diameter) | 1–30 cm | 0,5 |
| Hoogte / lengte | 0,5–200 cm | 0,5 |

Hoeveel steken AmiLab voor deze afmetingen genereert, hangt af van je [proeflapje](../explanations/gauge-and-dimensions.md). Het venster gebruikt het huidige proeflapje om centimeters om te rekenen naar steken en toeren.

## Zie ook

- [Vormen genereren](../explanations/materializing-shapes.md) — hoe parameters worden omgezet in steken
- [Proeflapje en afmetingen](../explanations/gauge-and-dimensions.md) — waarom het proeflapje het resultaat beïnvloedt
- [Aan de slag](../tutorials/getting-started.md) — stap voor stap een zeshoekige bol genereren
