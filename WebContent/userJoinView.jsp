<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <%@ include file="./fragment/header.jspf" %>
  <body>
    <div class="container-fluid">
      <div class="row d-flex d-md-block flex-nowrap wrapper">
        <%@ include file="./fragment/navigation.jspf" %>
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
            <h2>회원 가입</h2>
          </div>
          <p class="lead">사용자 정보를 기입해 회원가입해주세요.</p>
          <hr>
          <form class="pt-3" style="max-width:720px;">
            <div class="form-group">
              <label>아이디</label>
              <input type="text" class="form-control" placeholder="아이디를 입력하세요.">
            </div>
            <div class="form-group">
              <label>비밀번호</label>
              <input type="password" class="form-control" placeholder="비밀번호를 입력하세요.">
            </div>
            <div class="form-group">
              <label>비밀번호 확인</label>
              <input type="password" class="form-control" placeholder="비밀번호 확인을 입력하세요.">
            </div>
            <div class="form-group">
              <label>전화번호</label>
              <input type="text" class="form-control" placeholder="전화번호를 입력하세요.">
            </div>
            <div class="form-group">
              <label>주소</label>
              <input type="text" class="form-control" placeholder="주소를 입력하세요.">
            </div>
            <div class="form-group">
              <label>이메일</label>
              <input type="email" class="form-control" placeholder="이메일을 입력하세요.">
            </div>
           <a href="./index.jsp" class="btn btn-primary float-right">회원 가입</a>
          </form>
        </main>
      </div>
    </div>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>