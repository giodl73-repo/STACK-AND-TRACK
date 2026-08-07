# Stack Ledger

Keep the live portfolio and its results in one place. Never overwrite the
original prediction; add revisions so forecasting changes remain visible.

## Outcome state

| Date | Baseline | Current value | Target | Outstanding impact | Credible remaining impact | Coverage ratio | Decision |
|---|---:|---:|---:|---:|---:|---:|---|
| | | | | | | | |

## Intervention ledger

| ID | Intervention | Status | Original predicted gain | Current predicted gain | Confidence | Credible gain | Priority | Owner | Start | Decision date | Realized gain | Variance | Learning reference |
|---|---|---|---:|---:|---:|---:|---:|---|---|---|---:|---:|---|
| S-01 | | candidate | | | | | | | | | | | |
| S-02 | | candidate | | | | | | | | | | | |
| S-03 | | candidate | | | | | | | | | | | |

Allowed status values:

- `candidate`
- `selected`
- `in-progress`
- `measuring`
- `realized`
- `no-gain`
- `regressed`
- `deferred`
- `retired`

## Dependency and overlap register

| Relationship | Candidates | Effect | Adjustment | Evidence |
|---|---|---|---:|---|
| dependency | | | | |
| overlap | | | | |
| amplifier | | | | |

## Forecast revisions

| Date | Candidate | Previous prediction | New prediction | Previous confidence | New confidence | Reason | Evidence |
|---|---|---:|---:|---:|---:|---|---|
| | | | | | | | |

## Re-stack history

| Date | Trigger | Outstanding target | Previous coverage | New coverage | Priority changes | Added or retired candidates | Decision owner |
|---|---|---:|---:|---:|---|---|---|
| | | | | | | | |

## Ledger rules

1. Preserve original and revised predictions.
2. Record no-gain and regression results.
3. Do not count completed work as realized gain.
4. Adjust overlapping gains before calculating coverage.
5. Recalculate the outstanding target after every accepted result.
6. Propagate learning into all related candidates.
7. Keep retired candidates and their reasons visible.
