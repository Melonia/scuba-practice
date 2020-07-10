create table member(
    num number(5) primary key,          -- 회원 고유번호
    userid varchar2(15),                -- 회원 아이디
    pwd varchar2(20),                   -- 회원 비밀번호
    name varchar2(10),                  -- 회원 이름
    sex number(1) default 0,            -- 성별
    tel varchar2(13),                   -- 집전화(필수사항 아님)
    phone varchar2(13),                 -- 휴대전화번호(필수)
    email varchar2(20),                 -- 이메일주소
    address varchar2(100)               -- 집주소
);
alter table member modify num not null;

desc member;
select * from member;
create sequence member_seq start with 1 increment by 1;
insert into member values(member_seq.nextval,'admin','1234','운영자',1,'02-123-4567','010-1004-1004','scuba@scuba.com','서울 잠실수영장');
commit; 

create table board1(                     -- 스쿠버 교육신청
    num number(5) primary key,           -- 게시글 교육번호
    title varchar2(50),                  -- 게시글 제목
    pass varchar2(50),                   -- 작성자 비밀번호
    name varchar2(30),                   -- 작성자 이름
    phone varchar2(13),                  -- 작성자 연락처
    space number(2),                     -- 교육받을 장소
    subject number(2),                   -- 희망하는 교육과정
    pack number(2),                      -- 패키지
    time number(2),                      -- 교육받기를 희망하는 시간
    readcount number(4) default 0,       --조회수
    writedate date default sysdate       --작성일자
);
desc board1;
create sequence board1_seq start with 1 increment by 1;

create table board2(                     -- 프리다이빙 교육신청
    num number(5) primary key,           -- 게시글 교육번호
    title varchar2(50),                  -- 게시글 제목
    pass varchar2(50),                   -- 작성자 비밀번호
    name varchar2(30),                   -- 작성자 이름
    phone varchar2(13),                  -- 작성자 연락처
    space number(2),                     -- 교육받을 장소
    subject number(2),                   -- 희망하는 교육과정
    time number(2),                      -- 교육받기를 희망하는 시간
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
create sequence board2_seq start with 1 increment by 1;

create table board3(           --수강생 후기
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board3;

create sequence board3_seq start with 1 increment by 1;

insert into board3(num,name,pass,title,content)
values(board3_seq.nextval,'운영자','1234','테스트','내용테스트');

commit;
rollback;


create table board4(           --국내투어 후기
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board4;
create sequence board4_seq start with 1 increment by 1;

create table board5(           --해외투어 후기
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board5;
desc board5;
create sequence board5_seq start with 1 increment by 1;

create table board6(           --공지사항 게시판
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board6;
create sequence board6_seq start with 1 increment by 1;
    
create table board7(           --이벤트 게시판
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board7;
create sequence board7_seq start with 1 increment by 1;

create table board8(           --스쿠버 장비판매 게시판
    num number(5) primary key not null, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board8;
create sequence board8_seq start with 1 increment by 1;