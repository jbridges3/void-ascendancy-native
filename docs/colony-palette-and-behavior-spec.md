# Colony Palette And Behavior Spec

This document defines how colony identity should be represented visually in `Void Ascendancy Native`, and how that identity should be modified by convergence pressure without losing the sense of place.

The goal is to make the player feel the ideological and environmental character of a colony before they consciously parse the numbers.

## Core Rule

Every colony surface is the combination of four layers:

- space identity
- colony identity
- convergence overlay
- player resonance

These layers should not collapse into one another.

This means:

- space tells the player where they are operating
- colony tells the player what place this is
- convergence tells the player what pressure is dominant
- player resonance tells the player how directly the system is speaking to them

## Design Intent

Colony color should not be used as simple branding or a single fixed hue.

Instead, every colony should have:

- a material baseline
- a trust posture
- a visual density
- a motion posture
- a surface character

Then Elpis and Void convergence act on that baseline in different ways.

## Colony Definition Model

Each colony should eventually be defined in data with a structure like:

```text
colony_id
- display_name
- base_neutral
- base_primary
- base_secondary
- accent_trace
- material_character
- trust_signature
- density_profile
- motion_profile
- default_surface_behavior
```

These values do not need to be final hex codes yet. At this stage, they can be conceptual and art-directed first.

## Shared Colony Variables

### Material Character

What the colony feels made of.

Examples:

- glass
- mineral
- steel
- dust
- concrete
- ceramic
- polymer

### Trust Signature

How the colony's systems initially present themselves.

Examples:

- bureaucratic
- mercantile
- militarized
- fractured
- polished
- neglected

### Density Profile

How visually dense the surfaces should feel.

Examples:

- sparse
- breathable
- compressed
- crowded
- heavy

### Motion Profile

How default surfaces move before ideological pressure is added.

Examples:

- still
- gliding
- procedural
- latent
- burdened

### Default Surface Behavior

How the colony feels before convergence overlay modifies it.

Examples:

- clean panes
- layered infrastructure
- hard dividers
- atmospheric bleed
- civic modularity

## Convergence Overlay Logic

Convergence should transform the baseline, not replace it.

### Elpis Overlay Behavior

Elpis pressure should increase:

- alignment to grid
- edge sharpness
- information certainty
- label confidence
- hierarchy clarity
- motion precision

Elpis pressure should decrease:

- ambiguity
- noise floor
- surface drift
- visual hesitation

Color effect:

- cooler
- cleaner
- more resolved
- more disciplined

### Void Overlay Behavior

Void pressure should increase:

- signal bleed
- layered readings
- edge instability
- timing drift
- surface permeability
- interpretive contradiction

Void pressure should decrease:

- formal certainty
- hard boundary trust
- singular reading of a surface

Color effect:

- bruised
- spectral
- contaminated
- unstable but often seductive

## Convergence Intensity

Suggested bands:

- trace
- low
- active
- dominant
- totalizing

At higher bands, the colony should still feel like itself.

The transformation is not:

`Halcyon becomes "the Void palette"`

The transformation is:

`Halcyon begins expressing Void pressure through Halcyon's own materials and visual language`

That distinction is essential.

## Colony Concepts

These are initial art-direction concepts, not final locked palette values.

## Tunderan

### Baseline Identity

Tunderan should feel heavy, shadowed, industrial, and pressure-bearing.

Material character:

- dark steel
- weathered composite
- dense infrastructure

Trust signature:

- hardened
- functional
- low-sentiment

Density profile:

- heavy
- compact

Motion profile:

- burdened
- slow-gliding

Default surface behavior:

- thick separations
- structural emphasis
- systems that feel built to endure strain

Baseline palette direction:

- charcoal neutrals
- muted iron tones
- low, deep signal accents

### High Elpis Tunderan

Tunderan under strong Elpis convergence should feel:

- regulated
- compressed into order
- industrial but administratively disciplined

Effects:

- harder line resolution
- cleaner compartmentalization
- heavier systems made overly exact

### High Void Tunderan

Tunderan under strong Void convergence should feel:

- wakeful
- pressure-haunted
- mechanically burdened but interpretively alive

Effects:

- signal bleed through dark mass
- subtle ghosting in structural panels
- anomalies that feel like stress-lines becoming language

## Alteria

### Baseline Identity

Alteria should feel pale, administrative, highly resolved, and systemically composed.

Material character:

- stone-glass
- brushed ceramic
- light alloy

Trust signature:

- bureaucratic
- orderly
- official

Density profile:

- sparse
- balanced

Motion profile:

- gliding
- precise

Default surface behavior:

- clean modules
- disciplined spacing
- high legibility

Baseline palette direction:

- pale mineral neutrals
- cool civic highlights
- restrained luminous accents

### High Elpis Alteria

Alteria under strong Elpis convergence should feel:

- immaculate
- highly persuasive
- almost too complete

Effects:

- nearly frictionless transitions
- labels that feel fully settled
- visual over-resolution that becomes unsettling

### High Void Alteria

Alteria under strong Void convergence should feel:

- elegant systems under interpretive infection
- beauty made unreliable

Effects:

- pristine surfaces carrying faint contradiction
- ghosting on what should be the cleanest screens
- official language destabilized at the edges

## Midway

### Baseline Identity

Midway should feel transitional, infrastructural, utilitarian, and politically unresolved.

Material character:

- transit steel
- civic concrete
- patched systems

Trust signature:

- provisional
- procedural
- uneven

Density profile:

- medium
- segmented

Motion profile:

- procedural
- interrupted

Default surface behavior:

- practical panel groupings
- visible joins between systems
- not ugly, but not fully unified

Baseline palette direction:

- muted infrastructural neutrals
- practical civic accents
- faint mixed-temperature signaling

### High Elpis Midway

Midway under strong Elpis convergence should feel:

- managed into compliance
- still infrastructural, but given imposed order

Effects:

- cleaner hierarchy over mismatched foundations
- visible standardization pressure

### High Void Midway

Midway under strong Void convergence should feel:

- contested systems slipping sideways
- transit logic becoming signal logic

Effects:

- one module stable, one module unstable
- layered contradiction
- strong sense of systemic disagreement

## Nereth

### Baseline Identity

Nereth should feel somewhat restrained, somewhat unresolved, and quietly governed.

Material character:

- alloy
- treated concrete
- low-gloss civic surfaces

Trust signature:

- managed
- conditional
- observant

Density profile:

- medium-low

Motion profile:

- controlled
- cautious

Default surface behavior:

- modest precision
- no overt flourish
- surfaces that feel watched rather than welcoming

Baseline palette direction:

- cool gray base
- reserved civic accenting
- slightly dimmed signal traces

### High Elpis Nereth

Should feel:

- compliant
- efficient
- quietly claustrophobic

### High Void Nereth

Should feel:

- subdued surfaces beginning to leak hidden hostility or suppressed contradiction

## Halcyon

### Baseline Identity

Halcyon should feel airy, polished, refined, and slightly distant.

Material character:

- light composite
- polished glass
- atmospheric surfaces

Trust signature:

- polished
- institutional
- gently aloof

Density profile:

- breathable
- open

Motion profile:

- smooth
- light

Default surface behavior:

- wide spacing
- elegant panel proportions
- subtle atmospheric layering

Baseline palette direction:

- pale luminous neutrals
- soft atmospheric accenting
- cool-clean surface light

### High Elpis Halcyon

Halcyon under strong Elpis convergence should feel:

- serene
- perfected
- almost spiritually administrative

Effects:

- immaculate panel calm
- quiet over-classification
- visual confidence that starts to feel doctrinal

### High Void Halcyon

Halcyon under strong Void convergence should feel:

- beautiful in a dangerous way
- airy surfaces becoming spectral

Effects:

- luminous ghosting
- signal echoes in negative space
- refined calm invaded by intelligent instability

## Colony Hints Throughout The UI

The UI should hint at ideological tilt continuously, but mostly below the level of explicit warning.

These hints should appear in:

- accent selection
- neutral temperature
- panel edge behavior
- hierarchy rigidity
- motion quality
- text confidence
- anomaly density

This allows the player to feel:

- whether a colony is tilting toward Elpis or Void
- whether a surface is trustworthy
- whether the current system is stable, pressured, or contradictory

before they read explicit metrics.

## What 100 Percent Should Mean

One hundred percent convergence should not mean a full recolor of the entire app.

It should mean:

- the dominant ideological pressure has become worldview-defining on colony-facing surfaces
- multiple UI systems align to that pressure at once
- motion, wording, panel behavior, and trust signature all shift in the same direction

So:

- `100% Elpis` means overly resolved, overly classified, overly calm
- `100% Void` means layered, permeable, interpretive, and unstable

The player should not just see the difference. They should feel it in how the interface behaves.

## Implementation Guidance

Eventually this system should map to design tokens and UI states.

Recommended token families:

- `colony/<id>/neutral/*`
- `colony/<id>/accent/*`
- `colony/<id>/surface/*`
- `overlay/elpis/*`
- `overlay/void/*`
- `motion/<profile>`
- `surface/<state>`
- `text/<state>`

Recommended derived state inputs:

- `space_theme`
- `colony_id`
- `colony_convergence_direction`
- `colony_convergence_intensity`
- `player_alignment_vector`
- `player_resonance`

## Next Step

The next design artifact should turn these concepts into:

- actual palette candidates
- a convergence behavior matrix
- screen examples showing the same colony under different pressures

That will let the visual system become directly implementable.
