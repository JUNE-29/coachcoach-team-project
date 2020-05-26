package com.coachcoach.web.searchCoach;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberCoachingProgram;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/program")
public class ProgramController {

  @Autowired
  HttpSession httpSession;

  @Autowired
  CoachingProgramService coachingProgramService;

  @Autowired
  CoachService coachService;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @Autowired
  MemberService memberService;

  @GetMapping("list") // 프로그램 페이지
  public void list(Model model, @ModelAttribute("cri") Criteria cri) throws Exception {
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);
    pageMaker.setTotalCount(coachingProgramService.pageCount());

    Map<String, Object> params = new HashMap<>();
    params.put("cri", cri);
    model.addAttribute("programList", coachingProgramService.pageList(params));
    model.addAttribute("pageMaker", pageMaker);
  }

  @GetMapping("searchKeyword") // 프로그램 검색
  public void searchKeyword(Model model, String keyword) throws Exception {
    model.addAttribute("searchProgram", coachingProgramService.search(keyword));
  }

  @GetMapping("searchDetail") // 조건으로 검색
  public void searchDetail(Model model, String gender, String coachingType,
      @ModelAttribute("cri") Criteria cri) throws Exception {
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);
    pageMaker.setTotalCount(coachingProgramService.pageCount());

    Map<String, Object> params = new HashMap<>();
    params.put("cri", cri);
    params.put("gender", gender);
    params.put("coachingType", coachingType);
    model.addAttribute("searchProgram", coachingProgramService.search(params));
    model.addAttribute("pageMaker", pageMaker);
  }

  @PostMapping("searchTag") // 태그로 검색
  public void searchTag(Model model, @RequestParam("tags") String[] tags) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("tags", tags);
    model.addAttribute("searchProgram", coachingProgramService.searchTag(params));
    for (int i = 1; i < tags.length; i++) {
      model.addAttribute("tag", tags[i]);
    }
  }

  @GetMapping("selectOption") // 옵션으로 검색
  public void selectOption(Model model, String option) throws Exception {
    if (option.equals("review")) {
      model.addAttribute("searchProgram", coachingProgramService.searchReview());
    } else {
      model.addAttribute("searchProgram", coachingProgramService.searchStar());
    }
  }


  @GetMapping("detail") // 프로그램 상세보기
  public void detail(Model model, int programNo, int no) throws Exception {
    model.addAttribute("program", coachingProgramService.getProgram(programNo));
    model.addAttribute("memberProgram", memberCoachingProgramService.programList(programNo));
    model.addAttribute("star", coachingProgramService.selectStar(programNo));
  }

  @ResponseBody
  @PostMapping("reivewDetail") // 후기 조회
  public Object reivewDetail(Model model, int no) throws Exception {
    List<MemberCoachingProgram> mcp = memberCoachingProgramService.reivewstar(no);
    return mcp;
  }


  @Auth(role = Role.MEMBER)
  @PostMapping("apply/form") // 신청서
  public String applyForm(Model model, int programNo) {
    try {
      Member member = (Member) httpSession.getAttribute("loginUser");
      model.addAttribute("member", memberService.get(member.getNo()));
      model.addAttribute("program", coachingProgramService.get(programNo));
      return "program/apply/form";
    } catch (Exception e) {
      return "redirect:error";
    }
  }

  @Auth(role = Role.MEMBER)
  @PostMapping("apply/list") // 확인
  public void applyList(Model model, MemberCoachingProgram memberCoachingProgram) throws Exception {
    memberCoachingProgramService.add(memberCoachingProgram);
    model.addAttribute("program", memberCoachingProgramService.get(memberCoachingProgram.getNo()));
  }

  @GetMapping("error") // 로그인페이지 이동
  public void error() throws Exception {}

  @GetMapping("apply/accept") // 확인
  public void applyAccept() throws Exception {}

  @Auth(role = Role.MEMBER)
  @PostMapping("apply/delete") // 신청취소
  public void deleteApply(Model model, int applyNo, int programNo) throws Exception {
    memberCoachingProgramService.delete(applyNo);
    coachingProgramService.delete(programNo);
  }

  @Auth(role = Role.MEMBER)
  @PostMapping("apply/updateForm") // 신청서 수정
  public void updateFormApply(Model model, int applyNo) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));
    model.addAttribute("program", memberCoachingProgramService.get(applyNo));
  }


  @Auth(role = Role.MEMBER)
  @PostMapping("apply/update") // 신청서 수정
  public void updateApply(Model model, int applyNo, String startDate, String remark)
      throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("no", applyNo);
    params.put("startDate", startDate);
    params.put("remark", remark);
    memberCoachingProgramService.updateApply(params);

    model.addAttribute("program", memberCoachingProgramService.get(applyNo));
  }
}
