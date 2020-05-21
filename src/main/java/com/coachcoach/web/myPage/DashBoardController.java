package com.coachcoach.web.myPage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.ToDoList;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberService;
import com.coachcoach.service.ToDoListService;

@Auth(role = {Role.MEMBER})
@Controller
@RequestMapping("/myPage/dashBoard")
public class DashBoardController {

  @Autowired
  ServletContext servletContext;
  @Autowired
  HttpSession httpSession;
  @Autowired
  ToDoListService toDoListService;
  @Autowired
  MemberService memberService;


  @GetMapping("list")
  public void list(Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("findAll", toDoListService.findAll(member.getNo()));
    model.addAttribute("findByNo", toDoListService.findByNo(member.getNo()));
    model.addAttribute("memberNo", member.getNo());
  }

  @GetMapping("toDoListAddForm")
  public void toDoListAddForm(Model model) throws Exception {
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

  // 개별삭제
  @GetMapping("toDoListDelete")
  public String toDoListDelete(int toDoListNo) throws Exception {
    toDoListService.delete(toDoListNo);
    return "redirect:list";
  }

  @GetMapping("toDoListUpdateForm") // 날짜, 운동, 몸무게, 걸음수 등 수정
  public void toDoListUpdateForm(int toDoListNo, Model model) throws Exception {
    model.addAttribute("toDoList", toDoListService.findByNo(toDoListNo));
  }

  @PostMapping("toDoListUpdate")
  public void toDoListUpdate(ToDoList toDoList) throws Exception {
    toDoListService.update(toDoList);
  }

  // 선택삭제
  @GetMapping("toDoListTestDelete")
  public void toDoListTestDelete(String str) throws Exception {
    System.out.println(str);
    String str1[] = str.split(";");
    int itemNo = 0;
    for (int i = 0; i < str1.length; i++) {
      System.out.println(str1[i]);
      itemNo = Integer.parseInt(str1[i]);
      toDoListService.delete(itemNo);
    }


  }
}
