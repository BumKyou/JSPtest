<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <%@ include file="./fragment/header.jspf" %>
  <body>
    <div class="container-fluid">
      <div class="row d-flex d-md-block flex-nowrap wrapper">
        <nav class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
          <div class="list-group border-0 card text-center text-md-left">
            <a href="./index.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/home.svg"><span class="d-none d-md-inline">메인</span>
            </a>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed"
            data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="./img/user.svg"><span class="d-none d-md-inline">회원 관리</span>
            </a>
            <div class="collapse" id="usermenu">
              <a href="./userJoin.jsp" class="list-group-item" data-parent="#sidebar">회원가입</a>
              <a href="./userLogin.jsp" class="list-group-item" data-parent="#sidebar">로그인</a>
              <a href="./userFind.jsp" class="list-group-item" data-parent="#sidebar">ID/PW 찾기</a>
              <a href="./userEdit.jsp" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
              <a href="./userLogout.jsp" class="list-group-item" data-parent="#sidebar">로그아웃</a>
            </div>
            <a href="./board.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline">자유게시판</span>
            </a>
            <a href="./qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/qna.svg"><span class="d-none d-md-inline">Q & A</span>
            </a>
            <a href="./schedule.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/home.svg"><span class="d-none d-md-inline">영화 상영시간</span>
            </a>
            <a href="#search" class="list-group-item d-inline-block collapsed"
            data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="./img/search.svg"><span class="d-none d-md-inline">검색</span>
            </a>
            <a href="./exit.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline">회원탈퇴</span>
            </a>
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color:#1c1c1c;">
                <input type="text" class="form-control" placeholder="내용을 입력하세요.">
              </div>
            </div>
          </div>
        </nav>
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
            <h2>회원 가입</h2>
          </div>
          <p class="lead">사용자 정보를 기입해 회원가입해주세요.</p>
          <hr>
          <form class="pt-3" style="max-width:720px;">
            <div class="form-group">
              <label>실명</label>
              <input type="text" class="form-control" placeholder="실명을 입력하세요.">
            </div>
            <div class="form-group">
              <label>주민등록번호</label>
              <input type="text" class="form-control" placeholder="주민번호 13자리를 입력하세요.(- 생략)">
            </div>
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
            <div class="form-row">
              <div class="form-group col-md-4">
              <label>성</label>
              <input type="text" class="form-control" placeholder="성을 입력하세요.">
              </div>
              <div class="form-group col-md-8">
              <label>이름</label>
              <input type="text" class="form-control" placeholder="이름을 입력하세요.">
              </div>
            </div>
            <div class="form-group">
              <label>성별</label>
              <select class="form-control">
                <option selected>남성</option>
                <option>여성</option>
              </select>
            </div>
            <button type="submit" class="btn btn-primary">회원가입</button>
          </form>
        </main>
      </div>
    </div>
    <%@ include file="./fragment/footer.jspf" %>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
