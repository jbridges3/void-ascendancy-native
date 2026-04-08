# Void Ascendancy Native Docs

This directory is the source of truth for the redesign of `Void Ascendancy` as a native macOS application.

The working model for this project is:

- narrative north lives with the creator
- technical and design north live with the build partner
- docs are updated as decisions are made so implementation stays aligned with world truth

## Core Docs

- `product-pitch.md`
  - High-level statement of what the redesigned app is, what it preserves, and what it should feel like.
- `visual-language.md`
  - The visual, spatial, typographic, motion, and glitch rules for the native experience.
- `ui-systems-spec.md`
  - The application shell, screen map, persistent panels, and systemic UI behavior rules.
- `design-principles.md`
  - Guardrails that protect the project from drifting into generic game UI or breaking the fiction.
- `lore-constraints.md`
  - Narrative truths, terminology, and setting constraints that implementation should respect.

## Working Rules

- Product direction should be clarified here before large implementation decisions are locked.
- UI presentation is part of the fiction, not a neutral wrapper.
- Colony identity, convergence pressure, and player alignment should all be treated as distinct but interacting systems.
- Glitch is meaningful language, not decoration.
- The app must remain legible and native-feeling even when it becomes invasive or unstable.

## Immediate Goals

- preserve the narrative sparks and system spine of the terminal original
- define a native macOS interaction model
- formalize colony, convergence, and alignment presentation
- build toward a vertical slice that proves the redesign thesis
