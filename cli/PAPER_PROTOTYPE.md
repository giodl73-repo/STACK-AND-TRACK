# StackTrack CLI Paper Prototype

Date: 2026-08-06

This is a manual execution of the proposed CLI contract against
`models/example-performance.json`. It is a design fixture, not generated tool
output and not proof that implementation is admitted.

## Invocation

```text
stacktrack status models/example-performance.json \
  --as-of 2026-08-06 \
  --rate-period week
```

## Expected text output

```text
StackTrack status
File: models/example-performance.json
Record as of: 2026-08-06T19:00:00Z
Status date: 2026-08-06

Outcome
  Goal: performance-v1
  Metric: p95 request latency
  Baseline: 10.0 seconds
  Current: 10.0 seconds
  Target: 8.0 seconds by 2026-10-24
  Required impact: 2.0 seconds
  Outstanding impact: 2.0 seconds

Coverage
  Stack coverage: 0.86x - insufficient
  Horizon coverage: 0.86x - insufficient
  Credible remaining impact: 1.72 seconds
  Coverage gap: 0.28 seconds

Trajectory
  Latest checkpoint: 2026-08-01
    Required: 0.0 seconds
    Forecast: 0.0 seconds
    Provisional: 0.0 seconds
    Accepted: 0.0 seconds
  Next checkpoint: 2026-09-12
    Required: 1.1 seconds
    Forecast: 1.4 seconds
    Temporal coverage: 1.27x
    Provisional: unknown
    Accepted: unknown
  Target-date checkpoint: missing

Rate
  Remaining time: 79 days / 11.29 weeks
  Required remaining rate: 0.1772 seconds per week
  Supplied snapshot rate: 0.1667 seconds per week - does not reproduce

Guardrails
  Acceptable: 2
  Watch: 0
  Breached: 0
  Unknown: 0

Attention
  WARNING STT-STACK-001 Stack coverage is insufficient at 0.86x.
  WARNING STT-STACK-OPAQUE Credible remaining impact depends on adjustment
          semantics that are not machine-reproducible.
  WARNING STT-TIME-006 Supplied required remaining rate does not match the
          record as-of date and target date.
  WARNING STT-TIME-007 The trajectory has no target-date checkpoint.

Decision remains human: add or revise credible impact, revise the target or
horizon explicitly, or decline the commitment.
```

The next checkpoint is temporally covered while the overall horizon is not.
The CLI must show both facts. It must not collapse them into a green, yellow,
or red program score.

## Expected JSON findings

```json
{
  "toolVersion": "0.1.0",
  "schemaVersion": "0.2",
  "file": "models/example-performance.json",
  "asOf": "2026-08-06",
  "findings": [
    {
      "code": "STT-STACK-001",
      "severity": "warning",
      "path": "/snapshot/stackCoverageRatio",
      "message": "Stack coverage is insufficient at 0.86x.",
      "evidence": {
        "credibleRemainingImpact": 1.72,
        "outstandingImpact": 2.0,
        "stackCoverageRatio": 0.86
      },
      "correction": "Add or revise credible impact, or revise the target or horizon explicitly."
    },
    {
      "code": "STT-STACK-OPAQUE",
      "severity": "warning",
      "path": "/snapshot/credibleRemainingImpact",
      "message": "The calculated impact cannot be reproduced from explicit machine-readable adjustment semantics.",
      "evidence": {
        "suppliedValue": 1.72
      },
      "correction": "Review the overlap and dependency calculation manually."
    },
    {
      "code": "STT-TIME-006",
      "severity": "warning",
      "path": "/snapshot/requiredRemainingRate",
      "message": "The supplied required remaining rate does not match the record as-of date and target date.",
      "evidence": {
        "suppliedPerWeek": 0.1667,
        "reproducedPerWeek": 0.1772,
        "remainingDays": 79
      },
      "correction": "Recalculate the rate from outstanding impact and remaining time."
    },
    {
      "code": "STT-TIME-007",
      "severity": "warning",
      "path": "/trajectory",
      "message": "The trajectory has no checkpoint on the target date.",
      "evidence": {
        "targetDate": "2026-10-24",
        "lastCheckpointDate": "2026-09-12"
      },
      "correction": "Add the accepted target-date requirement and forecast checkpoint."
    }
  ]
}
```

Expected process result:

| Invocation | Exit |
|---|---:|
| `stacktrack lint ...` | 0 because the current findings are warnings |
| `stacktrack lint ... --strict` | 1 |
| `stacktrack status ...` | 0 |

## Learning applied to the design

The paper execution exposed three requirements that were easy to miss in an
abstract command design:

1. measurement age cannot become a deterministic warning until the record
   declares a cadence or maximum age;
2. required remaining rate must be recomputed from the selected status date,
   not copied from the original plan;
3. temporal coverage at one checkpoint cannot conceal insufficient horizon
   coverage or a missing target-date checkpoint.

These findings were applied to `DESIGN.md` before implementation.
