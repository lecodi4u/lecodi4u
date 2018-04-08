package com.lecodi.foru.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.MemberMapper;
import com.lecodi.foru.vo.Member;

@Repository("memberDAO")
public class MemberDAO {
	
	@Autowired
	SqlSession sqlsession;
	@Autowired
	SqlSessionTemplate mybatis;
   
	private static final Logger logger = LoggerFactory.getLogger(MemberDAO.class);
   
	
		/*
		 * 회원 가입 처리
		 */
		public boolean joinMember(Member join){
			logger.info("Join Member Start");
			System.out.println("DAO유저 정보" + join.toString());
			MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
			int cnt = 0;
			try{
			cnt = mapper.joinMember(join);
			logger.info("Join Member Result : " + cnt);
			
	   		} catch(Exception e) {
				e.printStackTrace();
			} if(cnt == 1) {
				logger.info("Join Member Success");
				return true;
				
			} else {
				logger.info("Join Member Fail");
				return false;
			}
		}
	
		public int checkDuplicate(Member member){
			System.out.println("---> mybatis로 checkDuplicate() 기능처리");
			return mybatis.selectList("MemberDAO.checkDuplicate", member).size();
		}
	
	
		/**
		 * 로그인
		 * @param userid
		 * @return password
		 */
		public String login(String userid){
			String password = "";
			try{
				MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
				password = mapper.login(userid);
			}catch(Exception e){
				e.printStackTrace();
			}
			return password;
		}

}
