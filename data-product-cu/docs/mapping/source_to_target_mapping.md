# Source to Target Mapping (Example)

| Domain | Source System | Source Table | Target Layer | Target Object | Rule |
|---|---|---|---|---|---|
| Membership | Core Banking | `CB_MEMBER` | CURATED | `DIM_MEMBER` | Keep latest active profile by `MEMBER_ID` |
| Deposits | Core Banking | `CB_DEPOSIT_TXN` | CURATED | `FACT_DEPOSIT_TRANSACTION` | Standardize signed amount with CR/DR indicator |
| Loans | Loan Origination | `LOS_LOAN` | CURATED | `FACT_LOAN` | Map status into standard lifecycle buckets |
| Credit Cards | Card Processor | `CC_AUTH_TXN` | CURATED | `FACT_CC_TRANSACTION` | Filter reversals and derive MCC category |
| Cross-domain | Core + LOS + Card | multiple | BI | `F_MEMBER_FINANCIAL_360` | Conform member key and monthly grain |
