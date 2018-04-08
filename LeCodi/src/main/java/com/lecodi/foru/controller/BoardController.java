package com.lecodi.foru.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lecodi.foru.dao.BoardDAO;
import com.lecodi.foru.vo.Board;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	BoardDAO bdao;
	
	/**
	 * 고객센터(board main) 페이지
	 */
	@RequestMapping(value = "csc", method = RequestMethod.GET)
	public String csc(){
		return "board/csc";
	}
	
	
	/**
	 * 공지사항 페이지
	 * 공지사항에 저장된 글 불러와 페이지로 전송
	 */
	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String notice(){
		return "board/notice";
	}
	
	
	/**
	 * 글 상세보기
	 * 글 번호를 넘겨줘서 글 받아옴
	 */
	@RequestMapping(value = "viewBoard", method = RequestMethod.GET)//post로 보내나
	public String viewBoard(){
		return "board/viewBoard";
	}
	
	
	/**
	 * 문의하기 페이지 연결
	 */
	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public String qna(){
		return "board/qna";
	}
	
	
	/**
	 * 문의글 작성
	 * @param session, Board
	 * @return 문의 리스트
	 */
	@RequestMapping(value = "writeQ", method = RequestMethod.POST)
	public String writeQ(HttpSession session, Board b){
		b.setUserid((String)session.getAttribute("loginId"));
		int result = bdao.writeQ(b);
		System.out.println(result);
		return "board/qnaList";
	}
	
	
	/**
	 * 내 문의 내역 페이지
	 */
	@RequestMapping(value = "qnaList", method = RequestMethod.GET)
	public String qnaList(){
		return "board/qnaList";
	}
	
	
	/**
	 * 자주 묻는 질문
	 */
	@RequestMapping(value = "bestQuestion", method = RequestMethod.GET)
	public String bestQuestion(){
		return "board/bestQuestion";
	}

}






