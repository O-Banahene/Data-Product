-- not null checks
select count(*) as null_member_id_cnt from DIM_MEMBER where MEMBER_ID is null;

-- uniqueness checks
select MEMBER_ID, count(*) from DIM_MEMBER group by 1 having count(*) > 1;
