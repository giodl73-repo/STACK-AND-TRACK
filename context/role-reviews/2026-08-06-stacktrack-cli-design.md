# StackTrack CLI Design Role Review

Date: 2026-08-06

Reviewed artifact:

- `cli/DESIGN.md`
- `cli/PAPER_PROTOTYPE.md`
- `cli/ADMISSION_TEST.md`
- `cli/ADMISSION_TEST_OBSERVATION.md`

Review scope: the proposed read-only CLI design and its Software Admission Gate
disposition. No implementation code was reviewed or admitted.

## Parliament review

| Role | Result | Finding or reason |
|---|---|---|
| Outcome Steward | pass | `status` begins with goal version, baseline, current, target, unit, horizon, measurement source, and owner rather than task completion. |
| Stack Accountant | pass | The CLI recomputes only explicit formulas, exposes insufficient and fragile coverage, and emits an opaque-calculation finding rather than inventing overlap arithmetic. |
| Pareto Prioritizer | pass | V1 reports evidence and coverage but does not rank, start, stop, or reorder candidates. |
| Attribution Skeptic | pass | The CLI does not infer causality or convert shipment, correlation, or dashboard movement into accepted gain. |
| Learning Loop Steward | pass | Passed checkpoints with missing evidence and stale snapshots are visible, while result acceptance and re-stacking remain human actions. |
| Constraint Realist | pass | The design accounts for timing, exposure, rollback evidence, confirmation windows, bounded metrics, and non-reproducible interactions without adding a calculation language. |
| Practitioner Advocate | finding | A CLI could become specialist ceremony before repeated need is proven. Closed by keeping documents and spreadsheets authoritative and blocking implementation until independent repeated-use evidence exists. |

## Stakeholder review

| Role | Result | Finding or reason |
|---|---|---|
| Outcome Owner | pass | The CLI cannot approve a target, accept a result, waive a guardrail, or revise a commitment. |
| Delivery Team | pass | Estimates remain labeled and uncertain; warnings do not automatically become organizational policy. |
| Operator | pass | Guardrail breaches, rollout exposure, late confirmation, and rollback evidence remain visible. |
| Affected User | pass | Cohort breaches cannot be suppressed by a favorable global result. |
| AI Practitioner | pass | Stable JSON findings give AI an inspectable deterministic surface without granting decision authority. |

## Assurance review

| Role | Result | Finding or reason |
|---|---|---|
| Goodhart Auditor | finding | A single health score would invite gaming and hide uncertainty. Closed by prohibiting scores and reporting evidence-linked facts and findings. |
| Safety and Externalities Steward | pass | The CLI preserves guardrails and cohort harm, performs no network access, and does not recommend schedule recovery through weakened safety. |

## Editorial review

| Role | Result | Finding or reason |
|---|---|---|
| Numeracy Checker | finding | Free-text overlap and dependency descriptions cannot support trustworthy recomputation. Closed by limiting checks to explicit inputs and adding `STT-STACK-OPAQUE`. |
| Scope Keeper | finding | Calendar integration, hosted dashboards, mutation, history, plugins, and project scheduling would turn a checker into a platform. Closed by explicit V1 non-goals and defers. |
| Clarity Editor | pass | The primary commands are `lint`, `status`, and `explain`; status uses canonical Stack & Track vocabulary. |

## Paper-prototype follow-up

| Role | Result | Learning applied |
|---|---|---|
| Stack Accountant | pass | The example visibly separates a 1.27x next-checkpoint ratio from an insufficient 0.86x horizon ratio. |
| Learning Loop Steward | pass | A copied initial rate is challenged and recalculated from the current status date. |
| Goodhart Auditor | pass | Conflicting temporal and horizon evidence remains visible rather than becoming one status color. |
| Numeracy Checker | pass | Two seconds over 79 remaining days reproduces as 0.1772 seconds per week, exposing the stale 0.1667 supplied rate. |
| Scope Keeper | pass | Evidence age is reported without inventing a universal staleness policy absent from the schema. |

## Admission-test follow-up

| Role | Result | Learning applied |
|---|---|---|
| Practitioner Advocate | pass | The test asks whether existing tools already solve the problem and explicitly rejects preference for a CLI as admission evidence. |
| Delivery Team | pass | Participants make accountable conclusions while deterministic calculations remain separately observable. |
| AI Practitioner | pass | Normal AI use is allowed and recorded so the CLI must demonstrate value beyond realistic AI-assisted practice. |
| Goodhart Auditor | pass | Admission depends on repeated consequential friction, not participant enthusiasm or an aggregate score. |
| Safety and Externalities Steward | pass | Raw prompts and workplace portfolios remain private; public reporting is anonymized and transformed. |
| Numeracy Checker | pass | The two-cycle answer key reproduces current and remaining rates, coverage, schedule, and cohort conditions. |

## Finding ledger

| Severity | Finding | Owner | Closure |
|---|---|---|---|
| major | Tooling could be admitted from enthusiasm rather than repeated practitioner friction | maintainer | Implementation remains blocked until independent repeated-use evidence closes Software Admission condition 1 |
| major | A health score could replace evidence review and become a Goodhart target | maintainer | Scores, grades, and approval language are prohibited |
| major | The CLI could claim arithmetic verification where overlap semantics are opaque | maintainer | Recompute only explicit formulas and emit `STT-STACK-OPAQUE` otherwise |
| major | Schedule linting could expand into project management and calendar integration | maintainer | V1 is limited to declared outcome checkpoints and candidate evidence dates |
| major | CI warnings could silently become decision policy | maintainer | Warnings do not fail by default; callers opt into `--strict` |
| major | A hosted checker could expose private portfolio data | maintainer | V1 is local-only, has no telemetry, and does not follow evidence references |
| major | A universal evidence-age threshold would encode unsupported policy | maintainer | V1 reports age as a fact until a portfolio declares its cadence |
| major | A covered next checkpoint could create a falsely positive overall status | maintainer | Status reports next-checkpoint temporal coverage and horizon coverage independently |
| major | CLI enthusiasm or stated preference could be mistaken for evidence of need | maintainer | Admission requires repeated consequential error or material effort across independent participants |
| major | A one-time comprehension task would not prove repeated operating friction | maintainer | Every participant performs two dated review cycles |
| major | Prohibiting AI would create an unrealistic comparison | maintainer | Participants may use their normal AI workflow and its outcome is recorded |

## Dissent and defers

- **Practitioner Advocate dissent:** the design is credible, but no CLI should
  be described as necessary until independent users repeatedly encounter the
  named friction.
- **Defer:** implementation language, packaging, installation, and release
  channels belong to the implementation work package after admission.
- **Defer:** calendar, backlog, telemetry, history, and hosted integrations
  require separate evidence and role review.
- **Defer:** a machine-readable finding schema may be promoted only after the
  first evidence slice demonstrates stable consumers.

## Disposition

No critical or major finding remains against the **design**.

The CLI design is at role-review fixed point for independent usability testing.
The Software Admission Gate remains open because repeated unmet practitioner
need has not yet been demonstrated. No substantive implementation code is
admitted by this review.
