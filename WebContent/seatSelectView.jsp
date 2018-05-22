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
            <h2>인원/좌석 선택</h2>
          </div>
          <p class="lead">예매 인원과 좌석을 선택해주세요.</p>
          <hr>
          <form class="pt-3" style="max-width:720px;">
         	<%
             int i = 0;
             while(i++ < 100)
             {
            	 <button type="submit" class="btn btn-primary">로그인</button>
             }
      		 %>
          <a href="./pay.jsp" class="btn btn-primary float-right">결제하기</a>
          </form>
        </main>
      </div>
    </div>
    <%@ include file="./viewFragment/footer.jspf" %>
    <%@ include file="./viewFragment/modal.jspf" %>
  </body>
</html>
