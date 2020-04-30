package com.coachcoach.web.serviceCenter;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.NoticeBoard;
import com.coachcoach.service.NoticeBoardService;

@Controller
@RequestMapping("serviceCenter/noticeBoard")
public class NoticeBoardController {
	
	 static Logger logger = LogManager.getLogger(NoticeBoardController.class);
  @Autowired
  NoticeBoardService noticeBoardService;

  public NoticeBoardController() {
    logger.debug("BoardController 생성됨!");
  }
  
  @GetMapping("form")
  public void form() throws Exception {}

  @PostMapping("add")
  public String add(NoticeBoard noticeboard) throws Exception {
    noticeBoardService.add(noticeboard);
    return "redirect:list";
  }

  @GetMapping("delete")
  public String delete(int no) throws Exception {
    if (noticeBoardService.delete(no) > 0) {
      return "redirect:list";
    } else {
      throw new Exception("삭제할 게시물 번호가 유효하지 않습니다.");
    }
  }

  @GetMapping("detail")
  public void detail(int no, Model model) throws Exception {
    NoticeBoard noticeboard = noticeBoardService.get(no);
    model.addAttribute("noticeBoard", noticeboard); //model.addAttribute("noticeboard", noticeboard);
  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<NoticeBoard> noticeboards = noticeBoardService.list();
    model.addAttribute("list", noticeboards);
  }

  @GetMapping("updateForm")
  public void updateForm(int no, Model model) throws Exception {
    model.addAttribute("noticeBoard", noticeBoardService.get(no));
  }

  @PostMapping("update")
  public String update(NoticeBoard noticeboard) throws Exception {
    if (noticeBoardService.update(noticeboard) > 0) {
      return "redirect:list";
    } else {
      throw new Exception("변경할 게시물 번호가 유효하지 않습니다.");
    }
  }
}
