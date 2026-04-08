# Native App Architecture

This document defines the technical architecture for `Void Ascendancy Native` as a macOS application.

The architecture should preserve the strengths of the current game while making room for a richer presentation model:

- strong systemic logic
- clear separation of game rules from UI
- state-driven rendering
- convergence-aware theming
- a native macOS interaction model

The central rule is:

The game engine should not know that it is being rendered through a beautiful, invasive, living macOS interface.

That interface should be able to evolve without forcing rewrites of the core game logic.

## Technical Goals

The architecture should support:

- native macOS UX through SwiftUI
- clean separation between domain rules and presentation
- stable state flow
- reusable theming resolution
- long-term maintainability
- vertical-slice-first development

## Recommended Stack

Primary recommendation:

- Swift
- SwiftUI
- Observation or a state store pattern suitable for SwiftUI
- JSON-based content loading in the early phases

Why SwiftUI:

- native windowing and navigation
- strong layout system
- excellent support for animation and layered stateful UI
- suitable for semantic theming and environment-driven styling
- clean long-term path for shipping a true macOS app

## Architectural Layers

The app should be split into five main layers:

1. app shell
2. presentation layer
3. state layer
4. domain layer
5. content and persistence layer

## App Shell

Responsibility:

- application lifecycle
- window configuration
- root navigation
- top-level environment injection

Suggested responsibilities:

- main window and scene setup
- root split-view or pane-based shell
- routing between major destinations
- access to shared app state
- access to resolved theme state

The shell should know about destinations and global app state, but not about game rules.

## Presentation Layer

Responsibility:

- SwiftUI views
- layout composition
- animation
- interaction handling
- semantic application of tokens and component states

This layer should contain:

- screen views
- reusable panels and surfaces
- contract cards
- status blocks
- notice feed views
- rig and workbench surfaces later on

This layer should not calculate game outcomes directly.

It should render state and send user intents downward.

## State Layer

Responsibility:

- hold the current app state
- react to user actions
- coordinate domain operations
- expose view-friendly state to SwiftUI

This layer is the bridge between UI and game rules.

Suggested responsibilities:

- current player state
- current world snapshot
- selected screen
- selected colony context
- current notices
- current visual context
- current contract selection

This layer should interpret user intents such as:

- open Nova Drift
- select contract
- execute contract
- advance cycle

Then call domain services and update state.

## Domain Layer

Responsibility:

- pure or mostly pure game logic
- outcome calculation
- contract generation or reading
- progression updates
- cycle changes
- convergence and alignment interpretation rules

This is where the game should live conceptually.

This layer should contain:

- domain models
- services
- rule calculators
- content interpreters

Examples:

- `ContractEvaluator`
- `CycleAdvancer`
- `ProgressionService`
- `AlignmentInterpreter`
- `ConvergenceResolver`

This layer should avoid direct dependency on SwiftUI or platform APIs.

## Content And Persistence Layer

Responsibility:

- JSON loading
- content decoding
- save loading and writing
- schema versioning and migration later

Early phase recommendation:

- continue using JSON content derived from the original project
- load content into strongly typed Swift models
- keep save format simple in the vertical slice

Later expansion can include:

- save schema versioning
- import from original save structures
- more robust persistence abstractions

## Core Principle: Domain Versus Presentation

The terminal game currently places a great deal of orchestration inside one controller.

The native app should deliberately break that apart.

The new pattern should be:

- domain decides what happened
- state layer decides what changed in the app model
- presentation decides how that feels and looks

This is the separation that will let us evolve the UI aggressively without destabilizing game rules.

## Suggested Module Structure

One possible project organization:

```text
VoidAscendancyNative/
- App/
- UI/
  - Screens/
  - Components/
  - Layout/
  - Motion/
- Theme/
  - Tokens/
  - Resolvers/
  - SurfaceStates/
- State/
  - AppState/
  - Stores/
  - ViewModels/
- Domain/
  - Models/
  - Services/
  - Rules/
- Content/
  - Loaders/
  - Decoders/
  - Seed/
- Persistence/
  - SaveStore/
  - Migration/
```

This does not need to be exact, but it captures the intended separation.

## Domain Models

Recommended early domain model groups:

- `Player`
- `PlayerProgression`
- `AlignmentState`
- `ConvergenceState`
- `Colony`
- `Contract`
- `ContractOutcome`
- `Notice`
- `Loadout`
- `VisualContext`

These should be typed clearly enough to avoid “dictionary soup.”

## View State Versus Domain State

The app should distinguish:

- domain state
- view state

Domain state includes:

- skill levels
- contract weights
- colony convergence
- rewards
- alignment values

View state includes:

- currently selected contract
- active destination
- whether the side panel is expanded
- animation phase for a result transition
- temporary highlight state

This distinction helps keep UI behavior from leaking into gameplay rules.

## Theming Architecture

The theming system should be computed from semantic inputs rather than hard-coded per screen.

Key inputs:

- current space
- current colony
- convergence direction
- convergence intensity
- player alignment vector
- player resonance strength
- surface state

Recommended pattern:

1. base app tokens
2. space tokens
3. colony tokens
4. overlay tokens
5. state-specific tokens
6. resolved component theme

This resolution should happen in a centralized theme resolver rather than inside every view.

Suggested theme objects:

- `ThemeContext`
- `ResolvedPalette`
- `SurfaceTheme`
- `TextTheme`
- `MotionTheme`

## Visual Context Resolver

One especially important service should compute the current visual context.

Example:

`VisualContextResolver`

Inputs:

- colony
- convergence
- player alignment
- space

Outputs:

- resolved colony presentation
- overlay intensity
- anomaly allowance
- panel behavior mode
- text posture
- motion profile

This lets the UI feel systemic instead of manually styled.

## State Flow

Recommended high-level flow:

1. app launches
2. content loads
3. initial player/world state is constructed
4. app enters Quarters
5. view renders from current state
6. player action emits an intent
7. store handles intent
8. domain services compute result
9. store updates state
10. theme resolver recalculates visual context
11. UI re-renders and animates the transition

This pattern fits SwiftUI well.

## Vertical Slice Architecture

For the first slice, implement only the parts needed for:

- Quarters
- Nova Drift
- Contract Detail
- Contract Outcome
- return loop to Quarters

Minimal required services:

- content loader
- player state store
- contract selection state
- contract evaluator
- cycle updater
- notice generator
- visual context resolver

This is enough to prove the architecture without overbuilding.

## Content Migration Strategy

The original project already has valuable JSON content and systemic logic.

Recommended migration approach:

### Phase 1

- keep content in JSON
- manually port a limited vertical-slice subset
- re-express rules in Swift domain services

### Phase 2

- normalize content schema for native app needs
- create typed decoders
- begin building robust migration pathways if original content remains a source

### Phase 3

- decide whether the native app should share a formal content model with the original project or diverge into its own content repository

For now, optimize for clarity over full compatibility.

## Interaction Model

User actions should be modeled as intents rather than direct view manipulation.

Examples:

- `selectDestination(.novaDrift)`
- `selectContract(id)`
- `executeSelectedContract`
- `dismissOutcome`
- `advanceCycle`

This keeps the logic testable and predictable.

## Testing Strategy

The biggest gain from the new architecture should be testability.

Recommended testing focus:

- domain service tests
- theme resolver tests
- state transition tests
- content decode tests

UI snapshot testing can come later if useful, but the early win is making rules and state flow dependable.

## Risks To Avoid

- putting rule logic back into SwiftUI views
- hard-coding colors and behaviors directly inside screens
- rebuilding the original controller monolith under a different name
- tying domain logic to animation or presentation details
- overengineering persistence before the vertical slice proves itself

## Suggested Build Order

1. app shell
2. domain models
3. content loading
4. state store
5. theme resolver
6. Quarters screen
7. Nova Drift screen
8. contract detail and outcome flow
9. notice and state update loop
10. refinement pass for convergence-aware presentation

## Future Extensions

This architecture should support later addition of:

- workbench systems
- bank and marketplace
- travel
- delivery progress
- evaluation systems
- richer alignment effects
- more complex save handling
- import or compatibility bridges from the terminal original

## Next Step

The next best technical artifact would be:

- `implementation-roadmap.md`

That document should turn the architecture and vertical slice into concrete development phases and milestones.
