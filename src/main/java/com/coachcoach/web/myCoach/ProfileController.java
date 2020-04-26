package com.coachcoach.web.myCoach;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach/profile")
public class ProfileController {
	@Autowired
	ServletContext servletContext;

	@Autowired
	HttpSession httpSession;

	@Autowired
	MemberService memberService;

	@GetMapping("form") // 내프로필
	public void form(Model model) throws Exception {
		Member member = (Member) httpSession.getAttribute("loginUser");
		model.addAttribute("member", memberService.get(member.getNo()));
	}

	@PostMapping("updateForm") // 프로필 사진 수정
	public String updateForm(Member member, MultipartFile photoFile) throws Exception {
		if (photoFile.getSize() > 0) {
			String dirPath = servletContext.getRealPath("/upload/member");
			String filename = UUID.randomUUID().toString();
			photoFile.transferTo(new File(dirPath + "/" + filename));
			member.setPhoto(filename);
		}

		if (memberService.update(member) > 0) {
			return "redirect:form";
		} else {
			throw new Exception("사진을 수정할 수 없습니다.");
		}
	}

	@GetMapping("delete")
	public String delete(Member member) throws Exception {
		member.setPhoto("images");
		memberService.update(member);
		return "redirect:form";
	}
}
