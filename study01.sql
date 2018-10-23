/*
--서버 만들기
create user SEEDIT identified by 1234;
grant connect,resource to SEEDIT;

--삭제 순서
drop table bbs_flag;
drop table bbs;
DROP TABLE MEMBER;
DROP SEQUENCE BBS_SEQ;
drop sequence member_seq;
*/

CREATE TABLE MEMBER (
    MEMBER_IDX NUMBER PRIMARY KEY,
    ID VARCHAR2(50) NOT NULL ,
    MEMBER_PW VARCHAR2(50) NOT NULL,
    MEMBER_NAME VARCHAR2(50) NOT NULL,
    MEMBER_EMAIL VARCHAR2(50) NOT NULL,
    MEMBER_REGIDATE DATE DEFAULT SYSDATE    
);

CREATE TABLE BBS (
    ID VARCHAR2(50) NOT NULL,  /* 작성자 */
	BBS_NO NUMBER PRIMARY KEY, /* 게시판 일련번호 */
	BBS_TITLE VARCHAR2(50) NOT NULL, /* 제목 */
	BBS_CONTENTS VARCHAR2(3000) NOT NULL, /* 내용 */
	BBS_REGIDATE DATE DEFAULT SYSDATE, /* 작성일 */
	BBS_HIT NUMBER NOT NULL, /* 조회수 */
	BBS_FLAG_CODE NUMBER NOT NULL  /* 멀티게시판 */
);

CREATE TABLE BBS_FLAG (
    BBS_FALG_TYPE VARCHAR2(100) PRIMARY KEY, /* 멀티게시판종류 */
	BBS_FLAG_CODE NUMBER NOT NULL /* 멀티게시판 */
);


create SEQUENCE bbs_seq
increment by 1
start with 1
nocache
nocycle;

CREATE SEQUENCE MEMBER_SEQ
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'magnae', '1111', '최지혜', 'dawun29@gmail.com',sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'yuri', '1111', '이유리', 'yuri0903@gmail.com' ,sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'kim', '1111', '김승룡', 'kim5303123@gmail.com',sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'sook', '1111', '유영숙', 'vaims.yoo@gmail.com',sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'joo', '1111', '이영주', 'wowodk099@gmail.com' ,sysdate);


insert into bbs values('magnae',bbs_seq.nextval,'지혜`s','지혜 테스트입니다1'  ,sysdate ,3,10);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s2','지혜 테스트입니다2' ,sysdate,30,10);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s','유리 테스트입니다1'    ,sysdate  ,3,20);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s2','유리 테스트입니다2'   ,sysdate ,30,20);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s','승룡 테스트입니다1'     ,sysdate  ,3,30);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s2','승룡 테스트입니다2'    ,sysdate ,30,30);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s','영숙 테스트입니다1'    ,sysdate ,3,40);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s2','영숙 테스트입니다2'   ,sysdate,30,40);
insert into bbs values('joo',bbs_seq.nextval,'영주`s','영주 테스트입니다1'     ,sysdate ,3,50);
insert into bbs values('joo',bbs_seq.nextval,'영주`s2','영주 테스트입니다2'    ,sysdate,30,50);
insert into bbs values('joo',bbs_seq.nextval,'영주`s3','영주 테스트입니다3'    ,sysdate,32,50);
insert into bbs values('joo',bbs_seq.nextval,'영주`s4','영주 테스트입니다4'    ,sysdate,33,50);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s3','영숙 테스트입니다3'  ,sysdate,32,40);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s4','영숙 테스트입니다4'  ,sysdate,33,40);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s3','승룡 테스트입니다3'    ,sysdate,32,30);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s4','승룡 테스트입니다4'    ,sysdate,33,30);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s3','유리 테스트입니다3'  ,sysdate,32,20);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s4','유리 테스트입니다4'   ,sysdate,33,20);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s3','지혜 테스트입니다3',sysdate ,32,10);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s4','지혜 테스트입니다4',sysdate ,33,10);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s5','지혜 테스트입니다5',sysdate ,34,10);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s5','유리 테스트입니다5',sysdate ,34,20);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s5','승룡 테스트입니다5'  ,sysdate ,34,30);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s5','영숙 테스트입니다5' ,sysdate,34,40);
insert into bbs values('joo',bbs_seq.nextval,'영주`s5','영주 테스트입니다5' ,sysdate,34,50);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s6','지혜 테스트입니다6',sysdate ,35,10);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s7','지혜 테스트입니다7',sysdate ,38,10);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s6','유리 테스트입니다6',sysdate ,35,20);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s7','유리 테스트입니다7',sysdate ,38,20);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s6','승룡 테스트입니다6',sysdate ,35,30);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s7','승룡 테스트입니다7',sysdate ,38,30);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s6','영숙 테스트입니다6',sysdate ,35,40);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s7','영숙 테스트입니다7',sysdate ,38,40);
insert into bbs values('joo',bbs_seq.nextval,'영주`s6','영주 테스트입니다6',sysdate ,35,50);
insert into bbs values('joo',bbs_seq.nextval,'영주`s7','영주 테스트입니다7',sysdate ,38,50);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s8','지혜 테스트입니다8',sysdate ,39,10);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s9','지혜 테스트입니다9',sysdate ,20,10);
insert into bbs values('magnae',bbs_seq.nextval,'지혜`s10','지혜 테스트입니다10',sysdate ,13,10);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s8','유리 테스트입니다8',sysdate ,39,20);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s9','유리 테스트입니다9',sysdate ,20,20);
insert into bbs values('yuri',bbs_seq.nextval,'유리`s10','유리 테스트입니다10',sysdate ,13,20);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s8','승룡 테스트입니다8',sysdate ,39,30);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s9','승룡 테스트입니다9',sysdate ,20,30);
insert into bbs values('kim',bbs_seq.nextval,'승룡`s10','승룡 테스트입니다10',sysdate ,13,30);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s8','영숙 테스트입니다8',sysdate ,39,40);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s9','영숙 테스트입니다9',sysdate ,20,40);
insert into bbs values('sook',bbs_seq.nextval,'영숙`s10','영숙 테스트입니다10',sysdate ,13,40);
insert into bbs values('joo',bbs_seq.nextval,'영주`s8','영주 테스트입니다8',sysdate ,39,50);
insert into bbs values('joo',bbs_seq.nextval,'영주`s9','영주 테스트입니다9',sysdate ,20,50);
insert into bbs values('joo',bbs_seq.nextval,'영주`s10','영주 테스트입니다10',sysdate ,13,50);



insert into bbs_flag values('지혜게시판',10);
insert into bbs_flag values('유리게시판',20);
insert into bbs_flag values('승룡게시판',30);
insert into bbs_flag values('영숙게시판',40);
insert into bbs_flag values('영주게시판',50);


