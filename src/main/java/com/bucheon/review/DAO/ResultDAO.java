package com.bucheon.review.DAO;

import com.bucheon.review.VO.ResultVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ResultDAO {
    /*조회*/
    public List<ResultVO> selectAllList(int sno) throws Exception;
}