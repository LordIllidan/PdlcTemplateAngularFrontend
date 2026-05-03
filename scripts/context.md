# Context: Scripts

## Purpose

Static validation scripts used by CI and agent quality gates.

## Boundaries

- Owns deterministic validation of architecture, `context.md`, and change documentation.
- Does not own application runtime behavior.

## Important Files

- `ci/Test-ArchitectureBoundaries.ps1`: feature dependency boundary checks.
- `ci/Test-ContextDocs.ps1`: context documentation structure checks.
- `ci/Test-ChangeDocs.ps1`: change documentation structure checks.

## Local Commands

- `npm run architecture`
- `npm run context`
- `npm run changes`

## Decisions

- Quality gates must be deterministic and runnable without external SaaS.
- External tools such as Sonar are optional CI steps controlled by repository variables.

## Child Contexts

