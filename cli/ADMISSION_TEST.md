# StackTrack Software Admission Test

Status: ready to run; no participant evidence recorded

## Purpose

This test determines whether a deterministic CLI solves repeated practitioner
problems that documents, spreadsheets, calculators, issue trackers, and AI
assistance do not solve adequately.

It is not a preference survey and does not ask whether participants like CLIs.
Language, packaging, and implementation are deliberately excluded.

## Admission claim under test

Practitioners repeatedly spend avoidable time or make consequential mistakes
when reviewing:

- outcome and outstanding-impact arithmetic;
- stack, horizon, and checkpoint coverage;
- required remaining rate;
- checkpoint and candidate timeline consistency;
- unknown evidence and guardrail states;
- machine-opaque calculated impact.

A local read-only checker would make those conditions visible without replacing
human review.

## Participants

Use at least three people other than the methodology authors:

- from at least two different working domains;
- able to understand a target, plan, and schedule;
- with no requirement for prior Stack & Track experience;
- not involved in writing the CLI design or paper prototype.

Record prior method, JSON, spreadsheet, AI, and CLI experience. Do not select
only software engineers.

## Materials

Give participants:

- repository `README.md`;
- `QUICKSTART.md`;
- `guides/progress-curves.md`;
- `models/README.md`;
- `models/example-performance.json`;
- their normal calculator, spreadsheet, editor, and AI assistant if desired.

Do not give participants:

- `cli/DESIGN.md`;
- `cli/PAPER_PROTOTYPE.md`;
- this observer answer key;
- verbal explanations of the planted conditions.

Record every tool and prompt the participant chooses to use. AI is neither
required nor prohibited because the gate must compare against realistic
current practice.

## Observer rules

The observer may explain the research purpose, answer file-navigation
questions, record behavior, and stop for privacy or safety.

The observer may not:

- explain Stack & Track arithmetic;
- point to a suspicious field;
- repair a formula;
- recommend a tool or prompt;
- tell the participant whether an answer is correct;
- disclose the paper-prototype findings.

Assistance becomes an observation and a usability finding.

## Review cycle 1: initial portfolio

Ask the participant to review `models/example-performance.json` as of
2026-08-06 and prepare a five-minute outcome-owner update answering:

1. Does the credible stack support the target?
2. What is the coverage gap, if any?
3. What is the required remaining rate per week?
4. Is the next checkpoint temporally supported?
5. Does the trajectory prove support through the target date?
6. Which supplied calculation cannot be independently verified?
7. What decision should the outcome owner make?

The participant may use any supplied material or normal tool but receives no
method coaching.

## Review cycle 2: evidence update

After cycle 1, provide this synthetic update card:

```text
Status date: 2026-09-13
Current measured outcome: 9.3 seconds
Accepted cumulative impact: 0.7 seconds
P-02 accepted attributed gain: 0.7 seconds
P-01 forecast acceptance date moves from 2026-09-01 to 2026-10-10
P-01 confirmation-complete date moves to 2026-10-28
P-01 credible impact remains 1.12 seconds
No new candidate or contingency has been added
All global guardrails remain acceptable
A small request cohort has an error-rate guardrail breach
The next declared trajectory checkpoint is still 2026-09-12
The target date remains 2026-10-24
```

Ask the participant to update the same five-minute outcome-owner report:

1. What outcome remains?
2. What required remaining rate is now necessary?
3. Is the remaining credible stack sufficient?
4. Can confirmation complete before the target date?
5. Does the favorable accepted gain waive the cohort breach?
6. What changed in confidence and decision need?

This second cycle tests repeated review rather than one-time comprehension.

## Observer answer key

### Cycle 1

| Condition | Expected conclusion |
|---|---|
| Outstanding impact | 2.0 seconds |
| Credible remaining impact | 1.72 seconds |
| Stack and horizon coverage | 0.86x; insufficient |
| Coverage gap | 0.28 seconds |
| Remaining time | 79 days or 11.2857 weeks |
| Required remaining rate | approximately 0.1772 seconds per week |
| Supplied rate | 0.1667 does not reproduce from the status date |
| Next checkpoint temporal coverage | 1.4 / 1.1 = approximately 1.27x |
| Target-date support | not demonstrated because the trajectory ends on 2026-09-12 |
| Opaque calculation | credible remaining impact depends on free-text overlap semantics |
| Accountable decision | add or revise credible impact, revise target or horizon explicitly, or decline commitment |

### Cycle 2

```text
Outstanding impact = 9.3 - 8.0 = 1.3 seconds
Remaining time = 41 days = 5.8571 weeks
Required remaining rate = 1.3 / 5.8571 = approximately 0.2220 seconds/week
Remaining credible impact after accepted P-02 = 1.12 seconds
Remaining stack coverage = 1.12 / 1.3 = approximately 0.86x
Confirmation completes four days after the target date
The cohort guardrail breach remains blocking even though 0.7 seconds is accepted
```

The exact leadership choice remains human. A valid report states that the
target is unsupported under the unchanged portfolio and date, confirmation is
late, and cohort harm cannot be averaged away.

## Observation record

Use [`ADMISSION_TEST_OBSERVATION.md`](ADMISSION_TEST_OBSERVATION.md) for each
participant.

Record facts rather than an aggregate usability score:

- elapsed time for each answer;
- arithmetic work repeated between cycles;
- calculator, spreadsheet, or AI steps;
- incorrect or unsupported conclusions;
- conditions missed;
- help requested;
- whether evidence remained inspectable;
- participant statements about repeated weekly or monthly use.

## Gate closure conditions

Software Admission condition 1 closes only when all of the following are true:

1. at least three independent participants complete both cycles;
2. at least two participants encounter the same repeated deterministic error
   or spend material repeated effort on the same bounded calculation or check;
3. the issue could change a target, coverage, schedule, evidence, guardrail, or
   re-stack decision;
4. the participant's normal documents, spreadsheet, calculator, or AI workflow
   does not reliably eliminate the issue;
5. the issue maps directly to the read-only V1 command contract;
6. no critical or major role finding remains against the evidence slice.

For this test, **material repeated effort** means at least five avoidable
minutes in each review cycle on deterministic checks, excluding time spent
understanding the domain or making accountable decisions.

The gate remains open when:

- participants complete the reviews accurately and efficiently with current
  tools;
- observed problems require causal, domain, prioritization, or leadership
  judgment rather than deterministic checking;
- the proposed CLI would merely restate an AI or spreadsheet result;
- only methodology authors experience the problem;
- participants prefer a CLI but demonstrate no repeated unmet need.

## Post-admission effectiveness gate

If admission closes and the bounded CLI slice is implemented, use equivalent
synthetic cases with independent or counterbalanced participants.

The slice passes only when it:

- prevents or clearly exposes the repeated admitted error;
- reduces deterministic review effort;
- preserves evidence and calculation inputs;
- does not increase false confidence;
- does not hide cohort, guardrail, or timing risk;
- remains optional.

Failure means revise or delete the CLI slice rather than expanding it.

## Privacy and retention

Keep raw participant notes private unless explicit publication permission is
given. Public reporting includes only anonymized domain, transformed timing,
error categories, and aggregate gate disposition. Do not retain workplace
targets, product names, customer information, private prompts, or proprietary
portfolio content in this repository.
