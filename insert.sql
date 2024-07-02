# 데이터 삽입 (DML - INSERT) 하나의 데이터는 하나의 행을 의미한다.

select * from student_tb;

# insert into `study`.`student_tb`		Database가 use 되지 않은 경우
# insert into `student_tb`				Database가 use 상태인 경우 (``) 빽쿼터는 생략 가능하다.
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "황인수", "010-9584-6142", "xmrtn210845@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "황이수", "010-9584-6142", "xmrtn210845@naver.com", now()),
	(0, "황삼수", "010-9584-6142", "xmrtn210845@naver.com", now()),
	(0, "황사수", "010-9584-6142", "xmrtn210845@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, introduce, admission_date)
values
	(0, "황오수", "010-9584-6142", "xmrtn210845@naver.com", null, now());    
    
insert into student_tb
	(student_id, phone, email,introduce, student_name, admission_date)
values
	(0, "010-9584-6142", "xmrtn210845@naver.com",  null, "황육수", now());    
    
insert into student_tb
values
	(0, "황칠수", "010-9584-6142", "xmrtn210845@naver.com", null, now());    # 모든 컬럼들을 다 넣고 순서대로 넣는다는 가정하에 쓸 수 있음