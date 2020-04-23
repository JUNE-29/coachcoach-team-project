package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.Weight;

public interface WeightDao {

  // 체중 입력
  int insert(Weight weight) throws Exception;

  // 체중 리스트(그래프)
  List<Weight> findAllByMemberNo(int memberNo) throws Exception;

  // 체중 상세보기(미정)
  // Weight findByNo(int no) throws Exception;

  // 체중 수정
  int update(Weight weight) throws Exception;

  // 체중 삭제
  int delete(int no) throws Exception;

}


