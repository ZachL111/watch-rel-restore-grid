# watch-rel-restore-grid

`watch-rel-restore-grid` explores reliability with a small Solidity codebase and local fixtures. The technical goal is to develop a Solidity command-oriented project for restore scenarios with log and snapshot fixtures, replay consistency checks, and local-only command execution.

## Why This Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Watch Rel Restore Grid Review Notes

Start with `failure width` and `budget pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/watch-rel-restore-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `failure width` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
