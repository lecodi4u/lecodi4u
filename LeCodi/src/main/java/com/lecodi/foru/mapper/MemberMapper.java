package com.lecodi.foru.mapper;

import com.lecodi.foru.vo.Member;

public interface MemberMapper {

	// 회원 가입
	int joinMember(Member join);
	
	// 로그인
	String login(String userid);

	String checkStatus(String userid);

}
