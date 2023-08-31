create table student_tbl(
                            sno int(4) not null PRIMARY key,
                            sname varchar(20) not null,
                            sclass varchar(20),
                            saddress varchar(6),
                            sphone varchar(15)
);
create table review_tbl(
                           rno int(4) not null PRIMARY key,
                           sno int(4) not null,
                           rsubject varchar(50),
                           rcontent varchar(200),
                           rgrade int(4)
);
학생테이블 질의어
검색 SELECT * FROM student_tbl
삽입 INSERT INTO student_tbl (sno, sname, sclass, saddress, sphone) VALUES ('2016001', '홍길동', '정보보안과', '경기도', '010-123-1324');
수정 UPDATE `student_tbl` SET `sno` = '20ㄹㅇㄴ6001', `sname` = '홍길동32', `sclass` = '정보3보안과', `saddress` = '경기3도', `sphone` = '0310-123-1324' WHERE `student_tbl`.`sno` = 2016001
삭제 DELETE FROM `student_tbl` WHERE `student_tbl`.`sno` = 2016001;

수강평테이블 질의어
검색 SELECT * FROM review_tbl
삽입 INSERT INTO `review_tbl` (`rno`, `sno`, `rsubject`, `rcontent`, `rgrade`) VALUES ('1', '2016001', 'ㄹㄴㅇ', 'ㄹㅇㄴ', '5');
수정 UPDATE `review_tbl` SET `rno` = '1ㅈㅂ', `sno` = '2016ㅂ001', `rsubject` = 'ㄹㄴㅂㅇ', `rcontent` = 'ㄹㅇㅂㄴ', `rgrade` = '5ㅂ' WHERE `review_tbl`.`rno` = 1
삭제 DELETE FROM `review_tbl` WHERE `review_tbl`.`rno` = 1;
