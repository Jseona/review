package com.bucheon.review.Service;

import com.bucheon.review.DAO.ReviewDAO;
import com.bucheon.review.VO.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewService{
    @Autowired
    ReviewDAO reviewDAO;

    /*조회*/
    public List<ReviewVO> selectAllList() throws Exception {
        return reviewDAO.selectAllList();
    }

    /*삽입*/
    public void insert(ReviewVO reviewVO) throws Exception {
        reviewDAO.insert(reviewVO);
    }

    /*수정*/
    public ReviewVO selectOneList(int rno) throws Exception {
        return reviewDAO.selectOneList(rno);
    }
    public void update(ReviewVO reviewVO) throws Exception {
        reviewDAO.update(reviewVO);
    }

    /*삭제*/
    public void delete(int rno) throws Exception {
        reviewDAO.delete(rno);
    }
}
