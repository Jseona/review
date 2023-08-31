package com.bucheon.review.Service;

import com.bucheon.review.VO.ReviewVO;

import java.util.List;

public interface ReviewService {
    /*조회*/
    public List<ReviewVO> selectAllList() throws Exception;

    /*삽입*/
    public void insert(ReviewVO reviewVO) throws Exception;

    /*수정*/
    public ReviewVO selectOneList(int rno) throws Exception;
    public void update(ReviewVO reviewVO) throws Exception;

    /*삭제*/
    public void delete(int rno) throws Exception;
}
