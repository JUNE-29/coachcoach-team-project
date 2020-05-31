package com.coachcoach.web.myPage;

import java.sql.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.ToDoList;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramBoardService;
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
  @Autowired
  CoachingProgramBoardService coachingProgramBoardService;

  @GetMapping("list")
  public void list(Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    httpSession.setAttribute("memberNo", member.getNo());
    model.addAttribute("findAll", toDoListService.findAll(member.getNo()));
    model.addAttribute("memberNo", member.getNo());
    model.addAttribute("notices", coachingProgramBoardService.getByMemberNo(member.getNo()));
  }

  @GetMapping("noticeList")
  @ResponseBody
  public Object noticeList(int no) throws Exception {
    return coachingProgramBoardService.get(no);
  }


  @ResponseBody
  @PostMapping("toDoListAdd")
  public void toDoListAdd(ToDoList toDoList) throws Exception {
    toDoList.setMemberNo(((Member) httpSession.getAttribute("loginUser")).getNo());
    toDoList.setCreateDate(String.valueOf(new Date(System.currentTimeMillis())));
    if (toDoListService.add(toDoList) > 0) {
    } else {
      throw new Exception("오류 발생");
    }
  }

  // 개별삭제
  @GetMapping("toDoListDelete")
  public String toDoListDelete(int toDoListNo) throws Exception {
    toDoListService.delete(toDoListNo);
    return "redirect:list";
  }

  @PostMapping("toDoListUpdate")
  public void toDoListUpdate(ToDoList toDoList) throws Exception {
    toDoList.setMemberNo(((Member) httpSession.getAttribute("loginUser")).getNo());
    if (toDoListService.update(toDoList) > 0) {
    } else {
      throw new Exception("오류 발생");
    }
  }

  // 선택삭제
  @GetMapping("toDoListTestDelete")
  public String toDoListTestDelete(String str) throws Exception {
    String str1[] = str.split(";");
    int itemNo = 0;
    for (int i = 0; i < str1.length; i++) {
      itemNo = Integer.parseInt(str1[i]);
      toDoListService.delete(itemNo);
    }
    return "redirect:list";
  }
}
