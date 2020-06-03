package com.coachcoach.web.myCoach;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.coachcoach.domain.Coach;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberCoachingProgram;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.web.searchCoach.Criteria;
import com.coachcoach.web.searchCoach.PageMaker;
import com.google.gson.Gson;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/program")
public class MycoachController {

  @Autowired
  HttpSession httpSession;

  @Autowired
  CoachingProgramService coachingProgramService;

  @Autowired
  CoachService coachService;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;


  @GetMapping("list") // 마이코치
  public void mycoachList(Model model, @ModelAttribute("cri") Criteria cri) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    // 프로그램 완료시 상태변경
    List<MemberCoachingProgram> mcp =memberCoachingProgramService.allList(member.getNo());
    for (int i = 0; i < mcp.size(); i++) {
      Date today = new Date();
      SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
      if (mcp.get(i).getEndDate()== date.format(today)) {
        Map<String,Object> params = new HashMap<>();
        params.put("memberCoachingProgramNo", mcp.get(i).getNo());
        params.put("status", "진행 완료");
        memberCoachingProgramService.updateStatus(params);
      }
    }

    //  완료된 프로그램 조회
    PageMaker pageMaker1 = new PageMaker();
    pageMaker1.setCri(cri);
    Map<String, Object> apply = new HashMap<>();
    apply.put("status", "진행 완료");
    apply.put("no", member.getNo());
    pageMaker1.setTotalCount(memberCoachingProgramService.statusCount(apply));

    Map<String, Object> params = new HashMap<>();
    params.put("cri", cri);
    params.put("no", member.getNo());
    params.put("status", "진행 완료");
    model.addAttribute("programList", memberCoachingProgramService.statusList(params));
    model.addAttribute("pageMaker1", pageMaker1);

    // 진행중인 프로그램 조회
    PageMaker pageMaker2 = new PageMaker();
    pageMaker2.setCri(cri);
    Map<String, Object> apply2 = new HashMap<>();
    apply2.put("status", "진행중");
    apply2.put("no", member.getNo());
    pageMaker2.setTotalCount(memberCoachingProgramService.statusCount(apply2));

    Map<String, Object> param = new HashMap<>();
    param.put("cri", cri);
    param.put("status", "진행중");
    param.put("no", member.getNo());
    model.addAttribute("program", coachingProgramService.findByMemberNo(param));
    model.addAttribute("pageMaker2", pageMaker2);
  }

  @ResponseBody // 코치 상세보기
  @RequestMapping(value = "coachDetail", method = RequestMethod.POST)
  public void coachDetail(Model model, int no, HttpServletResponse response) throws Exception {
    Coach coach = coachService.get(no);
    Gson json = new Gson();
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    out.print(json.toJson(coach));
    out.flush();
  }

  @GetMapping("programDetail") // 프로그램 상세보기
  public void programDetail() {}

  @GetMapping("reviewForm")
  public void reviewForm(Model model, int no) {
    model.addAttribute("no", no);
  }


  @ResponseBody // 리뷰 등록
  @RequestMapping(value = "reviewUpdate", method = RequestMethod.POST)
  public String reviewUpdate(Model model, int no, String review, int starRate) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("starRate", starRate);
    params.put("memberCoachingProgramNo", no);
    params.put("review", review);
    memberCoachingProgramService.updateReview(params);
    return "myCoach/program/list";
  }
}
