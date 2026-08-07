# Fundamentals Example: Recurring Engineering Loss

This is an illustrative example. It shows how to manage architecture and
fundamentals work without inventing impact points or pretending that milestones
are realized outcomes.

## Outcome

A platform team spends approximately 2,000 engineering hours per quarter on
recurring structural loss: incident recovery, manual environment repair,
release rework, unsupported dependencies, and repeated diagnosis.

```text
Baseline: 2,000 recurring-loss hours per quarter
Target: 1,200 recurring-loss hours per quarter
Required reduction: 800 hours per quarter
Measurement: incident, support, build, release, and operational work records
```

Guardrails:

- low-frequency severe risks remain in a separate exposure register;
- product delivery, security, reliability, and affected-team outcomes cannot
  materially regress;
- hours are not treated as interchangeable when severity or skill scarcity
  differs;
- reduced reporting or recategorization cannot create an apparent gain.

## Structural loss stack

| Structural cause | Recurring loss per quarter | Observable evidence |
|---|---:|---|
| Unsupported shared client and compatibility repairs | 550h | Support cases, incident work, migration rework |
| Configuration divergence across environments | 420h | Drift repair, failed releases, environment diagnosis |
| Manual environment recovery | 360h | Recovery labor and elapsed restoration time |
| Non-reproducible builds and release artifacts | 300h | Rebuilds, failed promotions, investigation |
| Ownership and diagnostic gaps | 220h | Routing delay, repeated diagnosis, escalations |
| Other recurring structural loss | 150h | Reviewed work records |
| **Total** | **2,000h** | |

This stack does not claim that hours capture every form of risk. Severe
low-frequency exposure remains a guardrail and may independently justify work.

## Candidate intervention stack

| ID | Fundamental intervention | Predicted reduction | Confidence | Confidence-adjusted impact | Time to learning | Important overlap |
|---|---|---:|---:|---:|---|---|
| F-01 | Replace unsupported shared client behind a stable boundary | 400h | 70% | 280h | two quarters | Overlaps ownership and diagnosis improvements |
| F-02 | Define and enforce one configuration schema | 300h | 75% | 225h | one quarter | Overlaps release reproducibility |
| F-03 | Make builds and promoted artifacts reproducible | 250h | 80% | 200h | one quarter | Overlaps configuration drift |
| F-04 | Automate safe environment recovery | 240h | 65% | 156h | one to two quarters | Overlaps diagnostic improvements |
| F-05 | Establish ownership and diagnostic contracts | 180h | 70% | 126h | one quarter | Reduces time inside several cause families |
| F-06 | Introduce an explicit architecture boundary for future replacements | 250h | 50% | 125h | two to three quarters | Benefits partly depend on F-01 |

Nominal impact:

```text
400 + 300 + 250 + 240 + 180 + 250 = 1,620 hours
Nominal coverage = 1,620 / 800 = 2.025x
```

Confidence-adjusted impact before overlap:

```text
280 + 225 + 200 + 156 + 126 + 125 = 1,112 hours
```

The team estimates 120 hours of overlap:

```text
Credible planned impact = 1,112 - 120 = 992 hours
Stack Coverage Ratio = 992 / 800 = 1.24x
```

The stack has more than 2x nominal opportunity but only 1.24x credible coverage.

## Evidence ladder

Fundamentals work often produces evidence before the lagging outcome is
measurable.

| Level | Evidence | What it can support |
|---|---|---|
| 1 | Design or contract accepted | Mechanism is defined, not yet effective |
| 2 | Implementation and tests complete | Mechanism exists under tested conditions |
| 3 | Shipped and adopted | Exposure has begun, result remains provisional |
| 4 | Structural failure mode is absent or impossible in observed use | Strong mechanism evidence |
| 5 | Recurring loss falls in the authoritative measurement window | Provisional outcome gain |
| 6 | Reduction persists through confirmation | Accepted realized gain |

Do not convert Levels 1 through 4 directly into saved hours.

## Pareto selection

The first portfolio is F-02, F-03, and a bounded discovery slice for F-01.

- F-02 and F-03 can produce learning within one quarter.
- Together they address 720 baseline loss hours before overlap.
- F-01 has the largest potential contribution but a longer learning window and
  higher migration uncertainty.
- F-04 through F-06 remain visible alternatives and contingencies.

## Illustrative results

After a complete quarter and confirmation review:

| ID | Current predicted reduction | Accepted realized reduction | Variance | Explanation |
|---|---:|---:|---:|---|
| F-02 | 300h | 260h | -40h | One legacy environment remains outside schema enforcement |
| F-03 | 250h | 180h | -70h | Build failures fell, but promotion failures moved to test-environment setup |
| F-01 discovery | no accepted gain | no accepted gain | n/a | The slice exposed three undocumented consumers and changed migration scope |

Measured portfolio result:

```text
Accepted reduction = 2,000 - 1,560 = 440 hours
Current recurring loss = 1,560 hours per quarter
Outstanding reduction = 1,560 - 1,200 = 360 hours
```

F-02 and F-03 attribution shares reconcile to the measured 440-hour portfolio
movement. F-01 discovery is valuable evidence but receives no realized hours.

## Learning propagation

The legacy environment found by F-02 lowers confidence in any intervention
assuming complete environment inventory.

The bottleneck movement in F-03 raises the priority of test-environment
automation and lowers the expected value of additional build-only work.

The undocumented consumers found by F-01:

- increase its estimated effort and time to learning;
- lower its near-term confidence;
- increase the value of F-06's stable architecture boundary;
- create a new candidate for automated consumer discovery.

## Re-stack

The team now has an outstanding target of 360 hours. It revises the remaining
credible portfolio:

| Candidate | Revised credible impact |
|---|---:|
| Complete F-02 legacy-environment coverage | 50h |
| Test-environment automation discovered through F-03 | 140h |
| F-04 safe environment recovery | 150h |
| F-05 ownership and diagnostic contracts | 100h |
| F-06 architecture boundary | 105h |
| Automated consumer discovery | 55h |
| **Total before overlap** | **600h** |

After 90 hours of estimated overlap:

```text
Credible remaining impact = 510 hours
Remaining coverage = 510 / 360 = 1.42x
```

The target remains supported, and priorities change toward the newly discovered
test-environment and inventory constraints.

## Low-frequency severe risk

Recurring hours should not erase severe but rare exposure. Maintain a separate
risk stack containing:

- failure mode and consequence;
- exposure and affected cohorts;
- likelihood range and uncertainty;
- controls and detection;
- time to recover;
- decision authority.

Do not combine risk scores and recurring hours into a false common unit. A
safety, security, data-integrity, or catastrophic reliability risk may override
the hour-based Pareto order.

## Pitfalls demonstrated

- Story points and completed architecture milestones are not impact.
- Leading evidence can support confidence without becoming realized gain.
- Long time to learning changes priority but does not make fundamentals
  unmeasurable.
- Bottlenecks and valuable interventions change as foundational work lands.
- Recurring-loss optimization cannot dismiss severe low-frequency risk.
