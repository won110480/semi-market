package com.controller;

import com.model.BoardVO;
import com.model.Criteria;
import com.model.PageVO;
import com.service.BoardService;
import com.service.MemberCustService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/membercust")
public class MemberCustController {

    @Autowired
    private MemberCustService service;

    private static final Logger logger = LoggerFactory.getLogger(MemberCustController.class);

    //페이징된 게시글 목록 리스트
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public void memberCust(Criteria cri, Model model) throws Exception {
        int total = bservice.boardCount(cri);
        PageVO pv = new PageVO(cri, total);
        logger.info("keyword=" + cri.getKeyword());
        logger.info("tpta; = " + total);
        logger.info("bservice.boardListPaging()" + bservice.boardListPaging(cri));
        model.addAttribute("list", bservice.boardListPaging(cri));
        model.addAttribute("page", pv);
    }

}