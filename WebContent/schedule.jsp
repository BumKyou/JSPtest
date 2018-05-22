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
            <h2>영화 상영시간</h2>
          </div>
          <p class="lead">현재 상영하고 있는 영화의 상영시간을 확인할 수 있습니다.</p>
          <hr>
          <table class="table table-striped" style="max-width:1080px;">
            <thead>
              <tr>
                <th class="mobile" style="width:100px; text-align:center;">장르</th>
                <th style="text-align:center;">영화 제목</th>
                <th class="mobile" style="width:100px; text-align:center;">러닝타임</th>
                <th class="mobile" style="width:120px; text-align:center;">개봉일자</th>
                <th class="mobile" style="width:70px; text-align:center;">상영관</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="text-align: center;">액션/모험</td>
                <td><a href="./boardView.jsp" style="color:#000000;">어벤져스:인피니티 워</a></td>
                <td style="text-align: center;">149분</td>
                <td style="text-align: center;">2018-04-25</td>
                <td onclick="location.href = './reservation.jsp';" class="btn btn-primary float-right">상영관</td>
              </tr>
              <tr>
                <td style="text-align: center;">미스터리</td>
                <td><a href="./boardView.jsp" style="color:#000000;">버닝</a></td>
                <td style="text-align: center;">148분</td>
                <td style="text-align: center;">2018-05-17</td>
                <td onclick="location.href = './reservation.jsp';" class="btn btn-primary float-right">상영관</td>
              </tr>
              <tr>
                <td style="text-align: center;">액션/모험</td>
                <td><a href="./boardView.jsp" style="color:#000000;">데드풀2</a></td>
                <td style="text-align: center;">117분</td>
                <td style="text-align: center;">2018-05-16</td>
                <td onclick="location.href = './reservation.jsp';" class="btn btn-primary float-right">상영관</td>
              </tr>
              <tr>
                <td style="text-align: center;">드라마</td>
                <td><a href="./boardView.jsp" style="color:#000000;">레슬러</a></td>
                <td style="text-align: center;">110분</td>
                <td style="text-align: center;">2018-05-09</td>
                <td onclick="location.href = './reservation.jsp';" class="btn btn-primary float-right">상영관</td>
              </tr>
              <tr>
                <td style="text-align: center;">로맨스</td>
                <td><a href="./boardView.jsp" style="color:#000000;">안녕, 나의 소녀</a></td>
                <td style="text-align: center;">104분</td>
                <td style="text-align: center;">2018-05-16</td>
                <td onclick="location.href = './reservation.jsp';" class="btn btn-primary float-right">상영관</td>
                <!-- 상영관 버튼 누르면 reservation으로 갈 수 있는 기능 필요 -->
              </tr>
            </tbody>
          </table>
        </main>
      </div>
    </div>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>