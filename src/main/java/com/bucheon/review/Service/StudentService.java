package com.bucheon.review.Service;

import com.bucheon.review.VO.StudentVO;

import java.util.List;

public interface StudentService {
    /*조회*/
    public List<StudentVO> selectAllList() throws Exception;

    /*삽입*/
    public void insert(StudentVO studentVO) throws Exception;

    /*수정*/
    public StudentVO selectOneList(int sno) throws Exception;
    public void update(StudentVO studentVO) throws Exception;

    /*삭제*/
    public void delete(int sno) throws Exception;
}
