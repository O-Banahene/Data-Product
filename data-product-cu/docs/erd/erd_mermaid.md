# ERD (Mermaid)

```mermaid
erDiagram
  DIM_MEMBER ||--o{ FACT_DEPOSIT_TRANSACTION : owns
  DIM_MEMBER ||--o{ FACT_LOAN : borrows
  DIM_MEMBER ||--o{ FACT_CC_ACCOUNT : holds
  DIM_BRANCH ||--o{ DIM_MEMBER : serves
```
