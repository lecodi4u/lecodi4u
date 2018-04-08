package com.lecodi.foru.controller;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lecodi.foru.Impl.MemberService;
import com.lecodi.foru.dao.MemberDAO;
import com.lecodi.foru.vo.Member;

@Controller
@RequestMapping("member")
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	MemberDAO mdao;
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	/**
	 * 동의 화면으로 연결
	 * @return argreePage
	 */
	@RequestMapping(value ="agree", method = RequestMethod.GET)
	public String agreePage(){
		logger.info("---> Move agreePage");
		return "member/agreePage";
	}
	
	
	/**
	 * 회원가입 페이지 연결
	 * @return join form
	 */
	@RequestMapping(value = "joinForm", method = RequestMethod.POST)
	public String joinForm(Model model){
			
			logger.info("---> Move JoinForm");
			
			Member member = new Member();
			model.addAttribute("member", member);
			
			return "member/joinForm";
	}
	
	
	/**
	 * 회원가입 정보 받아 저장
	 * @return main/login 어디로 연결? 아님 가입 완료 메세지 출력
	 */
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(Member join, Model model){
		
		logger.info("---> Join Member Start");
		
		boolean insert = mdao.joinMember(join);
		
		if(insert){
			logger.info("Join Member Scucess");
			return "redirecet:joinComplete";
		}else{
			logger.info("---> Join Member fail");
			
			// 실패 메시지 Alert
			model.addAttribute("resultMsg","Fail");
			// 입력했던 내용 보존
			model.addAttribute("member", join);
		
			return "member/joinForm";
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value = "duplicate", method = RequestMethod.POST)
	public String checkDuplicate(HttpServletRequest request) {
		logger.info("---> 아이디 중복검사");
		String userid = request.getParameter("userid");
		
		System.out.println(userid);
		
		if(userid.contains("@")){			
			return "@";
		}else if(userid.trim().length()== 0){
			return "blank";
		}else{
			Member member = new Member();
			member.setUserid(userid);
			int rowcount = memberService.checkDuplicate(member);
			
			System.out.println(rowcount);
			
			return String.valueOf(rowcount);
		}

	}
	
	
	/**
	 * 아이디 중복체크
	 * @return 현재 가입중인 페이지로 바로 연결 아니면 바로 값을 받아다 사용할 수 있도록
	 */
	@RequestMapping(value = "checkid", method = RequestMethod.POST)
	public String checkid(){
		return "";
	}
	
	
	/**
	 * 가입 완료 페이지
	 * 가입 완료 메세지 출력 후 메인과 로그인 페이지 연결 버튼 출력
	 * @return main/login page
	 */
	@RequestMapping(value ="joincompletion", method = RequestMethod.GET)
	public String joincom(){
		return "../member/joinCompletion";
	}
	
	
	/**
	 * 로그인 페이지로 연결
	 * @return login form
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm(){
		return "member/loginForm";
	}
	
	
	/**
	 * 로그인 정보
	 * 로그인 된 아이디 세션에 저장 후 메인으로 돌려보냄
	 * @return main
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String userid, String password, HttpSession session){
		
		String checkPass = mdao.login(userid);
		
		if(checkPass == null){	//아이디X
			session.setAttribute("result", "아이디 X");
			return "redirect:../member/login";
		}
		
		if(checkPass.equals(password)){
			session.setAttribute("loginId", userid);
			return "redirect:../";
		}else{	//비밀번호 일치X
			session.setAttribute("result", "비밀번호 오류");
		}
		
		return "redirect:../member/login";
	}
	
	
	/**
	 * 아이디, 비밀번호 찾기
	 */
	@RequestMapping(value = "find", method = RequestMethod.GET)
	public String find(){
		return "member/find";
	}
	
	
	/**
	 * 아이디, 비밀번호 찾기 완료 페이지
	 */
	@RequestMapping(value = "findComplete", method = RequestMethod.GET)
	public String findComplete(){
		return "../member/findComplete";
	}
	
	
	/**
	 * 로그아웃
	 * 세션에 저장된 정보 삭제 후 메인으로 돌려보냄
	 * @return main
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("loginId");
		return "redirect:../";
	}
	
	
	/**
	 * 마이 페이지로 연결
	 * @return mypage
	 */
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String mypage(){
		return "member/mypage";
	}

}
