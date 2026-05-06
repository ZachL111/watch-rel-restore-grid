# Review Journal

The review surface for `watch-rel-restore-grid` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its reliability focus without claiming live deployment or external usage.

## Cases

- `baseline`: `budget pressure`, score 113, lane `watch`
- `stress`: `failure width`, score 200, lane `ship`
- `edge`: `recovery gap`, score 190, lane `ship`
- `recovery`: `runbook drift`, score 163, lane `ship`
- `stale`: `budget pressure`, score 183, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
