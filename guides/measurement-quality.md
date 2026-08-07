# Measurement Quality

Correct arithmetic cannot rescue an untrustworthy measurement source.

Before accepting a baseline, result, or curve movement, review:

| Dimension | Question |
|---|---|
| Definition | Is the metric defined consistently across baseline and result? |
| Completeness | Are relevant events, users, systems, and cohorts present? |
| Freshness | Is the data current enough for the decision? |
| Stability | Did instrumentation, schema, sampling, or aggregation change? |
| Denominator | Did population, traffic, eligibility, or exposure change? |
| Segmentation | Do tails, regions, cohorts, journeys, or severity tell a different story? |
| Missingness | Are absent values visible rather than converted to zero? |
| Comparability | Are baseline and result windows meaningfully comparable? |
| Lineage | Can the value be traced to its source and transformation? |
| Gaming risk | Could reporting, classification, or behavior change improve the metric without improving reality? |

## Measurement disposition

Return:

- `pass`: suitable for the stated decision;
- `finding`: usable only after a named correction;
- `defer`: the evidence window or source is not yet valid.

## Baseline changes

If a source or definition changes:

1. record the change date;
2. preserve the old definition;
3. determine whether history can be restated;
4. avoid joining incompatible windows;
5. recalculate the target and curves if necessary;
6. disclose the break in weekly and monthly reporting.

## Evidence strength

Use the strongest practical evidence, but label limits:

```text
measured and representative
measured with known limitations
human-provided operational estimate
calculated from labeled inputs
proposed
unknown
```

Do not delay every decision until perfect data exists. Do not present weak data
as strong merely because a decision is urgent.
