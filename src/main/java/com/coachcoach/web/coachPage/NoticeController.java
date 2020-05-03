package com.coachcoach.web.coachPage;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.domain.CoachingProgramBoard;
import com.coachcoach.service.CoachingProgramBoardService;
import com.coachcoach.service.CoachingProgramService;

@Controller
@RequestMapping("/coachPage/notice")
public class NoticeController {

  @Autowired
  HttpSession session;

  @Autowired
  CoachingProgramBoardService coachingProgramBoardService;

  @Autowired
  CoachingProgramService coachingProgramService;

  @GetMapping("addForm")
  public void addForm(Model model) throws Exception {
    int coachNo = ((Coach)session.getAttribute("loginUser")).getNo();
    List<CoachingProgram> list = coachingProgramService.list(coachNo);
    model.addAttribute("list", list);
  }

  @PostMapping("add")
  public void add(CoachingProgramBoard coachingProgramBoard, int programNo) throws Exception {
    coachingProgramBoard.setCoachNo(((Coach)session.getAttribute("loginUser")).getNo());
    coachingProgramBoard.setProgramNo(programNo);
    System.out.println(coachingProgramBoard.getProgramNo());
    coachingProgramBoardService.add(coachingProgramBoard);
  }

  @PostMapping("delete")
  public String delete(int no) throws Exception {
    coachingProgramBoardService.delete(no);
    return "redirect:list";
  }

  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    CoachingProgramBoard board = coachingProgramBoardService.get(no);
    board.setContent(board.getContent().replace("\n", "<br>"));
    model.addAttribute("detail", board);
  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    int coachNo = ((Coach)session.getAttribute("loginUser")).getNo();
    model.addAttribute("list", coachingProgramBoardService.listByCoachNo(coachNo));
  }

  @PostMapping("update")
  public void update(CoachingProgramBoard coachingProgramBoard) throws Exception {
    coachingProgramBoardService.update(coachingProgramBoard);
  }

  @PostMapping("updateForm")
  public void updateForm(Model model, int no) throws Exception {
    model.addAttribute("detail", coachingProgramBoardService.get(no));
  }

}
