package com.controller;

import com.model.BoardVO;
import com.model.Criteria;
import com.model.PageVO;
import com.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService bservice;

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    //페이징된 게시글 목록 리스트
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public void listGET(Criteria cri, Model model) throws Exception {
        int total = bservice.boardCount(cri);
        PageVO pv = new PageVO(cri, total);
        logger.info("keyword=" + cri.getKeyword());
        logger.info("tpta; = " + total);
        logger.info("bservice.boardListPaging()" + bservice.boardListPaging(cri));
        model.addAttribute("list", bservice.boardListPaging(cri));
        model.addAttribute("page", pv);
    }

    /* 글쓰기를 위한 controller */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registGET() throws Exception {
        logger.info("regist get........");
        return "board/write";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registPOST(BoardVO board) throws Exception {
        logger.info("regist post......." + board);

        bservice.boardWrite(board);

        return "redirect:list";
    }


    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String detailGET(@RequestParam int bnum, Model model) throws Exception {
        logger.info("detail GET......" + bnum);
        model.addAttribute("bom", bservice.boardDetail(bnum));
        return "board/detail";
    }


    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyGET(int bnum, Model model) throws Exception {
        logger.info("modify GET......" + bnum);
        model.addAttribute("bom", bservice.boardDetail(bnum));

        return "board/modify";
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifyPOST(BoardVO bom) throws Exception {

        logger.info("modify POST......");
        bservice.boardModify(bom);

        //return "redirect:list";
        return "redirect:detail?bnum=" + bom.getNumber();

    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteGET(@RequestParam int bnum, Model model) throws Exception {
        logger.info("delete GET......" + bnum);
        bservice.boardDel(bnum);

        return "redirect:list";
    }

    @RequestMapping(value = "/replyboard", method = RequestMethod.GET)
    public void replyGET() throws Exception {
        logger.info("replyboard GET......");

        //return "board/replyboard";
    }

}
