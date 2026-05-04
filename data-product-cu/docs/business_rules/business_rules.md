# Business Rules

## Shared
1. Surrogate keys are generated per curated dimension.
2. Dates are stored UTC; reporting uses local timezone conversions in BI layer.
3. Soft deletes preserved with `IS_ACTIVE` flag.

## Membership
- A member is active when `CLOSE_DATE` is null and status in (`OPEN`, `GOOD_STANDING`).

## Deposits
- Net transaction amount = credit amount - debit amount.
- Daily balance snapshots are end-of-day balances.

## Loans
- Delinquency bucket derived from days past due: 0, 1-29, 30-59, 60-89, 90+.

## Credit Cards
- Utilization = statement balance / credit limit; null when limit is zero.
