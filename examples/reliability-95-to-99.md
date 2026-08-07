# Reliability Example: 95% to 99%

This is an illustrative example. It uses a 365-day year and does not claim that
the listed causes describe a real service.

## Convert availability into loss units

Availability percentages hide the size of the required change.

```text
Minutes per year = 365 x 24 x 60 = 525,600
Downtime at 95% = 525,600 x 0.05 = 26,280 minutes = 438 hours
Downtime at 99% = 525,600 x 0.01 = 5,256 minutes = 87.6 hours
Required reduction = 438 - 87.6 = 350.4 hours
```

Moving from 95% to 99% requires eliminating 80% of current downtime:

```text
350.4 / 438 = 80%
```

Guardrails:

- no region, tenant class, or critical customer journey falls below its
  baseline;
- incident reporting completeness does not decline;
- operator toil and recovery risk remain acceptable;
- cost and capacity changes remain visible.

## Cause stack

The cause categories partition the current 438 annual downtime hours.

| Cause family | Annual downtime | Share |
|---|---:|---:|
| Unsafe deployments and rollback failures | 140h | 32.0% |
| Dependency failures without isolation | 110h | 25.1% |
| Capacity exhaustion | 70h | 16.0% |
| Data and control-plane recovery | 60h | 13.7% |
| Other recurring causes | 58h | 13.2% |
| **Total** | **438h** | **100%** |

Incident count is not the ranking measure. Annual downtime contribution is.
The team must also inspect customer-impact minutes and cohort distribution so a
global availability gain does not hide concentrated harm.

## Primary intervention path

| ID | Intervention | Cause addressed | Predicted downtime reduction | Confidence | Credible reduction |
|---|---|---|---:|---:|---:|
| R-01 | Progressive delivery and automatic rollback | Deployments | 125h | 85% | 106.25h |
| R-02 | Dependency isolation and graceful degradation | Dependencies | 95h | 80% | 76.00h |
| R-03 | Capacity forecasting and automatic protection | Capacity | 60h | 80% | 48.00h |
| R-04 | Tested data recovery and control-plane failover | Data/control plane | 50h | 75% | 37.50h |
| R-05 | Eliminate top recurring causes in the residual set | Other | 30h | 65% | 19.50h |

Nominal primary-path reduction:

```text
125 + 95 + 60 + 50 + 30 = 360 hours
Nominal coverage = 360 / 350.4 = 1.027x
```

Confidence-adjusted reduction is only:

```text
106.25 + 76 + 48 + 37.5 + 19.5 = 287.25 hours
Credible coverage = 287.25 / 350.4 = 0.820x
```

The plan does not credibly add up even though its nominal estimates exceed the
target.

## Independent contingency path

The team adds a cross-cutting detection and recovery path:

- reduce median time to detect;
- automate safe mitigation;
- improve incident command and recovery rehearsal;
- pre-position recovery capacity.

This path could reduce downtime across several cause families, so its estimated
45 credible hours overlaps the primary interventions. It cannot simply be
added to every cause estimate.

Instead, the team models scenarios:

| Scenario | Primary path | Recovery contingency | Combined credible reduction |
|---|---:|---:|---:|
| Primary interventions perform as expected | 287.25h | 35h non-overlapping residual benefit | 322.25h |
| Deployment and dependency work outperform | 325h | 28h residual benefit | 353h |
| Capacity work misses; recovery performs strongly | 270h | 60h residual benefit | 330h |

The stack still has material risk. The outcome owner must either add another
credible path, accept a staged target, or improve confidence through smaller
experiments before committing to 99%.

## Why 2x is not literal here

The target requires removing 350.4 of the available 438 downtime hours.
Two times non-overlapping coverage would require 700.8 hours, which exceeds the
entire loss pool.

The correct response is not fake arithmetic. Use:

- independent solution paths;
- scenario coverage;
- cause-specific prevention;
- cross-cutting containment and recovery;
- staged confidence-building work.

## Illustrative learning loop

Suppose progressive delivery realizes 135 hours rather than the predicted 125.
Analysis shows that rollback automation also shortened incidents previously
classified under capacity and dependency failures.

That positive variance is not blindly added again. The team:

1. accepts the measured 135-hour gain;
2. reduces remaining capacity and dependency estimates for overlap;
3. raises confidence in automation-based recovery;
4. recalculates the remaining downtime target;
5. reorders the stack.

## Pitfalls demonstrated

- Percentage points conceal the real reduction required.
- Nominal gains can exceed the target while credible gains do not.
- Cross-cutting recovery work overlaps cause-specific prevention.
- Near a ceiling, redundant paths replace impossible 2x arithmetic.
- Positive variance can reduce remaining opportunity through overlap.
