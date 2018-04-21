package com.lecodi.foru.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.BoardMapper;
import com.lecodi.foru.vo.Board;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession session;

	private static final Logger logger = LoggerFactory.getLogger(MemberDAO.class);
	
	public int writeQ(Board b){
		int result = 0;
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		try{
			result = mapper.writeQ(b);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<Board> getList() {
		ArrayList<Board> noticeList = null;
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		try{
			noticeList = mapper.getList();
		}catch(Exception e){
			e.printStackTrace();
		}
		return noticeList;
	}
	
}
