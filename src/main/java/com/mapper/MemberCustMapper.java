package com.mapper;

import com.model.BoardVO;
import com.model.Criteria;

import java.util.List;

public interface MemberCustMapper {
	//전체 목록 리스트
	public List<BoardVO> boardList();

}
