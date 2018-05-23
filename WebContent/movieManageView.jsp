<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <%@ include file="./viewFragment/header.jspf" %>
  <body>
    <div class="container-fluid">
      <div class="row d-flex d-md-block flex-nowrap wrapper">
        <%@ include file="./viewFragment/navigation.jspf" %>
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
            <h2>상영 영화 관리</h2>
          </div>
          <p class="lead">현재 상영하고 있는 영화들의 정보를 수정하거나 영화를 등록/삭제할 수 있습니다.</p>
          <hr>
          <table class="table table-striped" style="max-width:1080px;">
            <thead>
              <tr>
                <th class="mobile" style="width:100px; text-align:center;">장르</th>
                <th style="text-align:center;">영화 제목</th>
                <th class="mobile" style="width:100px; text-align:center;">러닝타임</th>
                <th class="mobile" style="width:120px; text-align:center;">개봉일자</th>
                <th class="mobile" style="width:120px; text-align:center;">수정/삭제</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="text-align: center;">액션/모험</td>
                <td><a style="color:#000000;">어벤져스:인피니티 워</a></td>
                <td style="text-align: center;">149분</td>
                <td style="text-align: center;">2018-04-25</td>
                <td onclick="location.href = './movieEditView.reservation';" class="btn btn-primary">수정</td>
                <td onclick="location.href = './movieDeleteView.reservation';" class="btn btn-primary">삭제</td>
              </tr>
              <tr>
                <td style="text-align: center;">미스터리</td>
                <td><a style="color:#000000;">버닝</a></td>
                <td style="text-align: center;">148분</td>
                <td style="text-align: center;">2018-05-17</td>
                <td onclick="location.href = './movieEditView.reservation';" class="btn btn-primary">수정</td>
                <td onclick="location.href = './movieDeleteView.reservation';" class="btn btn-primary">삭제</td>
              </tr>
              <tr>
                <td style="text-align: center;">액션/모험</td>
                <td><a style="color:#000000;">데드풀2</a></td>
                <td style="text-align: center;">117분</td>
                <td style="text-align: center;">2018-05-16</td>
                <td onclick="location.href = './movieEditView.reservation';" class="btn btn-primary">수정</td>
                <td onclick="location.href = './movieDeleteView.reservation';" class="btn btn-primary">삭제</td>
              </tr>
              <tr>
                <td style="text-align: center;">드라마</td>
                <td><a style="color:#000000;">레슬러</a></td>
                <td style="text-align: center;">110분</td>
                <td style="text-align: center;">2018-05-09</td>
                <td onclick="location.href = './movieEditView.reservation';" class="btn btn-primary">수정</td>
                <td onclick="location.href = './movieDeleteView.reservation';" class="btn btn-primary">삭제</td>
              </tr>
              <tr>
                <td style="text-align: center;">로맨스</td>
                <td><a style="color:#000000;">안녕, 나의 소녀</a></td>
                <td style="text-align: center;">104분</td>
                <td style="text-align: center;">2018-05-16</td>
                <td onclick="location.href = './movieEditView.reservation';" class="btn btn-primary">수정</td>
                <td onclick="location.href = './movieDeleteView.reservation';" class="btn btn-primary">삭제</td>
                <!-- 상영관 버튼 누르면 reservation으로 갈 수 있는 기능 필요 -->
              </tr>
            </tbody>
          </table>
          	<a href="./boardWriteView.reservation" class="btn btn-primary float-right">등록</a>	
    	  </main>
      </div>
    </div>
    <%@ include file="./viewFragment/footer.jspf" %>
    <%@ include file="./viewFragment/modal.jspf" %>
  </body>
</html>
