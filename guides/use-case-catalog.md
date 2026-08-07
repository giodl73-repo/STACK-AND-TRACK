# Generic Use-Case Catalog

Stack & Track applies whenever a measurable target depends on multiple
uncertain interventions whose actual impact must be learned over time.

All examples below are generic public-safe patterns. They do not describe a
named organization, product, project, or historical internal program.

## Web-service latency

```text
Baseline: 20 seconds
Target: 15 seconds
Required reduction: 5 seconds
```

Possible stack:

- remove serial service calls;
- reduce payload size;
- reuse connections;
- cache stable computations;
- move non-critical work outside the request path;
- simplify authorization or policy evaluation.

Useful lessons:

- predicted gains overlap when the bottleneck moves;
- a faster average may hide tail or cohort regressions;
- staged rollout means global impact arrives gradually;
- a hotfix consumes build, test, rollout, and confirmation time.

## Application or page startup

Possible metrics:

- p80 or p95 time to interactive;
- first useful paint;
- form or workspace boot;
- successful startup rate.

Possible stack:

- delay non-critical shell work;
- cache command or navigation state;
- move secondary API calls after first interaction;
- reorder initialization steps;
- reduce script evaluation and allocation;
- prefetch essential data.

Useful lessons:

- several small critical-path gains can add up;
- positive variance may reduce opportunity in later items;
- no-gain work should be dismissed without erasing the learning;
- rollout method and acceptance date belong in the ledger.

## Mobile data synchronization

```text
Baseline: 100 seconds
Target: 45 seconds
North-star scenario: 30 seconds
```

Possible stack:

- reduce delta-query volume;
- avoid redundant relationship expansion;
- compress synchronization payloads;
- parallelize independent fetches within capacity limits;
- cache stable reference data.

Useful lessons:

- network and device cohorts require separate evidence;
- an optimization may improve median behavior while regressing large or
  low-bandwidth datasets;
- reliability deadlines may temporarily outrank pure speed work;
- delayed field evidence changes confidence and priority.

## Authoring or editing responsiveness

Possible metrics:

- time to open an editor;
- time until the document is editable;
- command response latency;
- save or publish latency.

Possible stack:

- remove excessive telemetry from the critical path;
- cache configuration or feature state;
- defer deep analysis until after first edit;
- reduce repeated data-flow or dependency analysis;
- add regression monitors.

Useful lessons:

- measurement instrumentation may be a prerequisite rather than outcome gain;
- shipped regressions can erase several successful improvements;
- repair and prevention work must enter the same impact ledger;
- the target curve should reserve time for monitor-driven discovery.

## Service reliability

```text
Baseline: 99.65%
Target: 99.90%
North star: 99.99%
```

Possible stack:

- remove dominant startup failures;
- improve dependency timeout and retry behavior;
- add safe degradation;
- reduce change failure rate;
- shorten detection and rollback time.

Useful lessons:

- use downtime or failed-session units near a percentage ceiling;
- independent protection layers may be more credible than additive percentage
  points;
- severe low-frequency risks cannot be averaged away;
- accepted reliability gains require longer confirmation windows.

## Customer satisfaction

Possible metrics:

- dissatisfaction rate;
- satisfaction score;
- task-completion success;
- customer-reported friction.

Possible stack:

- identify the largest dissatisfaction causes;
- segment affected customer cohorts;
- assign cause owners;
- test mitigations;
- validate whether the measured customer experience changes.

Useful lessons:

- activity and feature delivery are weak proxies for satisfaction;
- qualitative evidence can identify causes before numerical attribution is
  mature;
- a global score can conceal a harmed customer segment;
- survey and behavioral evidence may operate on different clocks.

## Technology migration

Possible outcomes:

- preserve or improve latency while moving to a new portal;
- maintain reliability while changing runtime or storage technology;
- reduce operating cost without shifting toil or customer burden.

Possible stack:

- audit transferable mechanisms;
- stop stranded work;
- build required adapters and dual-run support;
- repair scenarios regressed by the new technology;
- roll out by cohort;
- retire the old path only after outcome confirmation.

Useful lessons:

- migration completion is not outcome attainment;
- a new technology may create wins and regressions simultaneously;
- leadership changes require a new goal version and coverage decision;
- integration work consumes capacity without automatically producing outcome
  gain.

## Deployment safety and regression recovery

Possible metrics:

- change failure rate;
- customer-impact minutes;
- rollback time;
- percentage of population safely exposed.

Possible stack:

- improve canary evidence;
- shorten rollback;
- add scenario and cohort monitors;
- reduce release coupling;
- pre-vet contingency interventions.

Useful lessons:

- smaller cohorts reduce blast radius but deserve identical protections;
- global averages may hide severe local harm;
- regression reserve preserves the required rate after a rollback;
- surplus option coverage must not become surplus concurrent deployment.

## Cost and efficiency

Possible metrics:

- cost per transaction;
- infrastructure cost per active user;
- recurring engineering hours lost;
- queue or compute capacity recovered.

Possible stack:

- remove redundant computation;
- reduce over-fetching or storage churn;
- improve batching;
- eliminate recurring manual recovery;
- retire duplicate systems.

Useful lessons:

- gross savings must reconcile to net savings;
- displaced cost, risk, latency, and toil are guardrails;
- architectural prerequisites should not receive invented impact;
- benefit confirmation may lag implementation by a billing cycle or quarter.
