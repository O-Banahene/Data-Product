select
  (select count(distinct MEMBER_ID) from STAGING_MEMBERSHIP) as stg_member_cnt,
  (select count(distinct MEMBER_ID) from DIM_MEMBER) as curated_member_cnt;
