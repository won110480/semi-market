package com.service;

import com.google.gson.Gson;
import com.mapper.MemberCustMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberCustService {

    @Autowired
    MemberCustMapper mapper;

    // 테스트 리스트
    public String memberCust() {
        return new Gson().toJson(mapper.memberCust());
    }

}
