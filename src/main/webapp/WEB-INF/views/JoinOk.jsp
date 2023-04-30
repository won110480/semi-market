<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");

  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  String name = request.getParameter("name");
  String phone = request.getParameter("phone");
  String zipCode = request.getParameter("ZIP_CODE");
  String addr = request.getParameter("ADDR");
  String addrDetail = request.getParameter("ADDR_DETAIL");
  String email = request.getParameter("EMAIL");
  String gender = request.getParameter("gender");
  String joinDate = request.getParameter("join_date");

  // 1.변수선언
  String url = "jdbc:oracle:thin:@localhost:1521:xe";
  String uid = "JSP";
  String upw = "JSP";

  Connection conn = null;
  PreparedStatement pstmt = null;

  String sql = "insert into members values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

  try{
    // 1. 드라이버 로드
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // 2. conn 생성
    conn = DriverManager.getConnection(url, uid, upw);

    // 3. pstmt 생성
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, pw);
    pstmt.setString(3, name);
    pstmt.setString(4, phone);
    pstmt.setString(5, zipCode);
    pstmt.setString(6, addr);
    pstmt.setString(7, addrDetail);
    pstmt.setString(8, email);
    pstmt.setString(9, gender);
    pstmt.setString(10, joinDate);

    // 4. sql문 실행
    int result = pstmt.executeUpdate();

    if(result == 1){ // 성공
      response.sendRedirect("JoinSucces.jsp");
    } else{ // 실패
      response.sendRedirect("JoinFail.jsp");
    }

  } catch(Exception e){
    e.printStackTrace();
  } finally{
    try{
      if(conn != null) conn.close();
      if(pstmt != null) pstmt.close();
    } catch(Exception e){
      e.printStackTrace();
    }
  }
%>