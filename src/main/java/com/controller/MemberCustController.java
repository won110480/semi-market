package com.controller;

import com.service.MemberCustService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/membercust")
public class MemberCustController {

    @Autowired
    private MemberCustService service;

    //페이징된 게시글 목록 리스트
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String memberCust() {
        return service.memberCust();
    }

}