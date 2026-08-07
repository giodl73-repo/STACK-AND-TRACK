# Self-Service Usability Test

This test determines whether a new practitioner can use the Release 0.1
materials without verbal reconstruction of missing steps.

## Release gates

### Release 0.1

At least one person other than the author completes the quick start using a real
or clearly labeled illustrative outcome.

### Release 1.0

At least three practitioners from different domains complete the test, and no
unresolved critical or major usability finding remains.

## Participant materials

Give the participant only:

- repository `README.md`;
- `QUICKSTART.md`;
- the three core templates;
- examples if the participant chooses to open them.

Do not provide the facilitator guide during the self-service test.

## Observer rules

The observer may:

- explain the purpose of the test;
- answer repository-navigation questions;
- record behavior and direct quotations;
- stop the session for safety or confidentiality.

The observer may not:

- explain Stack & Track terminology;
- suggest candidate interventions;
- repair arithmetic;
- point out missing fields;
- tell the participant which template to use next;
- answer "what does the method want here?" during the test.

If help is required, record the question and assistance. The participant may
continue, but the material has a usability finding.

## Test scenario

Prefer a real outcome the participant understands. Remove or generalize
sensitive information before retaining artifacts.

If no real outcome is appropriate, use:

```text
Reduce a ten-second process to eight seconds in twelve weeks without increasing
error rate or cost by more than five percent.
```

## Tasks

Ask the participant to:

1. write the outcome statement;
2. calculate required impact;
3. create at least three candidates;
4. label confidence, dependencies, and overlap;
5. determine whether the stack credibly adds up;
6. choose a first portfolio;
7. identify the first trustworthy evidence date;
8. explain the difference between shipped, provisional, and accepted gain;
9. describe what happens after a result misses its prediction;
10. state what leadership should learn at the next monthly review.

## Observe

Record:

- time to first valid outcome statement;
- time to first coverage calculation;
- fields skipped or misunderstood;
- arithmetic errors;
- unsupported assumptions;
- double counting;
- whether unknowns remain unknown;
- whether activity is mistaken for impact;
- whether the participant can identify a re-stack trigger;
- where the participant requests help;
- which material they search for but cannot find.

## Success criteria

Release 0.1 passes when the participant can, without method coaching:

- produce a complete or explicitly incomplete outcome statement;
- avoid inventing missing measurements;
- create a candidate stack;
- explain whether coverage is sufficient;
- preserve overlap, uncertainty, and guardrails;
- separate shipment from realized gain;
- describe prediction, realization, variance, learning, and re-stacking.

The stack does not need to be execution-ready. Correctly identifying
insufficient information or coverage is success.

## Findings

Classify each usability issue:

| Severity | Meaning |
|---|---|
| critical | Material causes a dangerous, irreversible, or fundamentally false decision |
| major | Participant cannot complete a core method step without coaching |
| minor | Participant completes the step but experiences avoidable confusion or delay |

Every finding records:

- artifact and section;
- observed behavior;
- participant question or quotation;
- consequence;
- proposed correction;
- owner;
- closure condition.

## Privacy

Do not publish participant names, internal targets, operational data, customer
information, or proprietary candidate details without explicit permission.
Public test reports should use anonymized observations and synthetic examples.

## Test disposition

Use [`templates/practitioner-feedback.md`](../templates/practitioner-feedback.md)
and record:

```text
Release gate:
Participant domain:
Completed without coaching:
Critical findings:
Major findings:
Minor findings:
Disposition: pass / finding / defer
```
