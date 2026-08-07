# Stack Ledger

Keep the live portfolio and its results in one place. Never overwrite the
original prediction; add revisions so forecasting changes remain visible.

## Outcome state

| Date | Goal version | Baseline | Current value | Target | Denominator exposed | Outstanding impact | Credible remaining impact | Coverage ratio | Decision |
|---|---|---:|---:|---:|---:|---:|---:|---:|---|
| | | | | | | | | | |

## Intervention ledger

| ID | Intervention | Status | Original predicted gain | Current predicted gain | Confidence | Credible gain | Priority | Owner | Earliest learning date | Acceptance date | Realized gain | Variance | Learning reference |
|---|---|---|---:|---:|---:|---:|---:|---|---|---|---:|---:|---|
| S-01 | | candidate | | | | | | | | | | | |
| S-02 | | candidate | | | | | | | | | | | |
| S-03 | | candidate | | | | | | | | | | | |

Allowed status values:

- `candidate`
- `selected`
- `in-progress`
- `testing`
- `shipping`
- `stabilizing`
- `measuring`
- `confirming`
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

## Intervention timing

| Candidate | Build window | Test window | Ship date | Stabilization window | Measurement window | Confirmation window | Planned time to learning | Actual time to learning |
|---|---|---|---|---|---|---|---|---|
| | | | | | | | | |

## Forecast revisions

| Date | Candidate | Previous prediction | New prediction | Previous confidence | New confidence | Reason | Evidence |
|---|---|---:|---:|---:|---:|---|---|
| | | | | | | | |

## Re-stack history

| Date | Trigger | Outstanding target | Previous coverage | New coverage | Priority changes | Added or retired candidates | Decision owner |
|---|---|---:|---:|---:|---|---|---|
| | | | | | | | |

## Goal-change and transfer history

| Date | Previous goal | New goal | Change owner | Prior item | Transfer classification | New baseline treatment | Capacity or schedule effect | Decision |
|---|---|---|---|---|---|---|---|---|
| | | | | | transferable / revalidate / prerequisite / stranded / conflicting / unknown | | | |

## Scenario and cohort results

| Date | Candidate | Scenario or cohort | Denominator share | Local result | Weighted result | Guardrail | Repair status |
|---|---|---|---:|---:|---:|---|---|
| | | | | | | | |

## Ledger rules

1. Preserve original and revised predictions.
2. Record no-gain and regression results.
3. Do not count completed work as realized gain.
4. Adjust overlapping gains before calculating coverage.
5. Recalculate the outstanding target after every accepted result.
6. Propagate learning into all related candidates.
7. Keep retired candidates and their reasons visible.
8. Version material goal changes and preserve the previous accepted history.
9. Do not count transferred mechanisms again when the new baseline includes
   them.
10. Keep aggregate gains and scenario regressions visible separately.
