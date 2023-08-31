package com.bucheon.review.Controller;

import com.bucheon.review.Service.ResultService;
import com.bucheon.review.VO.ResultVO;
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
public class ResultContoller {
    @Autowired
    ResultService resultService;

    //조회(조회할 학번을 입력받는 페이지)
    @GetMapping("/result/list")
    public ModelAndView getResultList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("/result/listform");
        return mav;
    }

    //입력받은 학번으로 데이터를 조회해서 출력 페이지
    @GetMapping("/result/resultlist")
    public ModelAndView postResultList(@RequestParam("sno") int sno, HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<ResultVO> lists = resultService.selectAllList(sno);

        ModelAndView mav = new ModelAndView("/result/list");
        mav.addObject("lists", lists);
        return mav;
    }
}
