package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.FoodBoard;

public interface FoodBoardDao {

  int insert(FoodBoard foodBoard) throws Exception;
  // foodBoard 등록 시 사용

  List<FoodBoard> findAll(int memberNo) throws Exception;
  // 회원이 로그인 하고 본인의 foodBoard 게시글만 보여야 해서
  // memberNo가 필요한것같아 파라미터로 넣었습니다

  FoodBoard findByNo(int no) throws Exception;
  // 게시글 클릭시 게시글의 디테일을 보여주기 위함

  int update(FoodBoard foodBoard) throws Exception;
  // 게시글 업데이트시 사용

  int delete(int no) throws Exception;
  // 게시글 삭제시 사용
}


