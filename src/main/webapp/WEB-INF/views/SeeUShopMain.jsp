<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SeeU Shop Main</title>
    <style>
        /* 탭 메뉴 스타일 */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        /* 탭 버튼 스타일 */
        .tab button {
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 17px;
        }

        /* 선택된 탭 버튼 스타일 */
        .tab button.active {
            background-color: #ccc;
        }

        /* 탭 내용 스타일 */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }
    </style>
</head>
<body>

<h1>
    <a href="/">SeeU Shop</a>
</h1>

<h2 style="text-align:right">
    <a href="/Join"> Join </a> &nbsp;&nbsp;&nbsp;
    <a href="/Login"> Login </a>
</h2>

<!-- 탭 버튼 -->
<div class="tab">
    <button class="tablinks" onclick="openTab(event, 'Tab1')" id="defaultOpen">Shoes</button>
    <button class="tablinks" onclick="openTab(event, 'Tab2')">Jewelry</button>
    <button class="tablinks" onclick="openTab(event, 'Tab3')">Food</button>
</div>


<!-- 탭 내용 -->
<div id="Tab1" class="tabcontent">

    <form action="itemForm.jsp">

    <table style="table-layout:fixed;">
        <tr><!-- 첫번째 줄 시작 -->
            <td> <input type="checkbox" id="shoes_chunkyheel_sneakers" name="1_1box" value="1_1box"> <br>
                <img alt="p_o" src="resources/img/shoes/chunkyheel_sneakers_28800.png" style="max-width: 300px; height: auto;"> <br>
                <h3>item : 통굽힐 스니커즈 <br> price : 28,800원</h3>
            </td>
            <td> <input type="checkbox" name="1_2box" value="1_2box"> <br>
                <img alt="p_o" src="resources/img/shoes/maryjane_flat_26800.png" style="max-width: 300px; height: auto;"> <br>
                <h3>item : 메리제인 플랫 슈즈 <br> price : 26,800원</h3>
            </td>
            <td> <input type="checkbox" name="1_3box" value="1_3box"> <br>
                <img alt="p_o" src="resources/img/shoes/merlin_flat_28900.png" style="max-width: 300px; height: auto;"> <br>
                <h3>item : 마린 플랫 슈즈 <br> price : 28,900원</h3>
            </td>
        </tr>
        <tr><!-- 두번째 줄 시작 -->
            <td> <input type="checkbox" name="2_1box" value="2_1box"> <br>
                <img alt="p_o" src="resources/img/shoes/middlehill_34500.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 미들힐 <br> price : 34,500원</h3>
            </td>
            <td> <input type="checkbox" name="2_2box" value="2_2box"> <br>
                <img alt="p_o" src="resources/img/shoes/oliveslipon_sneakers_27900.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 올리브 슬립온 스니커즈 <br> price : 27,900원</h3>
            </td>
            <td> <input type="checkbox" name="2_3box" value="2_3box"> <br>
                <img alt="p_o" src="resources/img/shoes/ribbonstrap_sneakers_144210.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 리본 스트랩 스니커즈 <br> price : 144,210원</h3>
            </td>
        </tr>
    </table>
</div>

<div id="Tab2" class="tabcontent">
    <table style="table-layout:fixed;">
        <tr><!-- 첫번째 줄 시작 -->
            <td> <input type="checkbox" name="1_1box" value="1_1box"> <br>
                <img alt="p_o" src="resources/img/jewelry/earrings_dolphintail_119000.png" style="max-width: 300px; height: auto;"> <br>
                <h3>item : 돌고래 꼬리 귀걸이 <br> price : 119,000원</h3>
            </td>
            <td> <input type="checkbox" name="1_2box" value="1_2box"> <br>
                <img alt="p_o" src="resources/img/jewelry/earrings_goldbutterfly_252450.png" style="max-width: 300px; height: auto;"> <br>
                <h3>item : 큐빅 금 나비 귀걸이 <br> price : 252,450원</h3>
            </td>
            <td> <input type="checkbox" name="1_3box" value="1_3box"> <br>
                <img alt="p_o" src="resources/img/jewelry/earrings_teering_125100.png" style="max-width: 300px; height: auto;"> <br>
                <h3>item : 티링 귀걸이 <br> price : 125,100원</h3>
            </td>
        </tr>
        <tr><!-- 두번째 줄 시작 -->
            <td> <input type="checkbox" name="2_1box" value="2_1box"> <br>
                <img alt="p_o" src="resources/img/jewelry/ring_dioscircle_495000.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 디오스 써클 반지 <br> price : 495,000원</h3>
            </td>
            <td> <input type="checkbox" name="2_2box" value="2_2box"> <br>
                <img alt="p_o" src="resources/img/jewelry/ring_fish_239000.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 물고기 반지 <br> price : 239,000원</h3>
            </td>
            <td> <input type="checkbox" name="2_3box" value="2_3box"> <br>
                <img alt="p_o" src="resources/img/jewelry/ring_lunecubic_284000.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 루느 큐빅 반지 <br> price : 284,000원</h3>
            </td>
        </tr>
    </table>
</div>

<div id="Tab3" class="tabcontent">
    <table style="table-layout:fixed;">
        <tr><!-- 첫번째 줄 시작 -->
            <td> <input type="checkbox" name="1_1box" value="1_1box"> <br>
                <img alt="7990" src="resources/img/food/star7990.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 별다방 캡슐 <br> price : 7,990원</h3>
            </td>
            <td> <input type="checkbox" name="1_2box" value="1_2box"> <br>
                <img alt="8910" src="resources/img/food/비빔국수_8910원.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 비빔국수 <br> price : 8,910원</h3>
            </td>
            <td> <input type="checkbox" name="1_3box" value="1_3box"> <br>
                <img alt="6900" src="resources/img/food/쌀국수_6900원.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 쌀국수 <br> price : 6,900원</h3>
            </td>
        </tr>
        <tr><!-- 두번째 줄 시작 -->
            <td> <input type="checkbox" name="2_1box" value="2_1box"> <br>
                <img alt="8900" src="resources/img/food/짬뽕순두부찌개_8900원.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 짬뽕 순두부찌개 <br> price : 8,900원</h3>
            </td>
            <td> <input type="checkbox" name="2_2box" value="2_2box"> <br>
                <img alt="27,900" src="resources/img/food/찰떡_9300원.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 찰떡3종세트 <br> price : 27,900원</h3>
            </td>
            <td> <input type="checkbox" name="2_3box" value="2_3box"> <br>
                <img alt="39600" src="resources/img/food/크림치즈_9900원.png" style="max-width: 300; height: auto;"> <br>
                <h3>item : 크림치즈 4종 세트 <br> price : 39,600원</h3>
            </td>
        </tr>
    </table>
</div>

    <input type="submit" value="선택">
</form>


<%
    String[] itemList = request.getParameterValues("itemForm");
    if (itemList != null) {
        for (int i = 0; i < itemList.length; i++) {
            out.println(itemList[i] + "<br>");
        }
    }
%>




<!-- 탭 스크립트 -->
<script>
    function openTab(evt, tabName) {
        // 탭 내용을 숨김
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }

        // 탭 버튼 활성화/비활성화
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        // 선택한 탭 내용 표시 및 버튼 활성화
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // 기본 탭 설정
    document.getElementById("defaultOpen").click();
</script>
</body>
</html>