# Transformed Composite: API Reliability

## Disclosure

This transformed composite combines and alters generic service-reliability,
deployment, dependency, and recovery patterns.

## Outcome in loss units

```text
Traffic basis: 1,000,000 representative requests
Baseline reliability: 99.80%
Baseline failures: 2,000 per million
Target reliability: 99.95%
Target failures: 500 per million
Required reduction: 1,500 failures per million
```

Guardrails:

- no critical operation or customer cohort falls below baseline;
- retry traffic and cost remain bounded;
- reporting completeness does not decline;
- operator recovery load remains sustainable.

## Independent-path stack

| ID | Intervention | Predicted reduction | Confidence | Primary path |
|---|---|---:|---:|---|
| R-01 | Progressive delivery and automatic rollback | 600 | 85% | Prevention |
| R-02 | Dependency isolation and graceful degradation | 500 | 80% | Containment |
| R-03 | Adaptive capacity protection | 400 | 70% | Containment |
| R-04 | Faster detection and safe mitigation | 350 | 75% | Recovery |
| R-05 | Tested state recovery | 300 | 65% | Recovery |
| R-06 | Independent regional failover rehearsal | 300 | 65% | Resilience |

```text
Nominal impact = 2,450 failures per million
Nominal coverage = 2,450 / 1,500 = 1.63x
Confidence-adjusted impact = 1,842.5
Overlap and dependency deduction = 240
Credible impact = 1,602.5
Stack Coverage Ratio = 1.07x
```

Literal 2x non-overlapping coverage would require eliminating 3,000 failures
from a baseline containing only 2,000. Independent paths and scenario
resilience replace impossible arithmetic.

## Results

| ID | Accepted reduction | Learning |
|---|---:|---|
| R-01 | 500 | Rollback prevented long incidents but not all deployment failures |
| R-02 | 450 | Isolation worked; one shared control dependency remained |
| R-03 | 300 | Protection helped peaks but added bounded retry cost |
| R-04 | 250 | Detection improved; some mitigation still required operators |
| R-05 | 150 | Recovery evidence was narrower than expected |
| R-06 | 100 | Failover passed but covered only part of the failure pool |

```text
Accepted reduction = 1,750 failures per million
Final failures = 2,000 - 1,750 = 250 per million
Final reliability = 99.975%
```

## Scenario regression

During R-03 testing, aggressive retries improve the global success rate but
worsen tail latency and duplicate requests for a low-volume write cohort. The
first configuration is rejected. A bounded retry policy is tested again and
receives only the accepted 300-failure reduction shown above.

## Confirmation

The target is not accepted from a short quiet window. Confirmation spans:

- ordinary traffic;
- a planned high-load event;
- at least one dependency disturbance;
- a deployment and rollback exercise;
- station and critical-operation cohort review.

## Lessons

- Failure units make the bounded target and available loss pool visible.
- Independent prevention, containment, recovery, and resilience paths provide
  credible reserve.
- A global reliability gain cannot waive retry, tail, or cohort guardrails.
- High-reliability results require longer and more varied confirmation.
