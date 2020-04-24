package com.coachcoach.web.myPage;

import java.io.File;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.FoodBoard;
import com.coachcoach.service.FoodBoardService;

@Controller
@RequestMapping("/myPage/dietDiary")
public class DietDiaryController {

  @Autowired
  FoodBoardService foodBoardService;
  @Autowired
  ServletContext servletContext;

  @GetMapping("list")
  public void list(Model model) throws Exception {
    model.addAttribute("list", foodBoardService.list(1));
  }

  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    model.addAttribute("foodBoard", foodBoardService.get(no));
  }



  @GetMapping("addForm")
  public void addForm() {}

  @PostMapping("add")
  public void add(FoodBoard foodBoard, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/foodBoard");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      foodBoard.setPhotoFilePath(filename);
    }

    if (foodBoardService.add(foodBoard) > 0) {
    } else {
      throw new Exception("게시물을 추가할 수 없습니다.");
    }
  }


  @GetMapping("updateForm")
  public void updateForm(int no, Model model) throws Exception {
    model.addAttribute("foodBoard", foodBoardService.get(no));
  }

  @PostMapping("update")
  public void update(FoodBoard foodBoard, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/foodBoard");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      foodBoard.setPhotoFilePath(filename);
    }

    if (foodBoardService.update(foodBoard) > 0) {
    } else {
      throw new Exception("게시물을 수정할 수 없습니다.");
    }
  }



  @GetMapping("delete")
  public void delete(int no) throws Exception {
    foodBoardService.delete(no);
  }
}
