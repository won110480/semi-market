package com.controller;

import java.util.List;

import com.model.BoardVO;
import com.model.Criteria;
import com.service.BoardService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardListPaging {

	@Autowired
	private BoardService boardservice;
	
		@Test
		public void testPaging() throws Exception {
			Criteria cri = new Criteria();
			
//			cri.setPageNum(3);
//			cri.setAmount(10);
//			
	
			List<BoardVO> list = boardservice.boardListPaging(cri);
			
			
			list.forEach(board->Logger.getLogger(""+board));
		}
		
	
	
	
}
