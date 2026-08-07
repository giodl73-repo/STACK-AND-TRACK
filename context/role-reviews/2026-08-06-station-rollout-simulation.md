# Population-Weighted Station Rollout Simulation Role Review

Date: 2026-08-06

Reviewed artifacts:

- `simulations/2026-08-06-six-month-station-rollout.md`
- `simulations/data/six-month-station-rollout-20260806.json`
- `guides/progress-curves.md`
- `templates/progress-curve.md`

## Parliament review

| Role | Result | Note |
|---|---|---|
| Outcome Steward | pass | Baseline, target, unit, population denominator, horizon, evidence source, and station guardrails are explicit. |
| Stack Accountant | pass | Full-population potential, confidence adjustment, overlap reserve, station exposure, rollback, and accepted global gain remain separate. |
| Pareto Prioritizer | pass | S-05 activates as contingency after a specific rollout slip; S-06 through S-08 remain unstarted options. |
| Attribution Skeptic | pass | Build completion receives no full-result credit, and station gains enter only after local evidence windows pass. |
| Learning Loop Steward | pass | The S-04 regression changes rollout timing, triggers a hotfix, activates contingency, and lowers confidence despite an ahead-of-plan total. |
| Constraint Realist | pass | Six-week rollout time, a two-rollout WIP limit, repeated hotfix gates, and late population concentration constrain the arithmetic. |
| Practitioner Advocate | pass | The station table, weekly curve, reusable guide, and optional template section expose the consequence without requiring custom software. |

## Stakeholder and synthetic panel review

| Role | Result | Note |
|---|---|---|
| Operator | pass | The hotfix freezes and repeats rollout stages rather than bypassing safety controls to recover schedule. |
| Affected User | pass | Lower-population stations retain equal guardrails, and station harm overrides a small favorable global average. |
| Technical Program Manager | pass | First-station, Europe, United States, full-exposure, hotfix, and confirmation dates fit inside the 26-week horizon. |
| Engineering Manager | pass | Contingency starts within a two-rollout WIP limit; surplus coverage does not become surplus concurrent work. |
| Data Platform Engineer | pass | The simulation names the population denominator and avoids averaging regional p95 values into a false global p95. |

## Assurance and editorial review

| Role | Result | Note |
|---|---|---|
| Goodhart Auditor | pass | A 0.113-second global movement cannot hide a 2.0-second station regression; cohort guardrails control the decision. |
| Safety and Externalities Steward | pass | Smaller stations are lower-blast-radius canaries, not populations with weaker protections or acceptable harm. |
| Numeracy Checker | pass | Population weights sum to 100%; exposure-weighted gains, regression arithmetic, weekly totals, and baseline-to-target values reproduce. |
| Scope Keeper | pass | The fixture is disclosed as synthetic and uses a population-weighted mean rather than claiming a valid global percentile aggregation. |
| Clarity Editor | pass | Technical completion, rollout exposure, accepted impact, regression, hotfix, and confirmation are distinct. |

## Finding ledger

| Severity | Finding | Owner | Closure |
|---|---|---|---|
| major | Sequencing lower-population regions first could imply that their users are acceptable bug sinks | maintainer | Closed by requiring identical guardrails, stop conditions, rollback rights, and explicit non-sacrificial language |
| major | A global average could conceal severe regional harm | maintainer | Closed with station-level outcome and guardrail telemetry that overrides aggregate movement |
| major | Regional p95 values could be incorrectly averaged | maintainer | Closed by defining the arithmetic metric as a population-weighted mean and treating percentiles separately |
| major | Hotfix coding time could be mistaken for total recovery time | maintainer | Closed by repeating rollout stages and moving S-04 full exposure from week 16 to week 19 |
| minor | Uniform local effect is simpler than real station traffic and dependency behavior | practitioner | Preserved as a disclosed limitation of the synthetic fixture |

## Disposition

No critical or major actionable simulated finding remains. The station rollout
simulation is accepted at role-review fixed point.

The simulation does not close the independent-human usability gate or the
Software Admission Gate.
