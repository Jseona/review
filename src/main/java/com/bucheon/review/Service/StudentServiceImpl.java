package com.bucheon.review.Service;

import com.bucheon.review.DAO.StudentDAO;
import com.bucheon.review.VO.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    StudentDAO studentDAO;

    /*조회*/
    public List<StudentVO> selectAllList() throws Exception {
        return studentDAO.selectAllList();
    }

    /*삽입*/
    public void insert(StudentVO studentVO) throws Exception {
        studentDAO.insert(studentVO);
    }

    /*수정*/
    public StudentVO selectOneList(int sno) throws Exception {
        return studentDAO.selectOneList(sno);
    }
    public void update(StudentVO studentVO) throws Exception {
        studentDAO.update(studentVO);
    }

    /*삭제*/
    public void delete(int sno) throws Exception {
        studentDAO.delete(sno);
    }
}
