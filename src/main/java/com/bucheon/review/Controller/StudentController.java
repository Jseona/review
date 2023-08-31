package com.bucheon.review.Controller;

import com.bucheon.review.Service.StudentService;
import com.bucheon.review.VO.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("/index");
        return mav;
    }

    //조회
    @GetMapping("/student/list")
    public ModelAndView getStudentList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<StudentVO> lists = studentService.selectAllList(); //추가
        System.out.println(lists.size());
        ModelAndView mav = new ModelAndView("/student/list");
        mav.addObject("lists", lists); //추가
        return mav;
    }

    //삽입(등록)
    @GetMapping("/student/insert")
    public ModelAndView getStudentInsert( HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("/student/insert");
        return mav;
    }

    @PostMapping("/student/insert") //파일이 없는 작업은 redirect:맵핑이름
    public ModelAndView postStudentInsert(@ModelAttribute("StudentVO") StudentVO studentVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
        studentService.insert(studentVO);

        ModelAndView mav = new ModelAndView("redirect:/student/list");
        return mav;
    }

    //수정
    @GetMapping("/student/update")
    public ModelAndView getStudentUpdate(@RequestParam("sno") int sno, HttpServletRequest request, HttpServletResponse response) throws Exception {
        StudentVO data = studentService.selectOneList(sno);

        ModelAndView mav = new ModelAndView("/student/update");
        mav.addObject("data", data);
        return mav;
    }

    @PostMapping("/student/update") //파일이 없는 작업은 redirect:맵핑이름
    public ModelAndView postStudentUpdate(@ModelAttribute("StudentVO") StudentVO studentVO,HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("수정");
        System.out.println(studentVO.getSno());
        studentService.update(studentVO);

        ModelAndView mav = new ModelAndView("redirect:/student/list");
        return mav;
    }

    //삭제
    @GetMapping("/student/delete")
    public ModelAndView getStudentDelete(@RequestParam("sno") int sno, HttpServletRequest request, HttpServletResponse response) throws Exception {
        studentService.delete(sno);

        ModelAndView mav = new ModelAndView("redirect:/student/list");
        return mav;
    }
}
