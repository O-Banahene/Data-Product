# Target Architecture

## Environments
- DEV: rapid iteration and schema testing
- TEST: integration and UAT validation
- PROD: controlled release with SLA monitoring

## Snowflake Databases/Schemas
- `CU_RAW.STAGING_*`
- `CU_CURATED.CORE_*`
- `CU_BI.MODEL_*`

## Orchestration
- Ingestion: batch/CDC from core banking, LOS, card processor
- Transform: SQL tasks + streams
- Quality: post-load assertions and reconciliation
- Publish: semantic views + Tableau extracts + AI feature export

## Security and Governance
- RBAC by domain and layer
- PII masking policies on member-level data
- Row access policy for branch-region constraints
- Object tags for classification (`PUBLIC`, `CONFIDENTIAL`, `RESTRICTED`)
