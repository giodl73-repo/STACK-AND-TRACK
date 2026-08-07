# STACK-AND-TRACK Role Index

These roles govern the methodology, examples, templates, AI guidance, and any
future software. They are adversarial by design.

## Parliament

| File | Role | Primary tension |
|---|---|---|
| `parliament/outcome-steward.md` | Outcome Steward | Clear measurable outcome vs. attractive but ambiguous ambition |
| `parliament/stack-accountant.md` | Stack Accountant | Sufficient impact coverage vs. optimistic arithmetic |
| `parliament/pareto-prioritizer.md` | Pareto Prioritizer | Vital few vs. easy or politically favored work |
| `parliament/attribution-skeptic.md` | Attribution Skeptic | Credible realized gain vs. coincidence and measurement noise |
| `parliament/learning-loop-steward.md` | Learning Loop Steward | Adaptive forecasting vs. static plans and hidden misses |
| `parliament/constraint-realist.md` | Constraint Realist | Ambitious surplus coverage vs. physical and system limits |
| `parliament/practitioner-advocate.md` | Practitioner Advocate | Methodological rigor vs. a process people cannot sustain |

## Editorial

| File | Role | Primary tension |
|---|---|---|
| `editorial/numeracy-checker.md` | Numeracy Checker | Honest units and arithmetic vs. persuasive presentation |
| `editorial/scope-keeper.md` | Scope Keeper | Portable methodology vs. domain-specific overreach |
| `editorial/clarity-editor.md` | Clarity Editor | Precise language vs. jargon and ceremony |

## Stakeholders

| File | Role | Primary tension |
|---|---|---|
| `stakeholders/outcome-owner.md` | Outcome Owner | Committing to a result vs. controlling every intervention |
| `stakeholders/delivery-team.md` | Delivery Team | Accountability for gains vs. estimates treated as promises |
| `stakeholders/operator.md` | Operator | Improvement velocity vs. operational safety and workload |
| `stakeholders/affected-user.md` | Affected User | Aggregate improvement vs. hidden tail harm |
| `stakeholders/ai-practitioner.md` | AI Practitioner | Useful automation vs. fabricated precision and authority |

## Assurance

| File | Role | Primary tension |
|---|---|---|
| `assurance/goodhart-auditor.md` | Goodhart Auditor | Metric improvement vs. real outcome improvement |
| `assurance/safety-and-externalities-steward.md` | Safety and Externalities Steward | Local gain vs. shifted cost, risk, or harm |

## Review contract

Roles return `pass`, `finding`, or `defer`. A finding records severity
(`critical`, `major`, or `minor`), affected artifact, owner, and closure
condition. A defer names the later artifact or decision that will resolve it.

A change reaches fixed point when:

- no critical or major actionable finding remains;
- every defer has an explicit destination;
- dissent remains visible;
- parliament review precedes editorial review;
- assurance roles explicitly pass affected material.

## Required review order

1. Outcome Steward
2. Stack Accountant
3. Pareto Prioritizer
4. Attribution Skeptic
5. Learning Loop Steward
6. Constraint Realist
7. Practitioner Advocate
8. Relevant stakeholders
9. Assurance
10. Editorial

## Software Admission Gate

No substantive implementation code is admitted until all roles reach fixed
point on a work package proving that software:

1. solves a repeated practitioner problem that documents, spreadsheets, issue
   trackers, or AI prompts do not solve adequately;
2. preserves transparent arithmetic and human review;
3. remains optional and uses portable data;
4. does not turn estimates into false precision;
5. has a bounded maintenance and validation plan.

Rust is the preferred language if a deterministic local tool is admitted, but
language preference is not evidence that software is needed.
