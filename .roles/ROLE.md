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

## Synthetic corporate panel

Panel roles simulate practitioner perspectives for material review. They are
disclosed simulations, not real employees, governance votes, expert testimony,
or substitutes for independent usability testing.

| File | Role | Primary tension |
|---|---|---|
| `panel/junior-software-engineer.md` | Junior Software Engineer | Learnable method vs. unfamiliar planning language |
| `panel/frontend-performance-engineer.md` | Frontend Performance Engineer | User-perceived speed vs. aggregate technical metrics |
| `panel/senior-backend-engineer.md` | Senior Backend Engineer | Useful estimates vs. distributed-system uncertainty |
| `panel/principal-systems-engineer.md` | Principal Systems Engineer | Portfolio simplification vs. nonlinear architecture |
| `panel/site-reliability-engineer.md` | Site Reliability Engineer | Fast reliability learning vs. rare-event evidence |
| `panel/data-platform-engineer.md` | Data Platform Engineer | Timely decisions vs. trustworthy measurement |
| `panel/security-engineer.md` | Security Engineer | Pareto efficiency vs. severe low-frequency exposure |
| `panel/ml-engineer.md` | ML Engineer | Experimental iteration vs. drift and delayed effects |
| `panel/technical-product-manager.md` | Technical Product Manager | Executive clarity vs. methodological detail |
| `panel/technical-program-manager.md` | Technical Program Manager | Cross-team timing vs. outcome accountability |
| `panel/engineering-manager.md` | Engineering Manager | Impact ambition vs. team capacity and sustainability |
| `panel/customer-escalation-lead.md` | Customer Escalation Lead | Quantified portfolio vs. qualitative customer pain |

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

Synthetic panel review may run after parliament and before final editorial
review. Panel findings follow the same severity and closure contract but do not
replace required stakeholder or independent-human review.

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
