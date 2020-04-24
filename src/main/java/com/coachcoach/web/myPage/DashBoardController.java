package com.coachcoach.web.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;
import com.coachcoach.service.ToDoListService;

@Controller
@RequestMapping("/myPage/dashBoard")
public class DashBoardController {

  @Autowired
  ToDoListService toDoListService;

  @Autowired
  MemberService memberService;


  @GetMapping("list")
  public void list(int memberNo, Model model) throws Exception {
    Member member = memberService.get(memberNo);
    model.addAttribute("member", member);
    model.addAttribute("list", toDoListService.list(memberNo));
  }

  @PostMapping("insert")
  public void insert() {

  }

  @GetMapping("delete")
  public String delete(int no, int memberNo) throws Exception {
    toDoListService.delete(no);
    return "redirect:list?memberNo" + memberNo;

  }


}
