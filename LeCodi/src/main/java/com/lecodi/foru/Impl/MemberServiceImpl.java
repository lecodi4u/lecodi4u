package com.lecodi.foru.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lecodi.foru.dao.MemberDAO;
import com.lecodi.foru.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public int checkDuplicate(Member member){
		int rowcount = memberDAO.checkDuplicate(member);
		return rowcount;
	}
	

}
