# Data Quality Checks

## Staging
- Freshness: source file arrival must be < 6 hours from schedule
- Schema drift: alert on added/removed columns

## Curated
- Not-null: business keys, posting dates, amounts
- Uniqueness: surrogate key and natural key combinations
- Referential integrity: facts must map to dimensions

## BI Model
- Reconciliation: aggregate balances tie out to curated source
- Threshold checks: month-over-month variance > 20% triggers review
