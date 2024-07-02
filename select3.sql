# where - 조건 


# 단순 비교 연산 
select
	*
from
	student_tb
where
	student_name = "황인수";	# where에서 '='는 비교연산

# or 연산    
select						# 3번 실행 순서. 중요함.
	student_id,
    student_name
from						# 1번
	student_tb
where						# 2번	# 왜 if가 아닌 where을 썼을까? => 행과 열의 관계형 데이터베이스 이니까, 
	student_name = "황인수" 			# 조건이 성립하는 녀석이 어디에 있느냐 ! 그 녀석이 있는 위치의 행을 선택해라. 가 되어서 where을 사용
    or student_name = "황이수";		# a or b 는 초과, 미만
    
# in 연산
select 
	*
from
	student_tb
where
	student_name in ("황인수", "황이수", "황삼수");
    
# and 연산
select 
	*
from
	student_tb
where
	student_id > 2
    and student_id < 4;

# between A and B 연산 ~ 부터 ~ 까지 (이상, 이하)
select
	*
from
	student_tb
where
	student_id between 2 and 4;		# between A and B 는 이상, 이하 
    
# not
select
	*
from
	student_tb
where
	not student_name = "황인수";		# database 연산자는 != 연산자보다는 문장앞에 not을 붙이는 것을 선호한다.
    
# null 체크
# is null 긍정
# is not null 부정
select
	*
from
	student_tb
where
	introduce is null;				# null 을 가진 요소를 확인하고 싶을 땐 is null을 사용한다.
#	introduce is not null; 			# null 이 아닌 것을 가져오고 싶을 땐 is not null로 예외적으로 사용한다.

insert into student_tb
values
	(0, "손경태", "010-1111-2222", "aaa@gmail.com", null, now()),
	(0, "김지현", "010-1111-3333", "bbb@naver.com", null, now()),
	(0, "김동인", "010-2222-2222", "ccc@gmail.com", null, now()),
	(0, "김정현", "010-4444-3333", "aaabbb@naver.com", null, now()),
	(0, "권오광", "010-5555-2222", "bbbccc@kakao.com", null, now()),
	(0, "권혁진", "010-1111-5555", "aaabbbccc@kakao.com", null, now());

# 와일드 카드 (like)
select
	*
from
	student_tb
where
	student_name like "김%";

select
	*
from
	student_tb
where
	email like "%gmail.com";
    
select
	*
from
	student_tb
where
	phone like "%2222%"				# 2222를 가운데에 포함하는 것을 가져올 때
    and not phone like "%2222";		# like 는 단독으로 쓴다. in과 함께 쓸 수 없음.
    
select
	*
from
	student_tb
where
	email like "___bbb%";
    
    