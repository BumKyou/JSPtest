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
              <img style="width: 20px;" src="./img/home.svg"><span class="d-none d-md-inline">����</span>
            </a>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed"
            data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="./img/user.svg"><span class="d-none d-md-inline">ȸ�� ����</span>
            </a>
            <div class="collapse" id="usermenu">
              <a href="./userJoin.jsp" class="list-group-item" data-parent="#sidebar">ȸ������</a>
              <a href="./userLogin.jsp" class="list-group-item" data-parent="#sidebar">�α���</a>
              <a href="./userFind.jsp" class="list-group-item" data-parent="#sidebar">ID/PW ã��</a>
              <a href="./userEdit.jsp" class="list-group-item" data-parent="#sidebar">ȸ����������</a>
              <a href="./userLogout.jsp" class="list-group-item" data-parent="#sidebar">�α׾ƿ�</a>
            </div>n
            <a href="./board.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline">�����Խ���</span>
            </a>
            <a href="./qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/qna.svg"><span class="d-none d-md-inline">Q & A</span>
            </a>
            <a href="./schedule.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline">��ȭ �󿵽ð�</span>
            </a>
            <a href="#search" class="list-group-item d-inline-block collapsed"
            data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="./img/search.svg"><span class="d-none d-md-inline">�˻�</span>
            </a>
            <a href="./exit.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline">ȸ��Ż��</span>
            </a>
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color:#1c1c1c;">
                <input type="text" class="form-control" placeholder="������ �Է��ϼ���.">
              </div>
            </div>
          </div>
        </nav>
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
            <h2>��ȭ ���� ����Ʈ</h2>
          </div>
          <p class="lead">�̰��� ���� ������ ��ȭ Ƽ���� ������ �� �ִ� ����Ʈ�Դϴ�.</p>
          <hr>
          <div id="carousel" class="carousel slide" style="max-width:1080px;" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carousel" data-slide-to="0" class="active"></li>
              <li data-target="#carousel" data-slide-to="1"></li>
              <li data-target="#carousel" data-slide-to="2"></li>
            </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100" src="./img/���Ǵ�Ƽ ��.jpeg" alt="ù ��° �̹���">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="./img/����.jpeg" alt="�� ��° �̹���">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="./img/����Ǯ2.jpeg" alt="�� ��° �̹���">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carousel" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">���� ����</span>
          </a>
          <a class="carousel-control-next" href="#carousel" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">���� ����</span>
          </a>
          </div>
          <p class="lead mt-4 mb-3 pt-4 pb-3">������ ������</p>
          <iframe width="560" height="315" src="https://www.youtube.com/embed/xUDhdCsLkjU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          <p class="lead mt-4 mb-3 pt-4 pb-3">���� ������ ������</p>
          <iframe width="560" height="315" src="https://www.youtube.com/embed/MoMd7ae98hk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          <section class="mt-4 mb-3 pt-4 pb-3" style="max-width:1080px;">
            <p class="lead">��������</p>
            <hr>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="mobile" style="width:55px; text-align:center;">��ȣ</th>
                  <th style="text-align:center;">����</th>
                  <th class="mobile" style="width:80px; text-align:center;">�ۼ���</th>
                  <th class="mobile" style="width:120px; text-align:center;">��¥</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td style="text-align: center;">3</td>
                  <td>�ű� ����� �����մϴ�.</td>
                  <td style="text-align: center;">���</td>
                  <td style="text-align: center;">2018-01-05</td>
                </tr>
                <tr>
                  <td style="text-align: center;">2</td>
                  <td>Ŀ�´�Ƽ �� ����Ʈ�� ���� ���� ȯ���մϴ�.</td>
                  <td style="text-align: center;">���</td>
                  <td style="text-align: center;">2018-01-04</td>
                </tr>
                <tr>
                  <td style="text-align: center;">1</td>
                  <td>Ŀ�´�Ƽ �� ����Ʈ�� �����Ǿ����ϴ�.</td>
                  <td style="text-align: center;">���</td>
                  <td style="text-align: center;">2018-01-03</td>
                </tr>
              </tbody>
            </table>
          </section>
        </main>
      </div>
    </div>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
