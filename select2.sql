# 데이터 조회(DML - SELECT)

select * from student_tb;
select `student_id`, `student_name`, `phone`, `email`, `introduce`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from student_tb;
select student_id, admission_date from student_tb;	# 원하는 정보만 조회하겠다
select admission_date, student_id, introduce from student_tb;	# 원하는 정보와 순서를 바꿔서 조회하겠다
select student_id, student_name as s_name from student_tb;

# union(all) 병합 조건 - 컬럼의 개수의 자료형이 동일한 select 결과만 병합 가능 
# union -> 중복 제거 후 select 정의 병합
# union all -> 중복 제거 없이 select 결과 병합
select 1 as number, "황인수" as name, 11 as age
union 										# union all 은 selcet를 합칠 수 있다.
select 2 as number, "황이수" as name, 12 as age
union 										# union 은 중복을 제거해서 합쳐준다.
select 1 as number, "황인수" as name, 11 as age;

select student_id, student_name from student_tb
union all
select student_id, phone from student_tb;

select 
	number,
    name
from
	(select 1 as number, "황인수" as name, 11 as age
	union 										# union all 은 selcet를 합칠 수 있다.
	select 2 as number, "황이수" as name, 12 as age
	union all										# union 은 중복을 제거해서 합쳐준다.
	select 1 as number, "황인수" as name, 11 as age) as temp_tb;