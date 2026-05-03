# Context: Angular App

## Purpose

Application shell and feature routing for the Angular template.

## Boundaries

- `shell` owns layout.
- `features` owns routed business screens.
- `shared` owns reusable presentation utilities.

## Important Files

- `app.component.ts`: root component.
- `app.routes.ts`: application routes.

## Local Commands

- `npm run architecture`
- `npm test`

## Decisions

- Keep features isolated and enforce dependencies with Sheriff.

## Child Contexts
