<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

<meta charset="UTF-8">
<style>
	table {
		width:930px;
		height:870px;
	}
	td, th {
 		border : 3px solid black;
 		border-collapse : collapse;
 		text-align: left;
 		vertical-align : top;
	}
	a:link{
		color:black;
	}
	a:visited{
		color:pink;
	}
	a:hover{
		color:red;
	}
	a:active{
		color:skyblue;
	}

</style>

	<title>SeeU Shop</title>



</head>
<body>

<h1>
	<a href="/">SeeU Shop</a>
</h1>
<h2 style="text-align:right"> <a href="/Join"> Join </a> &nbsp;&nbsp;&nbsp;
							  <a href="/Login"> Login </a>
</h2>

<table style="table-layout:fixed;">
	<tr><!-- 첫번째 줄 시작 -->
	    <td> <input type="checkbox" name="1_1box" value="1_1box"> <br>
	    	 <img alt="p_o" src="resources/img/nail/nail01.jpg" style="max-width: 300; height: auto;"> <br>
	    	 <h3>item : 1_1 <br> price : 99,999</h3>
	    </td>
	    <td> <input type="checkbox" name="1_2box" value="1_2box"> <br>
	    	 <img alt="p_o" src="resources/img/nail/nail02.jpg" style="max-width: 300; height: auto;"> <br>
	    	 <h3>item : 1_2 <br> price : 99,999</h3>
	    </td>
	    <td> <input type="checkbox" name="1_3box" value="1_3box"> <br>
	    	 <img alt="p_o" src="resources/img/nail/nail03.jpg" style="max-width: 300; height: auto;"> <br>
	    	 <h3>item : 1_3 <br> price : 99,999</h3>
	    </td>
	</tr>
	<tr><!-- 두번째 줄 시작 -->
	    <td> <input type="checkbox" name="2_1box" value="2_1box"> <br>
	    	 <img alt="p_o" src="resources/img/nail/nail04.jpg" style="max-width: 300; height: auto;"> <br>
	    	 <h3>item : 2_1 <br> price : 99,999</h3>
	    </td>
	    <td> <input type="checkbox" name="2_2box" value="2_2box"> <br>
	    	 <img alt="p_o" src="resources/img/nail/nail05.jpg" style="max-width: 300; height: auto;"> <br>
	    	 <h3>item : 2_2 <br> price : 99,999</h3>
	    </td>
	    <td> <input type="checkbox" name="2_3box" value="2_3box"> <br>
	    	 <img alt="p_o" src="resources/img/nail/nail06.jpg" style="max-width: 300; height: auto;"> <br>
	    	 <h3>item : 2_3 <br> price : 99,999</h3>
	    </td>
	</tr>
    </table>
<br><br>

<h1> 선택 Item &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 수량 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 금액
</h1>
<br><br>

<%--
<img src="resources/img/image.jpg" style="max-width: 300; height: auto;">
 --%>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
