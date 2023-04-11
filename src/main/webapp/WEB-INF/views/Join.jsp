<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript"> </script>

<style>
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

</head>

  <section>
    <h3><a href="/">SeeU Shop</a></h3>
    <h1>회원가입 페이지</h1>
  </section>
  
  <section>
    <form name="login" action="index.html" method="post">
      아이디<br>
      <input type="text" name="user_ID" placeholder="아이디 입력를 입력해주세요" >
      <input type="button" name="user_IDcheck" value="아이디 중복 확인">
      <br><br>

      비밀번호<br> 
      <input type="password" name="user_PW1" value="123456"><br>

      비밀번호 재확인<br>
      <input type="password" name="user_PW2" value="123456">
      <input type="button" name="user_PWcheck" value="비밀번호 확인">
      <br><br>

      이름<br>  <input type="text" name="user_name" value="">
      <br><br>

      휴대전화<br>
      <input type="text" name="user_phone" placeholder="010-****-****">
      <br><br>

      주소<br>
      <div class="form-group m-form__group row">
        <div class="col-md-2">
          <input type="text" class="form-control m-input" name="postcode" id="postcode" placeholder="우편번호" readonly />
        </div>
        <div class="col-md-2 postcode-btn">
          <button type="button" class="btn btn-info m-btn--air" onclick="execDaumPostcode()">우편번호 찾기</button>
        </div>
        <div class="col-md-4 offset-md-5">
          <input
          type="text"
          class="form-control m-input m--margin-top-10"
          name="address"
          id="address"
          placeholder="도로명 주소"
          readonly
          />
        </div>
        <div class="col-md-4 offset-md-5">
          <input
          type="text"
          class="form-control m-input m--margin-top-10"
          name="detailAddress"
          placeholder="상세 주소"
          required
          />
        </div>
      </div>
      <br><br>

      이메일<br><input type="email" name="user_email" placeholder="email@gmail.com">
      <br><br>

      성별<br>
      <label for="man">남자</label>
      <input type="radio" name="gender" value="m" id="man">
      <label for="woman">여자</label>
      <input type="radio" name="gender" value="m" id="woman">
      <br><br>

      <input type="submit" name="" value="회원가입">
      <input type="reset" name="" value="다시쓰기">

    </form>
  </section>


</body>
</html>
