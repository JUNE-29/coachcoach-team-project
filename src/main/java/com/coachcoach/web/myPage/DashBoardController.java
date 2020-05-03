package com.coachcoach.web.myPage;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.ToDoList;
import com.coachcoach.service.MemberService;
import com.coachcoach.service.ToDoListService;

@Controller
@RequestMapping("/myPage/dashBoard")
public class DashBoardController {

  @Autowired
  HttpSession httpSession;

  @Autowired
  ToDoListService toDoListService;

  @Autowired
  MemberService memberService;


  @GetMapping("list")
  public void list(Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", member);
    model.addAttribute("list", toDoListService.list(member.getNo()));
  }

  @PostMapping("toDoListAddForm")
  public void toDoListAddForm(int memberNo, Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", member);
  }

  @PostMapping("toDoListAdd")
  public void toDoListAdd(ToDoList toDoList) throws Exception {
    System.out.println(toDoList.getMemberNo());
    if (toDoListService.add(toDoList) > 0) {
    } else {
      throw new Exception("프로그램을 추가할 수 없습니다.");
    }
  }

  @GetMapping("delete")
  public String delete(int no, int memberNo) throws Exception {
    toDoListService.delete(no);
    return "redirect:list?memberNo" + memberNo;

  }


}
