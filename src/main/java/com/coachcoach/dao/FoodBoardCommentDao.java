package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.FoodBoardComment;

public interface FoodBoardCommentDao {

  int insert(FoodBoardComment foodBoardComment) throws Exception;
  // 댓글 등록 시 사용

  List<FoodBoardComment> findAll(int foodBoardNo) throws Exception;
  // 게시글 번호 입력받고 게시글에 해당하는 댓글 리스트를 나열하기 위함

  int delete(int no) throws Exception;
  // 댓글 삭제시 사용

  int deleteAll(int foodBoardNo) throws Exception;
  // 게시글 삭제시 사용
}


