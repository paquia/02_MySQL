-- DML(Data Manipulation Language)
-- 데이터 조작언어, 테이블에 값을 삽입하거나 수정하거나 삭제하는
-- (데이터베이스 내의 데이터를 조작하는데 사용하는) SQL 의 한 부분이다.

-- insert
-- 새로운 행을 추가하는 구문이다.
-- 테이블의 행의 수가 증가한다.

-- 값이 잘 들어갔는 지 확인 조회용
select * from tbl_menu;

-- 값을 넣을거야 어디에? tbl_menu 그러면 값은 ? values ();
insert into tbl_menu values (null, '바나나해장국', 8500, 4, 'Y');

-- 테이블 정보 확인
describe tbl_menu;

-- auto increment : 자동으로 증가되는 기능 / 값을 넣지 않는다면 자동으로 번호를 부여받음
-- null 허용 가능한(nullable) 컬럼이나 auto increment 가 있는 컬럼은 null 을 부여할 수 있다.

insert into tbl_menu(menu_name, menu_price, category_code, orderable_status)
values ('초콜릿죽', 6500, 7, 'Y');


-- multi insert
insert into
	tbl_menu
values
	(null, '참치맛아이스크림', 1700, 12, 'Y'),
    (null, '멸치맛아이스크림', 1500, 11, 'Y'),
    (null, '소시지맛커피', 2500, 8, 'Y');

select * from tbl_menu;

-- update
-- 테이블에 기록된 컬럼의 값을 수정하는 구문
-- 테이블의 전체 행 갯수는 변화가 없다.

-- 수정 대상
select
	*
from 
	tbl_menu
where
	menu_name = '민트초코';


update tbl_menu
set
	category_code = 7,
    menu_name = '민트초코'
where
	menu_code = 7;

-- delete
-- 테이블의 행을 삭제하는 구문이다.
-- 테이블의 행의 갯수가 줄어든다.

-- 삭제 확인용
select * from tbl_menu;

delete from tbl_menu where menu_name = '초콜릿죽';

-- limit 를 활용한 delete

select * from tbl_menu;

delete from tbl_menu
order by menu_price
limit 3;

-- 테이블 행 전체 삭제
delete from tbl_menu;

select * from tbl_menu;

-- replace
-- update : 특정 조건을 만족하는 행의 값을 update 함.
-- replace : 특정 행이 이미 존재하는 경우에는 그 행을 갱신
-- 			 그렇지 않은 경우 새 행을 삽입.
--  		 즉, 해당 행을 삭제하고 새로운 값을 삽입하는 것이다.

select * from tbl_menu;

-- insert 시 primary key 또는 unique key 가 충돌이 발생한다.
-- insert into tbl_menu values(1, '열무김치아메리카노', 5000, 8 , 'Y');

-- into 는 생략이 가능하다.
replace into tbl_menu values(1, '열무김치아메리카노', 5000, 8 , 'Y');

select * from tbl_menu;

replace tbl_menu
set	
	menu_code = 2,
	menu_name = '우럭주스',
    menu_price = 2000,
    category_code = 9,
    orderable_status = 'N';
	








