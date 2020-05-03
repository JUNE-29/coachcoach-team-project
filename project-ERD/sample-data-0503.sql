
-- coaches 예제 데이터
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach1', '코치1', 0, '1995-01-01', '010-1111-1111', 'coach1@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치1 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach2', '코치2', 0, '1995-01-01', '010-1111-1111', 'coach2@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치2 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach3', '코치3', 0, '1995-01-01', '010-1111-1111', 'coach3@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치3 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach4', '코치4', 0, '1995-01-01', '010-1111-1111', 'coach4@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치4 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach5', '코치5', 0, '1995-01-01', '010-1111-1111', 'coach5@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치5 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach6', '코치6', 0, '1995-01-01', '010-1111-1111', 'coach6@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치6 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach7', '코치7', 0, '1995-01-01', '010-1111-1111', 'coach7@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치7 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach8', '코치8', 0, '1995-01-01', '010-1111-1111', 'coach8@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치8 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach9', '코치9', 0, '1995-01-01', '010-1111-1111', 'coach9@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치9 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');
insert into coaches(id, name, gender, birth, tel, email, password, photo, area, career,certification, introduce, members, bank, account, work_type, address, latitude, longitude)
values('coach10', '코치10', 0, '1995-01-01', '010-1111-1111', 'coach10@naver.com', password('1111'), 'file.gif', '서울', '헬트2년','없음', '코치10 입니다', 0, '기업은행', '123-456-78910', '프리랜서', '서울 서초구 강남대로', '37.6', '127.0');


  -- 회원정보 샘플 데이터
insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(1, 'member1', '회원1', 1, '19990102', '01011112222', 'user1@gmail.com', password('1111'), 
'user1.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유1', '목표', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(2, 'member2', '회원2', 1, '19990102', '01011112222', 'user2@gmail.com', password('1111'), 
'user2.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유2', '목표2', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(3, 'member3', '회원3', 1, '19990102', '01011112222', 'user3@gmail.com', password('1111'), 
'user3.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유3', '목표3', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(4, 'member4', '회원4', 1, '19990102', '01011112222', 'user4@gmail.com', password('1111'), 
'user4.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유4', '목표4', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(5, 'member5', '회원5', 1, '19990102', '01011112222', 'user5@gmail.com', password('1111'), 
'user5.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유5', '목표5', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(6, 'member6', '회원6', 1, '19990102', '01011112222', 'user6@gmail.com', password('1111'), 
'user6.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유6', '목표6', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(7, 'member7', '회원7', 1, '19990102', '01011112222', 'user7@gmail.com', password('1111'), 
'user7.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유7', '목표7', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(8, 'member8', '회원8', 1, '19990102', '01011112222', 'user8@gmail.com', password('1111'), 
'user8.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유8', '목표8', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(9, 'member9', '회원9', 1, '19990102', '01011112222', 'user9@gmail.com', password('1111'), 
'user9.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유9', '목표9', 0);

insert into members(member_no, id, name, gender, birth, tel, email, password, 
photo, create_date, withdrawal, withdrawal_date, withdrawal_reason, goal, goal_in)
value(10, 'member10', '회원10', 1, '19990102', '01011112222', 'user10@gmail.com', password('1111'), 
'user10.jpg', '2020-01-01', 1, '2021-01-01', '탈퇴이유10', '목표10', 0);


-- 체중 샘플 데이터

insert into weight(weight_no, member_no, weight, measure_date)
value (1, 1, 65, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (2, 1, 64, '2020-04-03');

insert into weight(weight_no, member_no, weight, measure_date)
value (3, 2, 70, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (4, 3, 80, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (5, 4, 100, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (6, 5, 95, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (7, 6, 67, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (8, 7, 54, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (9, 8, 99, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (10, 8, 97, '2020-04-03');

insert into weight(weight_no, member_no, weight, measure_date)
value (11, 9, 77, '2020-04-02');

insert into weight(weight_no, member_no, weight, measure_date)
value (12, 10, 66, '2020-04-02');


-- 코칭프로그램 샘플데이터

insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (1, 1, '4주안에 복근만들기1', '4주안에 복근을 만들 수 있습니다', 350000, '온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (2, 1, '4주안에 복근만들기1', '4주안에 복근을 만들 수 있습니다', 350000, '온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (3, 2, '4주안에 복근만들기2', '4주안에 복근을 만들 수 있습니다', 300000, '온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (4, 3, '4주안에 복근만들기3', '4주안에 복근을 만들 수 있습니다', 500000, '온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (5, 4, '4주안에 복근만들기4', '4주안에 복근을 만들 수 있습니다', 400000, '오프라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (6, 5, '4주안에 복근만들기5', '4주안에 복근을 만들 수 있습니다', 700000, '오프라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (7, 6, '4주안에 복근만들기6', '4주안에 복근을 만들 수 있습니다', 700000, '오프라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (8, 7, '4주안에 복근만들기7', '4주안에 복근을 만들 수 있습니다', 100000, '오프라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (9, 8, '4주안에 복근만들기8', '4주안에 복근을 만들 수 있습니다', 300000, '오프라인+온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (10, 8, '4주안에 복근만들기8', '4주안에 복근을 만들 수 있습니다', 300000, '오프라인+온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (11, 9, '4주안에 복근만들기9', '4주안에 복근을 만들 수 있습니다', 450000, '오프라인+온라인');
insert into coaching_programs(program_no, coach_no, name, introduce, fee, coaching_type)
value (12, 10, '4주안에 복근만들기10', '4주안에 복근을 만들 수 있습니다', 650000, '오프라인+온라인');



-- toDoList 예제 데이터
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(1, 1, '자전거10분타기', '2020-01-01');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(2, 2, '30분걷기', '2020-01-02');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(3, 2, '근력운동3셋트', '2020-01-03');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(4, 3, '하체운동3셋트', '2020-02-01');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(5, 3, '점심샐러드먹기', '2020-02-02');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(6, 4, '일요일등산하기', '2020-02-03');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(7, 5, '아침운동30분하기', '2020-03-01');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(8, 6, '식단조절하기', '2020-03-02');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(9, 6, '상체운동하기', '2020-03-03');
insert into to_do_list(to_do_list_no, member_no, memo, create_date)
  values(10, 7, '일주일에 3일이상 운동하기', '2020-03-04');

  
  
  -- member_coaching_programs 예제 데이터
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(1, 1, '허리가 아파요', '진행완료', '2020-01-01', '2020-01-01', '2020-01-10', '2020-02-01',
         5, '후기입니다', '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(2, 2, '허리가 아파요', '진행 완료', '2020-01-01', '2020-01-01', '2020-01-10', '2020-02-01',
         5, '후기입니다', '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(3, 3, '허리가 아파요', '진행 완료', '2020-01-01', '2020-01-01', '2020-01-10', '2020-02-01',
         5, '후기입니다', '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(4, 4, '허리가 아파요', '진행 완료', '2020-01-01', '2020-01-01', '2020-01-10', '2020-02-01',
         5, '후기입니다', '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(5, 5, '허리가 아파요', '진행 완료', '2020-01-01', '2020-01-01', '2020-01-10', '2020-02-01',
         5, '후기입니다', '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(6, 5, '허리가 아파요', '진행중', '2020-01-01', '2020-01-01', '2020-01-10', '2020-05-01',
         null, null, '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(7, 4, '허리가 아파요', '진행중', '2020-01-01', '2020-01-01', '2020-01-10', '2020-05-01',
         null, null, '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(8, 3, '허리가 아파요', '요청대기중', '2020-01-01', null, '2020-04-10', '2020-05-01',
         null, null, '2020-02-01', null);
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(9, 2, '허리가 아파요', '요청거절됨', '2020-01-01', null, '2020-04-10', '2020-05-01',
         null, null, '2020-02-01', '허리가 아프신 분은 수강이 힘드세요.');
insert into member_coaching_programs(member_no, program_no, remark, status, request_date, pay_date,
                        start_date, end_date, star_rate, review, review_date, etc)
  values(10, 1, '허리가 아파요', '결제대기중', '2020-01-01', null, '2020-04-10', '2020-05-01',
         null, null, '2020-02-01', null);
  

-- 회원코칭프로그램일정
insert into member_program_calendar(member_program_no, plan)
  values(1,'운동계획');
  insert into member_program_calendar(member_program_no, plan)
  values(1,'운동계획');
  insert into member_program_calendar(member_program_no, plan)
  values(2,'운동계획');
  insert into member_program_calendar(member_program_no, plan)
  values(3,'운동계획');
  insert into member_program_calendar(member_program_no, plan)
  values(4,'운동계획');
  insert into member_program_calendar(member_program_no, plan)
  values(5,'운동계획');
  insert into member_program_calendar(member_program_no, plan)
  values(6,'운동계획');
    insert into member_program_calendar(member_program_no, plan)
  values(7,'운동계획');
    insert into member_program_calendar(member_program_no, plan)
  values(8,'운동계획');
     insert into member_program_calendar(member_program_no, plan)
  values(9,'운동계획');
     insert into member_program_calendar(member_program_no, plan)
  values(10,'운동계획');
  
  --코칭프로그램 게시판
    insert into coaching_program_boards(coach_no, program_no, title, content)
  values(1,1,'제목1','내용1');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(1,1,'제목2','내용2');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(2,1,'제목3','내용3');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(2,1,'제목4','내용4');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(3,1,'제목5','내용5');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(3,1,'제목6','내용6');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(4,1,'제목7','내용7');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(5,1,'제목8','내용8');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(6,1,'제목9','내용9');
   insert into coaching_program_boards(coach_no, program_no, title, content)
  values(7,1,'제목10','내용10');
  
  
  -- food_boards 예제 데이터
insert into food_boards(member_no, photo, content)
  values(1, 'cat1.jpg', '귀여운 고양이1와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(2, 'cat2.jpg', '귀여운 고양이2와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(3, 'cat3.jpg', '귀여운 고양이3와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(4, 'cat4.jpg', '귀여운 고양이4와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(5, 'cat5.jpg', '귀여운 고양이5와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(1, 'cat6.jpg', '귀여운 고양이6와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(2, 'cat7.jpg', '귀여운 고양이7와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(3, 'cat8.jpg', '귀여운 고양이8와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(4, 'cat9.jpg', '귀여운 고양이9와 식사했어요!');
insert into food_boards(member_no, photo, content)
  values(5, 'cat10.jpg', '귀여운 고양이10와 식사했어요!');
  
  
  --음식게시판댓글
   insert into food_board_comments(food_board_no, coach_no,content)
  values(1,1,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(2,2,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(3,3,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(4,4,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(5,5,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(6,6,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(7,7,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(8,8,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(9,9,'내용');
     insert into food_board_comments(food_board_no, coach_no,content)
  values(10,10,'내용');
  
  
  
-- 운동 예제 데이터
insert into member_workout_tag(workout_no, name, unit)
  values(1, '조깅', '60');
insert into member_workout_tag(workout_no, name, unit)
  values(2, '수영', '120');
insert into member_workout_tag(workout_no, name, unit)
  values(3, '등산', '240');
insert into member_workout_tag(workout_no, name, unit)
  values(4, '서핑', '120');
insert into member_workout_tag(workout_no, name, unit)
  values(5, '헬스', '30');
insert into member_workout_tag(workout_no, name, unit)
  values(6, '걷기', '40');
insert into member_workout_tag(workout_no, name, unit)
  values(7, '요가', '50');
insert into member_workout_tag(workout_no, name, unit)
  values(8, '필라테스', '50');
insert into member_workout_tag(workout_no, name, unit)
  values(9, '테니스', '60');
insert into member_workout_tag(workout_no, name, unit)
  values(10, '배드민턴', '60');
  
  
  -- 운동내역 예제 데이터
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(1, 1, '2020-01-01', '1200', '유산소 운동을 더 많이 할 것');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(1, 2, '2020-01-02', '1600', '음식조절 필요');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(1, 3, '2020-01-03', '500', '음식조절 필요2');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(2, 4, '2020-02-01', '5000', '근력운동 필요');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(2, 5, '2020-02-01', '6000', '근력운동 필요');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(3, 6, '2020-03-03', '4000', '식단조절');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(4, 7, '2020-03-05', '2000', '식단조절, 유산소운동');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(5, 8, '2020-04-03', '1000', '체력을 키우기');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(6, 9, '2020-04-03', '8000', '물 많이 마시기');
insert into workout_list(member_no, workout_list_no, workout_date, walk_count, etc)
  values(7, 10, '2020-05-01', '4400', '계단 오르기');
  
  
-- 운동리스트태그
insert into workout_list_tag(workout_no, workout_list_no)
  values (1,1);
insert into workout_list_tag(workout_no, workout_list_no)
  values (2,1);
insert into workout_list_tag(workout_no, workout_list_no)
  values (3,2);
insert into workout_list_tag(workout_no, workout_list_no)
  values (4,2);
insert into workout_list_tag(workout_no, workout_list_no)
  values (5,3);
insert into workout_list_tag(workout_no, workout_list_no)
  values (5,3);
insert into workout_list_tag(workout_no, workout_list_no)
  values (6,4);
insert into workout_list_tag(workout_no, workout_list_no)
  values (7,4);
insert into workout_list_tag(workout_no, workout_list_no)
  values (8,4);
insert into workout_list_tag(workout_no, workout_list_no)
  values (10,2);
  
-- 캘린터 첨부파일
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(1, 1, 'user/user/com/bitcamp', 'a.gif');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(2, 1, 'user/user/com/bitcamp1', 'a1.gif');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(3, 2, 'user/user/com/bitcamp2', 'b1.mp4');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(4, 3, 'user/user/com/bitcamp2', 'b2.png');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(5, 4, 'user/user/com/bitcamp3', 'c1.png');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(6, 4, 'users/users/com/bitcamp3', 'd1.gif');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(7, 5, 'users/users/com/bitcamp4', 'a3.mp4');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(8, 1, 'users/users/com/bitcamp5', 'e1.gif');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(9, 2, 'users/users/com/bitcamp6', 'e2.gif');
insert into calendar_files(file_no, calendar_no, path, file_type)
  values(10, 4, 'users/users/com/bitcamp9', 'e3.mp4');
  
  -- 운동태그
insert into workout_tags(tag_no, name)
  values (1,'하체튼튼');
insert into workout_tags(tag_no, name)
  values (2,'상체튼튼');
insert into workout_tags(tag_no, name)
  values (3,'근육위주');
insert into workout_tags(tag_no, name)
  values (4,'대회위주');
insert into workout_tags(tag_no, name)
  values (5,'체력위주');
insert into workout_tags(tag_no, name)
  values (6,'체중감략');
insert into workout_tags(tag_no, name)
  values (7,'제활위주');
insert into workout_tags(tag_no, name)
  values (8,'생활개선');
 
  
-- 코칭프로그램운동태그
insert into coaching_program_tags(tag_no, program_no)
  values (1,1);
insert into coaching_program_tags(tag_no, program_no)
  values (1,2);
insert into coaching_program_tags(tag_no, program_no)
  values (2,3);
insert into coaching_program_tags(tag_no, program_no)
  values (3,3);
insert into coaching_program_tags(tag_no, program_no)
  values (3,4);
insert into coaching_program_tags(tag_no, program_no)
  values (4,2);
insert into coaching_program_tags(tag_no, program_no)
  values (5,6);
insert into coaching_program_tags(tag_no, program_no)
  values (6,5);
insert into coaching_program_tags(tag_no, program_no)
  values (6,3);
insert into coaching_program_tags(tag_no, program_no)
  values (8,3);
  

  










  
  
  
  
  
  
  
  
  
  
  
  
  
  