-- 게시판 테이블 생성

create table board(
	idx int not null auto_increment,
	title varchar(1000) not null,
	contents varchar(3000) not null,
	count int not null default 0,
	writer varcWar(100) not null,
	indate datetime not null default now(),
	primary key(idx)
)

create table member(
	id varchar(100),
	pw varchar(100) not null,
	nick varchar(100) not null,
	phone varchar(100) not null,
	primary key(id)
)


--테이블 인서트

insert into member values('hodoo', '1234','호두아빠','010-4611-5278')


insert into board(title,contents,writer)
values('조보아씨 일루와봐유','이거 한번 먹어보세유','이연복');

insert into board(title,contents,writer)
values('안녕하세요! 강형욱입니다!','으르러르르르렁','강형욱');

insert into board(title,contents,writer)
values('형 이따가 축구 한판 할래?','형이 공격수 해줘','손흥민');

insert into board(title,contents,writer)
values('노래 부르는거 좋아하세요?','3단 고음 어렵지 않아요','아이유');

insert into board(title,contents,writer)
values('1세트만 더 1세트만 더','끝나고 제육이나 먹으러 가자','로니 콜먼');

insert into board(title,contents,writer)
values('오늘 메뉴 제육볶음 입니다','많이들 식사하러 오세요~','그냥 집밥');

insert into board(title,contents,writer)
values('크림비빔밥 출시!','진짜 맛있습니다','행복한밥상');

insert into board(title,contents,writer)
values('냥냥','냥냥냥냥냥','아트센터 고양이');

insert into board(title,contents,writer)
values('올 여름 제대로 즐기게 해드리겠습니다','이번 여름은 쉽니다','B반 에어콘');

insert into board(title,contents,writer)
values('Are you mad?','크크루삥뽕','Happy Troll');

--테이블 셀렉트

select * from board

select * from member
