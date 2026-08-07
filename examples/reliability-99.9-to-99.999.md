# High Reliability Example: 99.9% to 99.999%

This is an illustrative example. It uses a 365-day year and does not describe a
real service.

## Translate the target into downtime

```text
Minutes per year = 365 x 24 x 60 = 525,600
Downtime at 99.9% = 525,600 x 0.001 = 525.6 minutes
Downtime at 99.999% = 525,600 x 0.00001 = 5.256 minutes
Required reduction = 525.6 - 5.256 = 520.344 minutes
```

The target removes 99% of current downtime:

```text
520.344 / 525.6 = 99%
```

This is not an ordinary four-percentage-point improvement. Each additional nine
requires an order-of-magnitude reduction in the remaining loss.

## Current loss stack

The annual downtime categories partition the 525.6-minute baseline.

| Incident family | Annual downtime | Share |
|---|---:|---:|
| Deployment and release failures | 160.0m | 30.4% |
| Regional dependency failures | 130.0m | 24.7% |
| Data and control-plane recovery | 90.0m | 17.1% |
| Capacity exhaustion and overload | 70.0m | 13.3% |
| Infrastructure and long-tail causes | 75.6m | 14.4% |
| **Total** | **525.6m** | **100%** |

Guardrails:

- no critical region, tenant class, or customer journey has materially worse
  reliability than the aggregate;
- data integrity and recovery correctness do not regress;
- operational toil and unsafe automation remain within limits;
- incident reporting completeness does not decline;
- cost and delivery tradeoffs remain explicit.

## Why additive stacking is insufficient

At 99.999%, the residual annual loss budget is only 5.256 minutes. Cause-specific
fixes are necessary, but the system also needs independent protective layers.

Adding overlapping predictions such as "prevent 150 minutes" and "recover 100
minutes faster" can count the same incident twice. Model the target as residual
risk passing through layers.

## Layered protection stack

The illustrative target model is:

| Layer | Mechanism | Residual factor | Meaning |
|---|---|---:|---|
| Prevention | Progressive delivery, validation, capacity protection | 0.40 | 40% of baseline bad minutes remain |
| Containment | Cell, region, dependency, and blast-radius isolation | 0.25 | 25% of the previous residual escapes containment |
| Detection and recovery | Automated detection, mitigation, failover, rollback | 0.20 | 20% of the contained residual remains |
| Verification and long-tail removal | Recovery tests, fault injection, rare-cause elimination | 0.50 | Half of the final residual remains |

Combined residual:

```text
0.40 x 0.25 x 0.20 x 0.50 = 0.01
```

Applied to the baseline:

```text
525.6 minutes x 0.01 = 5.256 minutes
```

The model reaches 99.999% exactly, with no contingency. It is mathematically
sufficient but operationally fragile.

## Build independent evidence

Each layer needs its own measurement and failure tests.

| Layer | Leading evidence | Outcome evidence |
|---|---|---|
| Prevention | Change validation coverage, canary rejection, overload protection tests | Bad minutes entering production |
| Containment | Fault-isolation tests, cell evacuation, dependency degradation tests | Customers and regions affected per event |
| Detection and recovery | Detection delay, automated mitigation success, recovery rehearsal | Bad minutes after initial failure |
| Verification and long-tail removal | Fault-injection coverage, recovery correctness, rare-cause closure | Residual annual bad minutes |

Passing a test is evidence that a mechanism exists. It is not automatically
accepted realized availability gain.

## Illustrative variance

After a representative measurement window, prevention leaves 50% of baseline
bad minutes rather than the predicted 40%.

If every other layer performs as predicted:

```text
0.50 x 0.25 x 0.20 x 0.50 = 0.0125
525.6 x 0.0125 = 6.57 minutes
```

The service would miss five nines.

Analysis shows that an unmodeled legacy release path bypassed progressive
delivery. The learning changes the entire stack:

1. prevention confidence falls;
2. the legacy path becomes the highest-priority candidate;
3. containment must improve from a 0.25 residual factor to 0.20 if prevention
   remains at 0.50;
4. release-path inventory becomes a required verification artifact;
5. the target remains provisional until confirmation covers all release paths.

Revised model:

```text
0.50 x 0.20 x 0.20 x 0.50 = 0.01
```

## Rhythm

High reliability combines several clocks:

- continuous service-level measurement;
- event-driven incident and guardrail updates;
- weekly cause and intervention re-stacking;
- monthly outcome-owner review;
- longer confirmation windows for rare-event reliability.

A month with no severe event does not by itself prove five-nines reliability.
Confidence must come from sufficient exposure, fault testing, and sustained
measurement.

## Pitfalls demonstrated

- Additional nines represent multiplicative reductions in residual loss.
- Additive cause and recovery claims can double-count the same downtime.
- A mathematically exact path with no contingency is fragile.
- Leading evidence is not automatically realized availability.
- Rare-event targets require longer confirmation and active fault testing.
- One missed architectural path can invalidate several estimates at once.
