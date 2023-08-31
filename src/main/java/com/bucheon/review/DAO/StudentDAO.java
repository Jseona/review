package com.bucheon.review.DAO;

import com.bucheon.review.VO.StudentVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StudentDAO {
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