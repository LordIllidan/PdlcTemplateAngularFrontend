# Context: Angular Frontend Template

## Purpose

Base Angular frontend template for PDLC-managed applications.

## Boundaries

- Owns frontend application shell, feature modules, shared UI and architecture rules.
- Does not own backend APIs, database migrations or GitOps deployment.

## Important Files

- `src/app`: Angular application code.
- `sheriff.config.ts`: architecture boundaries.
- `federation.config.js`: native federation configuration.
- `.github/workflows/ci.yml`: CI pipeline.

## Local Commands

- `npm run lint`
- `npm run architecture`
- `npm test`
- `npm run build`

## Decisions

- Use standalone Angular patterns.
- Use Sheriff to enforce module boundaries.
- Use native federation for module federation readiness.

## Child Contexts

- `src/app/context.md`
