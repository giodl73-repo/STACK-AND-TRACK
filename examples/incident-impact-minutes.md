# Incident Management Example: Customer-Impact Minutes

This is an illustrative example. It demonstrates how to find where the most
pain comes from rather than prioritizing by incident count alone.

## Outcome

```text
Baseline: 10,000 customer-impact minutes per month
Target: 7,000 customer-impact minutes per month
Required reduction: 3,000 customer-impact minutes
Measurement: incident records joined with affected-customer duration
Guardrails: no increase in unreported incidents, operator toil, or severity
```

Customer-impact minutes are illustrative. A real team must define how affected
customers, duration, partial degradation, and missing telemetry are treated.

## Pain stack

| Cause family | Incidents/month | Customer-impact minutes | Share of pain | Repeatability | Preventability |
|---|---:|---:|---:|---|---|
| Authentication token expiry | 3 | 2,800 | 28% | high | high |
| Deployment configuration drift | 8 | 2,200 | 22% | high | high |
| Queue saturation | 2 | 1,800 | 18% | medium | medium |
| Dependency timeouts | 12 | 1,400 | 14% | high | medium |
| Long-tail causes | 25 | 1,800 | 18% | mixed | mixed |
| **Total** | **50** | **10,000** | **100%** | | |

Dependency timeouts are the most frequent cause, but authentication expiry
creates twice as much customer pain per incident.

## Candidate stack

| ID | Intervention | Predicted reduction | Confidence | Credible reduction | Key overlap |
|---|---|---:|---:|---:|---|
| I-01 | Prevent token-expiry failures and add safe renewal | 1,800 | 80% | 1,440 | Recovery improvements may also reduce these minutes |
| I-02 | Detect and block configuration drift before deployment | 1,400 | 75% | 1,050 | Safer deployment reduces some mitigation work |
| I-03 | Add queue protection and load shedding | 1,100 | 70% | 770 | Faster detection changes duration |
| I-04 | Add dependency timeout isolation | 900 | 65% | 585 | Graceful degradation changes impact calculation |
| I-05 | Improve detection and mitigation across top causes | 1,000 | 60% | 600 | Cross-cutting overlap with I-01 through I-04 |
| I-06 | Standardize high-value recovery runbooks | 500 | 50% | 250 | Overlaps I-05 |

Nominal coverage:

```text
1,800 + 1,400 + 1,100 + 900 + 1,000 + 500 = 6,700
Nominal coverage = 6,700 / 3,000 = 2.23x
```

Confidence-adjusted impact before overlap:

```text
1,440 + 1,050 + 770 + 585 + 600 + 250 = 4,695
```

The team estimates 850 customer-impact minutes of overlap, mostly in the
cross-cutting detection and runbook work:

```text
Credible planned impact = 4,695 - 850 = 3,845
Stack Coverage Ratio = 3,845 / 3,000 = 1.28x
```

The plan has strong nominal coverage and modest credible surplus.

## Pareto selection

The first portfolio is I-01, I-02, and a bounded experiment for I-05.

Why:

- I-01 and I-02 address half of total pain.
- Both causes are repeatable and highly preventable.
- I-05 can reveal whether duration reduction is a cheaper complement or merely
  overlaps prevention work.

I-04 is not selected first even though dependency timeouts have the highest
incident count. Their total customer pain is lower.

## Illustrative results

| ID | Predicted reduction | Realized reduction | Variance | Explanation |
|---|---:|---:|---:|---|
| I-01 | 1,800 | 2,000 | +200 | Renewal also prevented secondary retry storms |
| I-02 | 1,400 | 900 | -500 | Drift detection covered only one deployment path |
| I-05 experiment | 1,000 | 300 | -700 | Detection improved, but approval delay dominated mitigation time |

The authoritative monthly metric moves from 10,000 to 6,800 customer-impact
minutes, so the accepted portfolio reduction is 3,200:

```text
Measured portfolio reduction = 10,000 - 6,800 = 3,200 customer-impact minutes
```

The intervention values are attributed shares that reconcile to the measured
portfolio result. They cannot be added independently when incidents,
measurement windows, or mitigation mechanisms overlap.

The target is reached in the illustrative period, but the team must confirm
that incident reporting completeness and operator toil did not worsen.

## Learning propagation

Positive variance from I-01 shows retry amplification was a larger pain source
than expected. Similar retry behavior exists in dependency timeout incidents,
so I-04 is revised to include retry control and its confidence rises.

Negative variance from I-02 shows there are multiple deployment paths. The team
reduces confidence in any intervention assuming a single release pipeline.

The I-05 experiment shows approval delay, not detection, dominates recovery.
I-06 is rewritten around decision authority and pre-approved mitigations rather
than more runbook documentation.

## Re-stack

Even though the monthly target is reached, the team:

1. verifies the result across additional periods;
2. checks reporting completeness and toil guardrails;
3. revises I-04 and I-06 using the new learning;
4. retains the stack in case the gain is not sustained.

## Pitfalls demonstrated

- Incident count alone does not identify the most pain.
- Cross-cutting mitigation work overlaps prevention work.
- A successful experiment can invalidate the proposed solution mechanism.
- Higher-than-expected gains must change related estimates.
- Aggregate improvement still requires reporting, toil, severity, and
  affected-customer checks.
