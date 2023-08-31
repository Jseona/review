package com.bucheon.review.Service;

import com.bucheon.review.DAO.ResultDAO;
import com.bucheon.review.VO.ResultVO;
import com.bucheon.review.Service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResultServiceImpl implements ResultService {
    @Autowired
    ResultDAO resultDAO;

    /*조회*/
    public List<ResultVO> selectAllList(int sno) throws Exception {
        return resultDAO.selectAllList(sno);
    }

}