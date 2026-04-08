# UI Systems Spec

This document defines the shell of the native app, the logic of its major screens, and the systemic UI behavior that should govern colony identity, convergence pressure, player resonance, and glitch boundaries.

The app should allow the player to feel world-state before they fully understand it.

## App Shell

The app should use a native macOS multi-pane structure.

Recommended shell:

- left navigation rail for major destinations
- central workspace for the active screen
- right contextual panel for state, interpretation, loadout, notices, and environmental reads
- top header band for current location, colony context, cycle, and system posture
- optional transient layer for alerts, anomaly flashes, contract results, and incoming notices

The shell should remain recognizable across the app. What changes is not the structure but its behavior, tone, and trust signature.

## Primary Destinations

- Quarters
- Nova Drift
- Dockside
- Workbench
- Evaluation
- Profile

Secondary destinations can appear contextually:

- Bank
- Marketplace
- Jump Ship
- Locker
- Safe Deposit
- Contract Detail
- Contract Outcome
- Travel Summary

## Persistent Context Panel

The right contextual panel helps the app feel alive without overwhelming the main workspace.

It may contain:

- current colony
- cycle and operational pressure
- active loadout summary
- convergence read
- alignment resonance hints
- outstanding deliveries
- recent notices
- notoriety or classification context

This panel may become:

- clean and administrative
- interpretive and uncertain
- subtly invasive
- partially contaminated

depending on the state of the world and the current surface.

## Screen Map

### Quarters

Purpose:

- home base
- rest
- orientation
- incoming notices
- reflection on current state

Behavior:

- most stable surface in the app
- strongest sense of ownership and privacy
- convergence or ideological intrusion should feel meaningful because this space is usually calm

### Nova Drift

Purpose:

- covert opportunity space
- contract discovery
- unstable informational environment

Behavior:

- most expressive and unstable space
- strongest allowance for glitch and signal distortion
- contract surfaces should imply risk and promise through presentation, not direct probability disclosure

### Dockside

Purpose:

- civic and infrastructural operations
- market, bank, logistics, travel

Behavior:

- materially grounded
- less unstable than Drift by default
- strong place to communicate colony identity
- anomalies here should feel more invasive because the user expects reliability

### Workbench

Purpose:

- rig and augment assembly
- tactile operational preparation

Behavior:

- elegant and precise
- minimal glitch
- spatial, not list-like
- should feel ritualized and intentional

### Evaluation

Purpose:

- judgment
- refinement
- Elpis-facing development pressure

Behavior:

- sparse
- exposing
- highly non-neutral
- if Elpis pressure is high, the screen becomes unnervingly precise
- if Void pressure leaks in, certainty may begin to contradict itself

### Profile

Purpose:

- operator-state reading
- skills, specialties, techniques, alignment, notoriety, major modifiers

Behavior:

- less character-sheet, more system reading of a person
- should reveal structure without flattening mystery

## Colony Color System

Colony color should not function as simple branding.

Each colony should have a visual identity that expresses its civic-material baseline before convergence modifies it.

Every colony definition should include:

- `base_neutral`
- `base_primary`
- `base_secondary`
- `material_character`
- `surface_behavior`
- `trust_signature`

Conceptually, colony identity communicates:

- civic tone
- material atmosphere
- environmental density
- expected institutional trust posture

Examples:

- Alteria
  - pale, administrative, highly resolved
- Tunderan
  - heavy, dark, pressure-bearing
- Midway
  - utilitarian, split, transitional
- Halcyon
  - airy, polished, lightly distant

Colony identity should remain visible regardless of ideological dominance.

## Convergence Overlay Rules

Convergence should behave as an overlay language rather than a direct palette swap.

Every major surface combines:

- space identity
- colony identity
- convergence direction
- convergence intensity

### Elpis Overlay

Effects:

- increased order
- sharper hierarchy
- reduced ambiguity
- clean edges
- stronger grid discipline
- labels presented with greater certainty

Emotional effect:

- persuasive clarity
- administrative calm
- quiet coercive confidence

### Void Overlay

Effects:

- interpretive bleed
- softened or doubled edges
- layered readings
- partial contradiction
- signal instability
- more permeable panel boundaries

Emotional effect:

- dangerous insight
- adaptive instability
- systems that may be more truthful than official channels

### Contested Behavior

Contested states should not read as simple mixture.

Instead, they should read as contradiction:

- different panes disagree
- labels and ambient cues diverge
- transitions resolve differently across surfaces
- official and unofficial readings coexist uncomfortably

## Convergence Intensity Bands

Suggested bands:

- `0-15%`: trace
- `16-35%`: low
- `36-60%`: active
- `61-85%`: dominant
- `86-100%`: totalizing

Interpretation:

- trace is subliminal
- low is noticeable in accents and motion
- active clearly changes posture
- dominant changes the felt character of the whole surface
- totalizing becomes worldview-defining

## Alignment-Responsive UI

The world has its own state. The player has their own resonance with it.

The app should distinguish:

- colony convergence
- player alignment
- resonance between them

Alignment should not fully recolor the interface. It should change what the player is sensitive to and how clearly certain systems speak to them.

Examples:

- a Void-aligned player in a Void-heavy colony may perceive anomalous surfaces as more legible
- an Elpis-aligned player in an Elpis-heavy environment may receive cleaner, calmer system presentation
- a misaligned player may experience friction, distance, or interpretive ambiguity

This lets the UI tell a story about belonging and estrangement.

## Hint System

Hints should exist at three intensities.

### Ambient Hints

Always present but subtle:

- accent shift
- contrast shift
- border firmness
- grid strictness
- panel stillness versus drift
- text cadence
- background noise floor

### Interpretive Hints

Readable but not loud:

- colony cards
- convergence markers
- contract presentation posture
- notice wording
- evaluation framing

### Event Hints

Strong and rare:

- threshold crossings
- colony-entry transitions
- contract outcome anomalies
- contradiction events
- major alignment shifts

## Glitch Allowances

Glitch is legal only where it adds fiction, pressure, or truth.

Allowed heavily:

- Nova Drift
- contract interpretation overlays
- high-Void convergence surfaces
- contradiction moments
- threshold events

Allowed lightly:

- Quarters intrusion moments
- colony dashboards under pressure
- profile resonance effects
- post-contract summaries

Restricted:

- workbench assembly operations
- banking confirmations
- inventory transfer confirmations
- irreversible decision dialogs

Forbidden:

- save and load controls
- accessibility-critical controls
- any screen where clarity is required for trust or fairness

Rule:

Glitch may characterize, warn, or reveal.
It may not sabotage usability.
