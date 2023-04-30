<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

<meta charset="UTF-8">

<style>


</style>

	<title>회원 상세 페이지</title>

	<script>
		$(document).ready(function(){

			$("h3").click(function(){

				$.ajax({

					url : "a12_data.jsp",
					dataType : "json",
					success : function(data){

						$("table").html("<tr><th>번호</th><th>이름</th><th>나이</th><th>사는곳</th></tr>");
						var show = "";

						$("table").append(show);
					}
				});
			});
		});

	</script>



	<%--<script>
		$.ajax({

			type:'get',
			url:'/membercust/list',
			data:{},
			dataType: 'json',
			success: function (data) {

				//정상 요청, 응답 시 처리 작업
				$("table").html("<tr><th>번호</th><th>이름</th><th>나이</th><th>사는곳</th></tr>");
				var show = "";

				$("table").append(show);
			}
		});
	</script>--%>




</head>
<body>

<table border = "1">

	<b1> 회원 상세 페이지 </b1>

	<tr>
		<td>가입 일자</td>
		<td>"joinDate"</td>
		<td>No.</td>
		<td>번호 표기</td>
		<td>구매 등급</td>
		<td>구매 등급 표기</td>
	</tr>
	<tr>
		<td>ID</td>
		<td colspan="3">{"id"}</td>
		<td>CS 등급</td>
		<td>CS 등급 표기</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>이름 표기</td>
		<td>휴대폰</td>
		<td>휴대폰 표기</td>
		<td>성별</td>
		<td>성별 표기</td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td>우편본호 표기</td>
		<td>주소</td>
		<td colspan="3">주소 표기</td>
	</tr>
	<tr>
		<td>상세 주소</td>
		<td colspan="5">상세 주소 표기</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td colspan="5">이메일 표기</td>
	</tr>
	<tr>
		<td>최근 구매 목록</td>
		<td colspan="4">최근 구매 목록 표기</td>
		<td>클릭시 상세 페이지 이동</td>
	</tr>
	<tr>
		<td>기타</td>
		<td colspan="5">기타 표기</td>
	</tr>

	<input type="submit" name="" value="수정">
	<input type="reset" name="" value="삭제">


</table>

</body>
</html>
