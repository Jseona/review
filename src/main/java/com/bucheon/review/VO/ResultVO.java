package com.bucheon.review.VO;

import lombok.Data;

@Data
public class ResultVO {
    private int rno; //수강평번호
    private int sno; //학생번호
    private String rsubject; //제목
    private String rcontent; //내용
    private int rgrade; //점수
    //추가(Join)
    private String sname; //학생이름을 추가
    private String sphone; //전화번호
}
