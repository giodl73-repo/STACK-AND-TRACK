# High-Reliability and Fundamentals Role Review

Date: 2026-08-06

Reviewed artifacts:

- `examples/reliability-99.9-to-99.999.md`
- `examples/fundamentals-recurring-loss.md`
- `examples/README.md`

## Parliament review

| Role | Result | Note |
|---|---|---|
| Outcome Steward | pass | Both examples define baseline, target, required impact, measurement source, horizon, and guardrails. |
| Stack Accountant | pass | Five-nines arithmetic uses multiplicative residual factors; fundamentals arithmetic distinguishes nominal, confidence-adjusted, overlap-adjusted, accepted, and remaining impact. |
| Pareto Prioritizer | pass | High reliability prioritizes protective layers and missing architectural paths; fundamentals balances contribution with time to learning and preserves alternatives. |
| Attribution Skeptic | pass | Leading tests are not converted directly into availability or saved hours, and attributed fundamentals gains reconcile to measured portfolio movement. |
| Learning Loop Steward | pass | A missed release path and a moved test-environment bottleneck both update related estimates and priority across the remaining stack. |
| Constraint Realist | pass | Five nines is modeled as layered residual risk rather than impossible additive 2x coverage; severe low-frequency risks remain separate from recurring-hour arithmetic. |
| Practitioner Advocate | pass | Each example uses a reproducible table and calculation while explaining when domain specialists and longer evidence windows are necessary. |

## Stakeholder review

| Role | Result | Note |
|---|---|---|
| Outcome Owner | pass | Fragile exact coverage requires more evidence or another path rather than an unsupported commitment. |
| Delivery Team | pass | Fundamentals milestones provide useful evidence without forcing teams to claim realized hours before adoption and confirmation. |
| Operator | pass | Recovery correctness, unsafe automation, toil, rollout paths, and operational exposure remain explicit. |
| Affected User | pass | Reliability retains region, tenant, and customer-journey guardrails; fundamentals retains affected-team and severe-risk protection. |
| AI Practitioner | pass | The arithmetic and assumptions are inspectable enough for AI assistance without delegating measurement or decision authority. |

## Assurance review

| Role | Result | Note |
|---|---|---|
| Goodhart Auditor | pass | The examples reject incident-free months as proof, completed fundamentals as savings, reduced reporting as improvement, and hours as a universal value measure. |
| Safety and Externalities Steward | pass | Low-frequency safety, security, data-integrity, and catastrophic reliability risks can override hour-based priority and remain in a separate risk stack. |

## Editorial review

| Role | Result | Note |
|---|---|---|
| Numeracy Checker | pass | Annual downtime, 99% loss reduction, multiplicative residuals, nominal coverage, confidence adjustment, overlap, and remaining coverage reproduce. |
| Scope Keeper | pass | The examples do not claim that Stack & Track replaces reliability architecture, fault testing, risk analysis, or engineering judgment. |
| Clarity Editor | pass | The examples distinguish additive, bounded, multiplicative, structural, leading, provisional, and accepted outcome shapes. |

## Finding ledger

| Severity | Finding | Owner | Closure |
|---|---|---|---|
| major | Additive repair estimates could double-count prevention, containment, and recovery against the same high-reliability incidents | maintainer | Closed by modeling five nines through multiplicative residual protection layers and layer-specific evidence |
| major | Recurring engineering hours could become a false universal value score and hide severe low-frequency risks | maintainer | Closed by limiting hours to recurring loss, preserving explicit guardrails, and maintaining a separate non-combinable severe-risk stack |

## Disposition

No critical or major actionable finding remains. Both examples are accepted at
role-review fixed point.

Rust tooling remains deferred under the Software Admission Gate.
