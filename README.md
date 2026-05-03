# PDLC Angular Frontend Template

Template repository for enterprise Angular frontend applications.

## Stack

- Angular standalone app
- Native federation / module federation
- Sheriff architecture rules
- Vitest unit tests
- ESLint and CI quality gates

## Commands

```powershell
npm ci
npm run lint
npm run lint:powershell
npm run architecture
npm run context
npm run changes
npm test
npm run build
```

## Optional CI Quality Gates

Repository variables control optional external gates:

- `ENABLE_SONAR=true`
- `ENABLE_NPM_AUDIT=true`
- `ENABLE_GITLEAKS=true`
- `ENABLE_CODEQL=true`

Sonar requires `SONAR_TOKEN` secret and `SONAR_HOST_URL`, `SONAR_PROJECT_KEY`, `SONAR_ORGANIZATION` variables.

## GitHub Template

This repository is intended to be marked as a GitHub template repository.
