create table member(
    userid varchar2(15) primary key,    -- 회원 아이디
    pwd varchar2(20),                   -- 회원 비밀번호
    name varchar2(10),                  -- 회원 이름
    sex number(1) default 0,            -- 성별
    tel varchar2(13),                   -- 집전화(필수사항 아님)
    phone varchar2(13),                 -- 휴대전화번호(필수)
    email varchar2(20),                 -- 이메일주소
    address varchar2(100)               -- 집주소
);
select * from member;
insert into member values('admin','1234','운영자',1,'02-123-4567','010-1004-1004','scuba@scuba.com','서울 잠실수영장');
commit; 

create table board1(
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board1;

create sequence board1_seq start with 1 increment by 1;

insert into board1(num,name,pass,title,content)
values(board1_seq.nextval,'운영자','1234','테스트','내용테스트');
commit;
rollback;
create table reply(
    renum number not null primary key, --댓글의 고유번호, null값이 들어갈 수 없고 기본키로 설정    
    pass varchar2(4)
    





    