-- 게시판 테이블 삭제 
drop table if exists noticeboard;

-- 게시물 테이블 생성
create table noticeboard (
  NoticeBoard_id int not null auto_increment primary key comment '게시물 식별 번호',
  conts text not null comment '내용',
  cdt datetime default now() comment '생성일',
  vw_cnt int default 0 comment '조회수', 
  file_path varchar(255)
) comment '게시물';

-- 게시물 예제 데이터
insert into noticeboard(NoticeBoard_id, conts) values(1, '내용1');

-- 컬럼명 변경
alter table noticeboard change board_id NoticeBoard_id int not null auto_increment;