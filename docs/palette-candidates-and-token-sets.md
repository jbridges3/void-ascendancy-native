# Palette Candidates And Token Sets

This document translates the colony and convergence design language into concrete palette directions and token families that can guide implementation and visual prototyping.

These are candidate systems, not final locked art assets.

The goal is to make the visual language specific enough to build against without flattening the world into rigid theme packs too early.

## Core Rule

Palettes should be compositional.

The app should not use one monolithic theme per screen. Instead, each major surface should be assembled from:

- space tokens
- colony tokens
- convergence overlay tokens
- state tokens

This allows the interface to remain stable while still expressing ideological drift, colony identity, and player resonance.

## Token Structure

Recommended token families:

- `space/<space>/bg/*`
- `space/<space>/surface/*`
- `space/<space>/text/*`
- `colony/<colony>/neutral/*`
- `colony/<colony>/accent/*`
- `colony/<colony>/signal/*`
- `overlay/elpis/*`
- `overlay/void/*`
- `surface/stable/*`
- `surface/interpretive/*`
- `surface/contaminated/*`
- `surface/evaluative/*`
- `text/primary`
- `text/secondary`
- `text/classified`
- `text/anomalous`
- `border/stable`
- `border/soft`
- `border/drifted`
- `motion/<profile>`

## Global Base Tokens

These create a stable app foundation before colony and convergence are added.

Suggested global base:

- `bg/app/base`: `#0D1015`
- `bg/app/elevated`: `#141922`
- `surface/base/1`: `#171D27`
- `surface/base/2`: `#1D2430`
- `surface/base/3`: `#232B39`
- `text/primary`: `#E7EDF7`
- `text/secondary`: `#9CA7B8`
- `text/muted`: `#6F7B8C`
- `border/stable`: `#2B3545`
- `border/soft`: `#232B39`
- `signal/warning`: `#D8A44E`
- `signal/error`: `#B75A5A`

These should keep the app grounded and readable even when more expressive overlays are applied.

## Space Baselines

These are not full themes. They are structural accents that influence how spaces feel.

### Quarters

Desired feel:

- private
- calm
- owned
- slightly warm relative to the rest of the app

Suggested tokens:

- `space/quarters/bg/base`: `#11151C`
- `space/quarters/surface/base`: `#1A202A`
- `space/quarters/accent/soft`: `#71839A`
- `space/quarters/glow/trace`: `#3B4658`

### Nova Drift

Desired feel:

- unstable
- layered
- informationally dangerous

Suggested tokens:

- `space/drift/bg/base`: `#0C0F16`
- `space/drift/surface/base`: `#171B25`
- `space/drift/accent/soft`: `#6A7390`
- `space/drift/glow/trace`: `#34405A`

### Dockside

Desired feel:

- civic
- infrastructural
- procedural

Suggested tokens:

- `space/dockside/bg/base`: `#10151B`
- `space/dockside/surface/base`: `#1A212A`
- `space/dockside/accent/soft`: `#7C8797`
- `space/dockside/glow/trace`: `#36404D`

### Workbench

Desired feel:

- precise
- tactile
- highly legible

Suggested tokens:

- `space/workbench/bg/base`: `#0F1319`
- `space/workbench/surface/base`: `#1A2028`
- `space/workbench/accent/soft`: `#93A0B0`
- `space/workbench/glow/trace`: `#2C3745`

### Evaluation

Desired feel:

- sparse
- exposing
- controlled

Suggested tokens:

- `space/evaluation/bg/base`: `#0E1117`
- `space/evaluation/surface/base`: `#171D25`
- `space/evaluation/accent/soft`: `#98A6B7`
- `space/evaluation/glow/trace`: `#253040`

## Colony Palette Candidates

Each colony has:

- neutrals
- primary accent
- secondary accent
- trace signal

These should remain visible even when convergence overlays are active.

## Tunderan

Baseline character:

- heavy
- shadowed
- industrial
- pressure-bearing

Candidate palette:

- `colony/tunderan/neutral/1`: `#17181D`
- `colony/tunderan/neutral/2`: `#23262D`
- `colony/tunderan/neutral/3`: `#343944`
- `colony/tunderan/accent/primary`: `#6D7A86`
- `colony/tunderan/accent/secondary`: `#4D5B68`
- `colony/tunderan/signal/trace`: `#8A7C66`

Use:

- dark mass
- dense surfaces
- low glow
- restrained signal highlights

## Alteria

Baseline character:

- pale
- administrative
- highly resolved
- official

Candidate palette:

- `colony/alteria/neutral/1`: `#CED5DE`
- `colony/alteria/neutral/2`: `#AEB8C4`
- `colony/alteria/neutral/3`: `#7F8E9F`
- `colony/alteria/accent/primary`: `#7DA0B8`
- `colony/alteria/accent/secondary`: `#95B9C9`
- `colony/alteria/signal/trace`: `#D7E0E8`

Use:

- high legibility
- pale structural fields
- cold civic polish

## Midway

Baseline character:

- transitional
- infrastructural
- unresolved
- procedural

Candidate palette:

- `colony/midway/neutral/1`: `#56606D`
- `colony/midway/neutral/2`: `#727C89`
- `colony/midway/neutral/3`: `#8C97A3`
- `colony/midway/accent/primary`: `#B08D63`
- `colony/midway/accent/secondary`: `#7D95A6`
- `colony/midway/signal/trace`: `#D0B48C`

Use:

- civic utility
- visible system joins
- moderate warmth mixed with cooler infrastructure

## Nereth

Baseline character:

- restrained
- observant
- governed
- low-gloss

Candidate palette:

- `colony/nereth/neutral/1`: `#39414B`
- `colony/nereth/neutral/2`: `#55606D`
- `colony/nereth/neutral/3`: `#718091`
- `colony/nereth/accent/primary`: `#7991A8`
- `colony/nereth/accent/secondary`: `#5E7386`
- `colony/nereth/signal/trace`: `#B3C0CC`

Use:

- cool restraint
- modest polish
- systems that feel quiet but monitored

## Halcyon

Baseline character:

- airy
- polished
- distant
- refined

Candidate palette:

- `colony/halcyon/neutral/1`: `#E1E7EE`
- `colony/halcyon/neutral/2`: `#C5D1DD`
- `colony/halcyon/neutral/3`: `#9FB0C2`
- `colony/halcyon/accent/primary`: `#9CC5D8`
- `colony/halcyon/accent/secondary`: `#BEDBE5`
- `colony/halcyon/signal/trace`: `#F0F6F8`

Use:

- breathable layouts
- atmospheric negative space
- refined cool luminosity

## Convergence Overlay Tokens

These tokens should not replace colony color. They should alter it through overlay, border behavior, glow, and signal emphasis.

## Elpis Overlay

Desired effect:

- resolved
- disciplined
- exact
- cold confidence

Candidate tokens:

- `overlay/elpis/accent/primary`: `#B8D7E8`
- `overlay/elpis/accent/secondary`: `#8EB3CB`
- `overlay/elpis/signal/trace`: `#E4F2F8`
- `overlay/elpis/border`: `#A9C1D3`
- `overlay/elpis/glow`: `rgba(184, 215, 232, 0.16)`
- `overlay/elpis/text/classified`: `#EAF4F8`

Behavior:

- increase clarity
- brighten cold edges
- sharpen divisions
- reduce color turbulence

## Void Overlay

Desired effect:

- spectral
- bruised
- contaminated
- interpretive

Candidate tokens:

- `overlay/void/accent/primary`: `#7B89C4`
- `overlay/void/accent/secondary`: `#A4688B`
- `overlay/void/signal/trace`: `#C4A8D9`
- `overlay/void/border`: `#5F6791`
- `overlay/void/glow`: `rgba(123, 137, 196, 0.18)`
- `overlay/void/text/anomalous`: `#E1D8F1`

Behavior:

- introduce soft contradiction
- add layered signal color
- permit bleed and doubling
- preserve seduction as well as threat

## Surface State Tokens

These provide consistent component behavior across spaces and colonies.

### Stable Surface

- `surface/stable/bg`: `rgba(255, 255, 255, 0.03)`
- `surface/stable/border`: `rgba(255, 255, 255, 0.08)`
- `surface/stable/highlight`: `rgba(255, 255, 255, 0.04)`

### Interpretive Surface

- `surface/interpretive/bg`: `rgba(122, 152, 181, 0.07)`
- `surface/interpretive/border`: `rgba(142, 179, 203, 0.18)`
- `surface/interpretive/highlight`: `rgba(184, 215, 232, 0.08)`

### Contaminated Surface

- `surface/contaminated/bg`: `rgba(123, 137, 196, 0.08)`
- `surface/contaminated/border`: `rgba(164, 104, 139, 0.16)`
- `surface/contaminated/highlight`: `rgba(196, 168, 217, 0.10)`

### Evaluative Surface

- `surface/evaluative/bg`: `rgba(210, 222, 232, 0.05)`
- `surface/evaluative/border`: `rgba(184, 206, 221, 0.15)`
- `surface/evaluative/highlight`: `rgba(234, 244, 248, 0.07)`

## Motion Token Directions

These are conceptual timing and behavior families rather than exact animation numbers.

### Still

Use for:

- Quarters
- calm administrative contexts
- trusted surfaces

Qualities:

- low movement
- deliberate transitions
- stable resting state

### Gliding

Use for:

- Alteria
- Halcyon
- Elpis-heavy surfaces

Qualities:

- smooth
- precise
- minimal lag

### Procedural

Use for:

- Dockside
- Midway
- logistics and banking systems

Qualities:

- functional
- moderate tempo
- strong consistency

### Burdened

Use for:

- Tunderan
- heavy system spaces

Qualities:

- slightly slower
- weighted
- pressure-bearing

### Drifted

Use for:

- Nova Drift
- Void-heavy overlays

Qualities:

- stagger
- echo
- layered resolution

## Example Compositions

These examples show how the token sets should combine.

## Halcyon + Elpis Dominant + Dockside

Result should feel:

- pale
- refined
- over-resolved
- calmly coercive

Composition:

- Dockside structural tokens
- Halcyon colony neutrals
- Elpis borders and classified text
- stable and evaluative surfaces

## Halcyon + Void Dominant + Dockside

Result should feel:

- beautiful
- airy
- increasingly spectral
- subtly dangerous

Composition:

- Dockside structural tokens
- Halcyon base luminosity
- Void overlay accents and glow
- contaminated surfaces on peripheral panels

## Tunderan + Elpis Dominant + Evaluation

Result should feel:

- hard
- compressed
- regulated under strain

Composition:

- Evaluation structural tokens
- Tunderan heavy neutrals
- Elpis sharpened borders
- reduced motion variance

## Tunderan + Void Dominant + Nova Drift

Result should feel:

- dense
- haunted
- industrial systems beginning to speak in stress fractures

Composition:

- Drift structural tokens
- Tunderan low-light neutrals
- Void anomaly text and border treatment
- drifted motion profile

## Rule For 100 Percent States

One hundred percent convergence means multiple token families align in the same direction at once.

At `100% Elpis`, the surface should show:

- sharper borders
- cleaner text hierarchy
- colder signal traces
- lower anomaly density
- stronger classification tone

At `100% Void`, the surface should show:

- layered accent behavior
- softened or doubled borders
- contaminated or spectral traces
- higher anomaly density
- more interpretive text posture

The colony should remain recognizable in both cases.

## Implementation Notes

These tokens should likely be represented in code as semantic colors rather than hard-coded component colors.

Recommended implementation strategy:

- define global semantic tokens first
- define colony token packs
- define Elpis and Void overlay token packs
- compute resolved tokens for each screen from state inputs

State inputs:

- `space`
- `colony`
- `convergence_direction`
- `convergence_intensity`
- `player_alignment`
- `resonance_strength`

## Next Step

The next doc should show these tokens in use on actual screen compositions.

Recommended follow-up:

- `screen-composition-examples.md`

That document should walk through Quarters, Nova Drift, Dockside, Workbench, and Evaluation with concrete visual combinations.
