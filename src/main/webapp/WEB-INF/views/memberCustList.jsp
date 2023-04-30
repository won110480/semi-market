<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

<meta charset="UTF-8">

<style>


</style>

	<title>회원 목록</title>

	<%--<script>
		$(document).ready(function(){

			$("h3").click(function(){

				$.ajax({

					url : "a12_data.jsp",
					dataType : "json",
					success : function(data){


					}
				});
			});
		});

	</script>--%>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script>

		function cust_view() {
			$.ajax({
				url: "/cust_member/list", // a.jsp 의 제이슨오브젝트값을 가져옴
				type: "get",
				dataType: "json", // 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
				data : {},
				success: function () {
					console.log("success");
				},
				error: function () {
					console.log("error");
				},
				complete: function () {
					console.log("complete");
				}
			});

		}

	</script>






</head>
<body>


<input type="button" onclick="cust_view()" id="btn_cust" value="회원 정보 보기">
<div id="con"></div>

<table border = "1">

	<b1> 회원 목록 </b1>


	<th>체크박스</th>
	<th>No.</th>
	<th>아이디</th>
	<th>가입일자</th>
	<th>전월 구매금액</th>
	<th>구매등급</th>
	<th>CS등급</th>
	<th>기타</th>

	<tr>
		<td>체크박스 칸</td>
		<td>No. 칸</td>
		<td>아이디 칸</td>
		<td>가입일자 칸</td>
		<td>전월 구매금액 칸</td>
		<td>구매등급 칸</td>
		<td>CS등급 칸</td>
		<td>기타 칸</td>
	</tr>

</table>

<br><br>

<table>
	<th>아이디</th>
	<th>기타(코멘트) 입력</th>
	<th>CS등급 설정</th>
	<th>삭제</th>

	<tr>
		<th>아이디 칸</th>
		<th>기타(코멘트) 입력 칸</th>
		<th>CS등급 설정 칸</th>
		<th>삭제 버튼</th>
	</tr>
</table>

</body>
</html>





