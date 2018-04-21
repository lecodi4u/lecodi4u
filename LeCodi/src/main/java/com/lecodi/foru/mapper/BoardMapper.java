package com.lecodi.foru.mapper;

import java.util.ArrayList;

import com.lecodi.foru.vo.Board;

public interface BoardMapper {

	int writeQ(Board b);

	ArrayList<Board> getList();

}
