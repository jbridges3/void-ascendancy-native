# Screen Composition Examples

This document shows how the palette candidates, colony identity system, and convergence overlays should combine on actual screens.

The goal is to make the design language buildable.

These are composition briefs rather than pixel-perfect mockups.

## Composition Framework

Each screen composition should be understood as:

- structural shell
- primary workspace
- contextual side panel
- ambient system layer
- anomaly allowance

For every example, the key question is:

What should the player feel before they consciously interpret the content?

## Quarters

### Baseline Quarters

Intent:

- private
- calm
- owned
- not fully untouched by the world

Structure:

- left navigation visible but quiet
- central workspace dominated by current state and immediate options
- right contextual panel carrying subtle notices and personal systems
- wide margins and low density

Token sources:

- `space/quarters/*`
- `surface/stable/*`
- minimal colony overlay unless current colony context is foregrounded

Visual feeling:

- low ambient motion
- slightly warmer or softer neutral register than the rest of the app
- readable text blocks
- understated status presentation

Allowed anomaly:

- very light
- only as intrusion

This should be the most reliable-feeling space in the app.

### Quarters Under Void Pressure

Intent:

- safety being slowly compromised

Visible changes:

- subtle ghosting on notices
- slight drift in peripheral panel timing
- contaminated trace color appearing in non-primary surfaces
- occasional disagreement between ambient layer and official notice wording

Rule:

The main actions remain clear.
The feeling of invasion grows around them.

### Quarters Under Elpis Pressure

Intent:

- comfort becoming supervised clarity

Visible changes:

- tidier grouping
- colder panel emphasis
- more official summary language
- stronger evaluative framing of player state

Rule:

It should feel clean enough to be unsettling.

## Nova Drift

### Baseline Nova Drift

Intent:

- unstable opportunity space
- operational temptation
- partial truth

Structure:

- contract list or contract field in the main workspace
- contextual panel showing interpretive hints, loadout resonance, and current drift conditions
- higher use of layered surfaces than most other screens

Token sources:

- `space/drift/*`
- `surface/interpretive/*`
- selective `surface/contaminated/*`

Visual feeling:

- dark but not muddy
- contract cards read as intercepted or surfaced opportunities rather than menu buttons
- light signal movement
- subtle hierarchy shifts between contracts

Allowed anomaly:

- high

This is where glitch is most native to the experience.

### Tunderan + Void Dominant + Nova Drift

Intent:

- industrial systems speaking through stress and distortion

Composition:

- Drift structural shell
- Tunderan heavy neutrals
- Void accent and signal overlay
- burdened plus drifted motion behavior

Main workspace:

- contract surfaces should feel dense and weight-bearing
- edges not fully settled
- spectral trace colors appear in separators or signal readouts

Context panel:

- notices feel like they arrive from a system under strain
- certain hints appear more truthful than official labels

Anomaly behavior:

- ghosted contract emphasis
- layered confidence cues
- slight echo on selected states

Emotional result:

- dangerous opportunity under pressure

### Alteria + Elpis Dominant + Nova Drift

Intent:

- operational space made too precise

Composition:

- Drift shell
- Alteria pale administrative identity
- Elpis overlay discipline

Main workspace:

- contract list feels unnervingly ordered
- high clarity in grouping, but incomplete truth remains
- very clean typography and field alignment

Context panel:

- interpretive hints feel official and overconfident
- player may sense the presentation is controlling interpretation, not only aiding it

Anomaly behavior:

- low visual glitch
- stronger classification tone instead

Emotional result:

- seductive clarity that may hide coercion

## Dockside

### Baseline Dockside

Intent:

- civic reality
- infrastructure
- logistics and procedure

Structure:

- central workspace for current civic system such as bank, marketplace, or travel
- contextual panel for colony state, notices, and movement consequences
- cleaner surfaces than Drift

Token sources:

- `space/dockside/*`
- `surface/stable/*`
- colony baseline tokens

Visual feeling:

- grounded
- procedural
- materially believable

Allowed anomaly:

- low by default

This space proves the world has substance beyond signal and philosophy.

### Halcyon + Elpis Dominant + Dockside

Intent:

- elegant civic perfection becoming doctrinal

Composition:

- Dockside structure
- Halcyon airy neutrals
- Elpis classification overlay

Main workspace:

- pale clean surfaces
- near-frictionless transitions
- immaculate spacing
- very quiet but highly confident system labels

Context panel:

- notices feel calmly official
- colony state appears resolved and administratively complete

Anomaly behavior:

- very little glitch
- tension comes from over-resolution

Emotional result:

- beautiful order with faint pressure to comply

### Midway + Contested + Dockside

Intent:

- civic system under unresolved dual logic

Composition:

- Dockside structure
- Midway infrastructural baseline
- mixed overlay behavior without simple blending

Main workspace:

- logistics panel may remain stable
- colony-adjacent panel may show uncertainty or mismatch
- borders and labels may not fully agree in tone

Context panel:

- some notices feel official
- some feel leaked, partial, or inconsistent

Anomaly behavior:

- moderate
- contradiction more important than distortion

Emotional result:

- the colony is operational, but not narratively settled

## Workbench

### Baseline Workbench

Intent:

- tactile precision
- operational preparation
- ritualized control

Structure:

- rig-centered main panel
- slot topology clearly visible
- secondary surfaces for available augments, requirements, and installed state

Token sources:

- `space/workbench/*`
- `surface/stable/*`
- minimal contextual contamination

Visual feeling:

- highly legible
- spare but tactile
- a place where the player can think clearly

Allowed anomaly:

- minimal

This screen should earn trust.

### Workbench Under Pressure

If ideological pressure is present here, it should appear in restrained ways:

- slight accent shifts
- changed edge confidence
- mild contextual wording differences

It should not:

- distort slot readability
- compromise installation clarity
- interfere with confirmation states

Rule:

Preparation spaces must remain fair.

## Evaluation

### Baseline Evaluation

Intent:

- sparse
- exposing
- quietly judgmental

Structure:

- centered primary panel
- minimal distractions
- contextual side panel limited to what deepens the sense of assessment

Token sources:

- `space/evaluation/*`
- `surface/evaluative/*`
- low-density colony influence unless specifically foregrounded

Visual feeling:

- clean
- cool
- serious

Allowed anomaly:

- medium, but controlled

This screen should feel like a system is taking the measure of the player.

### Elpis Heavy Evaluation

Intent:

- classification as pressure

Composition:

- pale controlled accents
- sharper dividers
- high text stability
- strong field hierarchy

Main workspace:

- skill and specialty refinement options feel clinically arranged
- language becomes more assured and official

Context panel:

- player state is summarized with unnerving confidence

Anomaly behavior:

- little obvious glitch
- tension comes from administrative certainty

Emotional result:

- judged by a system that thinks it understands you

### Void Interference In Evaluation

Intent:

- certainty beginning to fracture

Composition:

- evaluative shell remains structured
- Void contamination enters through trace signals, timing, and layered text behavior

Main workspace:

- one phrase may arrive twice with different posture
- a metric may feel too alive
- some interpretive overlays imply the system's confidence is compromised

Rule:

The screen should still work.
The unease comes from contradiction, not unreadability.

## Profile

### Baseline Profile

Intent:

- system reading of a person
- structural clarity without flattening mystery

Structure:

- grouped sections for specialties, skills, techniques, alignment, progression
- contextual panel used for derived readings rather than raw repetition

Token sources:

- neutral app base
- current colony influence lightly applied
- stable and interpretive surface mix

Visual feeling:

- informative
- serious
- slightly analytical

Allowed anomaly:

- low to medium

This screen is a place for subtle ideological hints rather than loud visual effects.

## Comparative Example Set

These examples are useful for validating whether the system is working.

### Same Space, Different Colony

Compare:

- Dockside in Halcyon
- Dockside in Tunderan

The player should feel:

- one is airy and refined
- one is heavy and pressure-bearing

before any convergence overlay is added.

### Same Colony, Different Convergence

Compare:

- Halcyon under strong Elpis
- Halcyon under strong Void

The player should feel:

- both are Halcyon
- one is over-resolved and doctrinal
- one is spectral and destabilized

This is the core proof that convergence modifies identity rather than replacing it.

### Same Colony And Convergence, Different Space

Compare:

- Halcyon + Elpis in Dockside
- Halcyon + Elpis in Evaluation

The player should feel:

- same governing pressure
- different structural function

This proves space identity remains distinct.

## Build Priority

When prototyping screens, implement in this order:

1. Quarters baseline
2. Nova Drift baseline
3. Dockside baseline
4. one Elpis-dominant colony treatment
5. one Void-dominant colony treatment
6. Evaluation pressure variant
7. Workbench trust-safe variant

This sequence proves the visual system in layers rather than all at once.

## Next Step

The next useful artifact is a build-facing document:

- `vertical-slice-spec.md`

That doc should translate these compositions into the first concrete application flow and implementation plan.
