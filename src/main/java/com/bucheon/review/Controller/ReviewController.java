package com.bucheon.review.Controller;

import com.bucheon.review.Service.ReviewService;
import com.bucheon.review.VO.ReviewVO;
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
public class ReviewController {
    @Autowired
    ReviewService reviewService;

    //조회
    @GetMapping("/review/list")
    public ModelAndView getReviewList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<ReviewVO> lists = reviewService.selectAllList(); //추가
        System.out.println(lists.size());
        ModelAndView mav = new ModelAndView("/review/list");
        mav.addObject("lists", lists); //추가
        return mav;
    }

    //삽입(등록)
    @GetMapping("/review/insert")
    public ModelAndView getReviewInsert( HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("/review/insert");
        return mav;
    }

    @PostMapping("/review/insert") //파일이 없는 작업은 redirect:맵핑이름
    public ModelAndView postReviewInsert(@ModelAttribute("ReviewVO") ReviewVO reviewVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
        reviewService.insert(reviewVO);

        ModelAndView mav = new ModelAndView("redirect:/review/list");
        return mav;
    }

    //수정
    @GetMapping("/review/update")
    public ModelAndView getReviewUpdate(@RequestParam("rno") int rno, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ReviewVO data = reviewService.selectOneList(rno);

        ModelAndView mav = new ModelAndView("/review/update");
        mav.addObject("data", data);
        return mav;
    }

    @PostMapping("/review/update") //파일이 없는 작업은 redirect:맵핑이름
    public ModelAndView postReviewUpdate(@ModelAttribute("ReviewVO") ReviewVO reviewVO,HttpServletRequest request, HttpServletResponse response) throws Exception {
        reviewService.update(reviewVO);

        ModelAndView mav = new ModelAndView("redirect:/review/list");
        return mav;
    }

    //삭제
    @GetMapping("/review/delete")
    public ModelAndView getReviewDelete(@RequestParam("rno") int rno, HttpServletRequest request, HttpServletResponse response) throws Exception {
        reviewService.delete(rno);

        ModelAndView mav = new ModelAndView("redirect:/review/list");
        return mav;
    }
}
