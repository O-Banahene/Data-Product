# Credit Union BI Data Products (Snowflake)

Production-ready project template for standardized Snowflake data products for **Membership, Deposits, Loans, and Credit Cards**.

## Goals
- Standardized source-to-target mappings
- 3-layer Snowflake architecture: **Staging -> Curated -> BI Model**
- Reusable ETL pipelines across **dev/test/prod**
- ERD, lineage, data quality, business rules, semantic layer
- Master tables for AI agent training + Tableau reporting

## Repository Structure
- `docs/architecture`: architecture, standards, runbook
- `docs/mapping`: source-target mapping by domain
- `docs/erd`: logical + physical ERD docs
- `docs/lineage`: lineage by domain and cross-domain
- `docs/business_rules`: KPI and transformation rules
- `docs/data_quality`: test strategy and thresholds
- `docs/semantic_model`: semantic contracts for BI/AI
- `sql/staging`: raw ingestion and standardization views/tables
- `sql/curated`: conformed business entities
- `sql/bi`: star schema marts + aggregate models
- `sql/shared`: UDFs, sequences, common dimensions
- `pipelines/*`: env-specific pipeline configs
- `models/*`: data product model definitions by domain
- `tests/*`: dq, unit, reconciliation checks
- `sample_data`: example credit union source extracts
- `tableau`: Tableau-ready data source configs
- `ai_agent`: curated features and prompts for training/retrieval
- `governance`: ownership, SLA, access, classification
- `monitoring`: observability and operational metrics

## Core Snowflake Layers
1. **STAGING**: immutable landing + CDC normalization
2. **CURATED**: business-conformed dimensions/facts
3. **BI_MODEL**: reporting marts and semantic views

## Domain Data Products
- Membership: member profile, household, branch, channel behavior
- Deposits: accounts, balances, transactions, fees
- Loans: applications, booked loans, payment performance, delinquency
- Credit Cards: card accounts, transactions, utilization, risk indicators

## Quick Start
1. Customize environment values in `config/dev|test|prod/*.yaml`
2. Execute base objects in `sql/shared`
3. Run staging SQL, then curated SQL, then BI SQL
4. Deploy orchestration in `pipelines/orchestration`
5. Enable tests in `tests/dq` and `tests/reconciliation`
6. Publish Tableau semantic sources from `tableau/datasources`
7. Register AI training sets from `ai_agent/training_sets`

## Delivery Artifacts Checklist
- [x] Source-to-target mapping
- [x] ETL pipeline specs (dev/test/prod)
- [x] ERD and lineage documentation
- [x] Data quality checks
- [x] Business rules and KPI logic
- [x] Semantic/master model for BI + AI
