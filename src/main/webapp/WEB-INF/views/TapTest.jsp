<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

<meta charset="UTF-8">
<style>

	input[type="radio"] {display: none;}
	input[type="radio"] + label {display:inline-block; padding: 20px; background: #ccc; color: #999; font-size: 14px; cursor: pointer;}
	input[type="radio"]:checked + label {background: #aaa; color: #000;}

	.conbox {width:500px; height: 600px; background: #aaa; margin: 0 auto; display: none;}
	input[id="tab01"]:checked ~ .con1 {display: block;}
	input[id="tab02"]:checked ~ .con2 {display: block;}
	input[id="tab03"]:checked ~ .con3 {display: block;}

</style>

	<title>SeeU Shop</title>
</head>
<body>

<h1>
	<a href="/">SeeU Shop</a>
</h1>

<div class="tab_content">
	<input type="radio" name="tabmenu" id="tap01" checked>
	<label for = "tap01">컨텐츠 탭버튼01</label>
	<input type="radio" name="tabmenu" id="tap02">
	<label for = "tap02">컨텐츠 탭버튼02</label>
	<input type="radio" name="tabmenu" id="tap03">
	<label for = "tap03">컨텐츠 탭버튼03</label>

	//컨텐츠 내용01
	<div class = "conbox con1">
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
	</div>

	//컨텐츠 내용02
	<div class = "conbox con2">
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
	</div>

	//컨텐츠 내용03
	<div class = "conbox con3">
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
	</div>

</div>




<br><br>

<table>
	<th>선택 Item</th>
	<th>수량</th>
	<th>금액</th>

	<tr>
		<th>선택 Item 칸</th>
		<th>수량 칸</th>
		<th>금액 칸</th>
	</tr>
</table>
<br><br>

<%--
<img src="resources/img/image.jpg" style="max-width: 300; height: auto;">
 --%>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
