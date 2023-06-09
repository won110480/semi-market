package com.mapper;

import com.model.MemberCustVO;
import com.model.itemVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class MemberCustMapper {

    @Inject
    private SqlSession sqlSession;
    private static final String namespace = "com.mapper.MemberCustMapper";

    //전체 목록 리스트
    public List<MemberCustVO> memberCust() {
        System.out.println("step3 : " + namespace + ".memberCust");
        return sqlSession.selectList(namespace + ".memberCust");
    }
/*

    public itemList<itemVO> itemList() {
        return sqlSession.selectList(namespace + ".itemList");
    }
*/

}
