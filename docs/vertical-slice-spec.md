# Vertical Slice Spec

This document defines the first playable slice for `Void Ascendancy Native`.

The vertical slice is not a small demo for its own sake. It is the first proof that the redesign thesis works in product, interface, and implementation terms.

The slice should prove that `Void Ascendancy` can become a native macOS app while preserving:

- narrative restraint
- systemic depth
- hidden-information philosophy
- colony identity
- convergence-driven presentation
- the feeling that the interface is elegant, invasive, and alive

## Slice Goal

The first slice should let the player:

1. enter Quarters
2. understand current state at a glance
3. move into Nova Drift
4. browse contracts with partial interpretive signaling
5. inspect a contract
6. execute a contract
7. receive outcome and consequence feedback
8. return to Quarters with changed state
9. feel at least one meaningful shift in presentation caused by colony convergence or player alignment

If those moments work, the redesign is viable.

## Product Questions The Slice Must Answer

The slice should answer:

- Does the app feel native to macOS without feeling generic?
- Can the interface express ideology and tension without sacrificing clarity?
- Does contract browsing feel more like inhabiting a system than selecting from a menu?
- Can convergence meaningfully change presentation while preserving place identity?
- Can the player feel hidden truth and partial interpretation rather than explicit probability?

## Included Screens

The slice should include these fully enough to feel real:

- Quarters
- Nova Drift
- Contract Detail
- Contract Outcome

These may appear in reduced form but should exist if needed:

- Profile summary surface
- Right contextual panel states
- basic notice/event system

These should not be part of the first slice:

- Workbench full interaction
- Banking
- Marketplace
- Travel
- Deliveries UI
- full Evaluation implementation

They can be referenced visually or structurally, but should not expand scope yet.

## Flow Overview

### Step 1: Launch Into Quarters

The player enters a stable, private space.

They should immediately understand:

- where they are
- current cycle
- current colony
- available major destinations
- current drift of state through notices or status indicators

The screen should feel calm, legible, and owned.

### Step 2: Move Into Nova Drift

The player enters a more unstable, signal-rich environment.

The contrast with Quarters should be immediate but controlled.

The player should perceive:

- a different informational logic
- more layered surfaces
- subtle uncertainty in what is being presented

### Step 3: Browse Contracts

Contracts should not read as flat list items.

They should feel like surfaced opportunities or intercepted operational threads.

The player should be able to understand:

- title
- target colony
- visible rewards
- broad quality of promise or danger

The player should not receive:

- explicit success percentages
- total transparency into system calculations

The UI should instead use:

- confidence posture
- color and anomaly hints
- signal quality
- contextual interpretation surfaces

### Step 4: Inspect Contract Detail

The player opens one contract.

The detail view should deepen the feeling of partial understanding.

It should show:

- target colony identity
- visible reward framing
- selective interpretive hints
- relationship between contract context and current player state

The detail view should not feel like an RPG tooltip explosion.

It should feel like an operational reading surface.

### Step 5: Execute Contract

Execution can remain abstracted at this stage.

The point is not to build a full mission simulator. The point is to prove:

- systemic outcome calculation
- satisfying state transition
- meaningful presentation of risk and consequence

The player chooses to execute and receives an animated transition into the result state.

### Step 6: Show Contract Outcome

The result view must communicate:

- success, risky success, or failure
- gained rewards
- changed state
- ideological or convergence implications if applicable

The result should feel authored and atmospheric rather than purely transactional.

This is a strong opportunity to show the interface as alive.

### Step 7: Return To Quarters

The player returns to Quarters and sees that the world has changed.

At minimum, the slice should be able to surface:

- cycle progression or state change
- changed notices
- updated progression or resource state
- at least one visible shift in presentation caused by what just happened

This closes the loop and proves persistence of consequence.

## Required Systems In The Slice

These systems must be functionally represented, even if simplified:

- player state model
- contract model
- contract evaluation logic
- visible reward model
- basic progression update
- basic cycle update
- colony context
- convergence context
- right-panel notice system

These systems may be mocked or partial if needed:

- full save migration
- comprehensive technique handling
- full alignment economy
- complete colony network

But the slice must be built on a structure that can grow.

## Required Presentation Proofs

The slice should prove these design ideas in practice:

### Proof 1: Quarters Versus Drift Contrast

The player should feel a clear difference between sanctuary and unstable operational signal-space.

### Proof 2: Colony Identity

At least one contract should foreground a colony strongly enough that the player can feel place identity through presentation.

### Proof 3: Convergence Overlay

At least one colony surface should behave differently under strong Elpis or strong Void pressure.

### Proof 4: Hidden Information

The player should be informed enough to make a choice, but not given explicit odds.

### Proof 5: Interface As Fiction

At least one moment should make the player feel that the interface is not a neutral menu system.

## Suggested Data For The Slice

To keep scope controlled, the slice should use a limited data set.

Suggested initial content:

- 1 player profile
- 3 contracts
- 2 colony contexts
- 1 Elpis-dominant colony
- 1 Void-dominant or contested colony
- 1 small set of skills or loadout values needed for outcome calculation

This is enough to prove the model without overbuilding.

## Suggested UI States To Build

At minimum, the implementation should support:

- stable surface
- interpretive surface
- contaminated surface
- evaluative text style
- Elpis overlay variant
- Void overlay variant

This creates the minimum viable design language.

## Suggested Architecture Direction

The vertical slice should already be built in the shape of the final application.

Recommended layers:

- app shell and navigation
- domain models
- state store
- design tokens and theming system
- screen-level view models
- reusable surface components

Even if the slice is small, the structure should not be throwaway.

## What Can Be Simplified

To protect scope, the slice may simplify:

- number of screens
- number of contracts
- depth of progression systems
- number of colonies
- number of live notices
- full inventory representation

What should not be simplified away:

- visual contrast between spaces
- convergence-aware presentation
- partial-information contract reading
- stateful return loop to Quarters

## Acceptance Criteria

The slice is successful if:

- the app feels like a native desktop experience
- Quarters and Nova Drift feel meaningfully different
- the player can browse and execute a contract without confusion
- contract outcomes feel systemic rather than arbitrary
- the player senses colony and convergence identity in presentation
- the UI demonstrates at least one invasive or alive behavior without breaking usability

## Recommended Implementation Order

1. app shell and navigation scaffold
2. design token system
3. Quarters baseline
4. Nova Drift baseline
5. contract card and contract detail surfaces
6. outcome calculation hookup
7. contract outcome view
8. return loop and state update
9. convergence-aware presentation pass

## Risks To Avoid

- building too much game logic before the interaction model is proven
- making Nova Drift flashy but unclear
- making Quarters too visually empty or inert
- overusing glitch before the core reading experience is strong
- reducing convergence to simple color swaps
- treating the slice as disposable prototype code

## Next Step

After this document, the strongest next artifact is:

- `native-app-architecture.md`

That document should define how the SwiftUI app, state store, theming system, and domain layer fit together.
