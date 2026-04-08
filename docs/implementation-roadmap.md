# Implementation Roadmap

This document translates the current design and architecture docs into a practical build sequence for `Void Ascendancy Native`.

The roadmap is designed to protect three things at once:

- narrative integrity
- technical cleanliness
- momentum

The project should not try to solve the whole game at once. It should prove the redesign in layers.

## Roadmap Philosophy

The build should proceed in this order:

1. establish structure
2. prove the visual and interaction thesis
3. harden the state and domain model
4. expand systems carefully

This keeps us from overbuilding infrastructure for an experience that has not yet been proven on screen.

## Phase 0: Project Foundation

Goal:

- create the repo structure and source-of-truth docs
- align on design language and technical direction

Status:

- in progress and substantially complete on the documentation side

Deliverables:

- docs directory
- product pitch
- visual language
- UI systems spec
- colony palette and behavior spec
- palette candidates and token sets
- screen composition examples
- vertical slice spec
- native app architecture

Success criteria:

- design and engineering have a shared north star
- narrative review can happen against written artifacts

## Phase 1: App Scaffold

Goal:

- establish the native application shell and code organization

Build targets:

- SwiftUI app entry point
- root window and navigation shell
- placeholder screen routing for Quarters, Nova Drift, Profile, Workbench, Dockside, and Evaluation
- foundational project folders reflecting the architecture doc
- semantic theme token infrastructure

Recommended outputs:

- minimal app launches successfully
- split-view or pane shell is in place
- placeholder content can switch between top-level destinations

Success criteria:

- the app feels like a native macOS shell before gameplay depth is added
- the project structure discourages monolithic controller logic

## Phase 2: Theme And Visual Context System

Goal:

- implement the semantic theming and visual context resolution system

Build targets:

- base tokens
- space tokens
- colony tokens
- Elpis and Void overlay tokens
- surface states
- motion profiles
- `ThemeContext`
- `VisualContextResolver`

Recommended outputs:

- a dev preview screen or internal test view showing the same surface under multiple colony and convergence combinations

Success criteria:

- the app can compute visual context from state rather than hard-coded screen styles
- colony identity remains visible under overlay pressure

## Phase 3: Vertical Slice Core State

Goal:

- build the minimum game state model needed for the first playable slice

Build targets:

- typed player model
- typed colony model
- typed contract model
- typed contract outcome model
- app state store
- intent handling for major slice interactions
- content loading from a limited JSON seed set

Recommended outputs:

- the app can load a vertical-slice scenario into state and render it consistently

Success criteria:

- state changes are predictable
- the app can move between Quarters and Nova Drift without placeholder-only behavior

## Phase 4: Quarters

Goal:

- build Quarters as the stable baseline space of the app

Build targets:

- Quarters layout
- current state summary
- cycle display
- notice feed
- transitions into top-level destinations
- right contextual panel behavior for Quarters

Key proof points:

- the space feels owned, calm, and readable
- subtle ideological intrusion is possible without breaking trust

Success criteria:

- Quarters feels complete enough to anchor the whole vertical slice

## Phase 5: Nova Drift

Goal:

- build Nova Drift as a contrasting signal-space for contract interaction

Build targets:

- contract browse surface
- contract cards or surfaced opportunities
- right panel interpretive hints
- contract selection flow
- contrast with Quarters in layout behavior, motion, and atmosphere

Key proof points:

- Drift feels meaningfully different from Quarters
- the interface can become expressive without becoming unclear

Success criteria:

- browsing contracts feels like inhabiting a system, not using a menu

## Phase 6: Contract Detail And Outcome Loop

Goal:

- complete the first systemic player action loop

Build targets:

- contract detail screen or modal surface
- contract execution intent
- contract evaluation service
- contract outcome presentation
- reward and state update
- return flow back to Quarters

Key proof points:

- hidden-information philosophy survives the redesign
- outcome feels systemic and authored
- the UI feels alive during and after consequence

Success criteria:

- a player can complete one meaningful action loop from Quarters to Nova Drift and back

## Phase 7: Convergence And Resonance Proof

Goal:

- prove that colony identity, convergence, and player resonance can all affect presentation in a readable way

Build targets:

- one Elpis-dominant presentation path
- one Void-dominant or contested presentation path
- one resonance-sensitive variation based on player state

Recommended outputs:

- the same screen shown under multiple conditions for review

Key proof points:

- `100% Elpis` and `100% Void` feel materially different
- the same colony remains recognizable under both
- the player can feel tilt before reading metrics

Success criteria:

- the visual fiction works in practice, not just in design docs

## Phase 8: Vertical Slice Hardening

Goal:

- clean up the first slice until it is stable enough to serve as the foundation for expansion

Build targets:

- code cleanup
- domain test coverage
- state transition tests
- theme resolver tests
- interaction polish
- copy and pacing pass

Success criteria:

- the slice is stable enough that future systems can be added without undoing the architecture

## Phase 9: Expansion Planning

Goal:

- decide what comes next after the slice proves itself

Likely next systems:

- Workbench
- Dockside civic systems
- Bank and marketplace
- Travel
- Deliveries
- Evaluation
- save/import strategy from the original game

At this point we should re-evaluate:

- what architecture needs strengthening
- what lore constraints need to be formalized
- whether the content model should stay parallel with the original project or begin diverging

## Milestone Summary

### Milestone A

App shell and token infrastructure exist.

### Milestone B

Visual context system can demonstrate colony and convergence differences.

### Milestone C

Quarters and Nova Drift are navigable and distinct.

### Milestone D

Contract loop is playable end to end.

### Milestone E

Convergence and resonance meaningfully affect UI presentation.

### Milestone F

Vertical slice is hardened and ready for expansion.

## Review Rhythm

Recommended working rhythm:

- technical changes move forward in small, reviewable increments
- design docs are updated when decisions materially change constraints
- narrative review happens at milestone boundaries and when fiction-facing choices are made

This keeps narrative north and technical north aligned without forcing constant interruption.

## Decision Gates

Before moving past the vertical slice, we should explicitly confirm:

- the app shell feels right for the game
- Quarters and Nova Drift express the intended emotional contrast
- colony and convergence presentation are working
- the hidden-information philosophy survives the redesign
- the code structure is healthy enough to expand

## Risks

Main risks to watch:

- overbuilding systems before the first loop feels good
- underinvesting in theming architecture and ending up with ad hoc styling
- overusing glitch before trust and clarity are established
- letting implementation convenience flatten colony identity
- importing too much old logic too early without rethinking structure

## Immediate Next Actions

The most practical next steps are:

1. scaffold the SwiftUI app shell
2. establish the folder/module structure
3. implement semantic token types and a basic theme resolver
4. create a simple internal preview surface for colony and convergence combinations

Once those exist, we can start building Quarters with real confidence.
