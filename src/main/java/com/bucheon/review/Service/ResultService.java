package com.bucheon.review.Service;

import com.bucheon.review.VO.ResultVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface ResultService {
    /*조회*/
    public List<ResultVO> selectAllList(int sno) throws Exception;
}