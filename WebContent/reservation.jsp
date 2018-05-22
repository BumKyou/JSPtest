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
              <a href="./userEdit.jsp" class="list-group-item" data-parent="#sidebar">ȸ����������</a>
              <a href="./userFind.jsp" class="list-group-item" data-parent="#sidebar">ID/PW ã��</a>
              <a href="./userLogout.jsp" class="list-group-item" data-parent="#sidebar">�α׾ƿ�</a>
            </div>
            <a href="./board.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline">�����Խ���</span>
            </a>
            <a href="./qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/qna.svg"><span class="d-none d-md-inline">Q & A</span>
            </a>
            <a href="./schedule.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/home.svg"><span class="d-none d-md-inline">��ȭ �󿵽ð�</span>
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
            <h2>��ȭ ����</h2>
          </div>
          <p class="lead">��ȭ�� ������ �� �ֽ��ϴ�.</p>
          <hr>
          <form class="pt-3" style="max-width:720px;">
            <div class="form-group">
              <label>�󿵰�</label>
              <select class="form-control">
                <option selected>����</option>
                <option>��ȭ</option>
                <option>�Ǵ�</option>
                <option>����</option>
                <option>���</option>
              </select>
            </div>
            <div class="form-group">
              <label>�� �ð�</label>
              <select class="form-control">
                <option selected>08:40</option>
                <option>10:30</option>
                <option>13:20</option>
                <option>15:40</option>
                <option>19:00</option>
                <option>21:20</option>
                <option>23:50</option>
              </select>
            </div>
            <div class="form-group">
              <label>�ܿ� �¼�</label>
              <select class="form-control">
                <option selected>3�� (110/180)</option>
                <option>5��(4D PLEX) (172/180)</option>
              </select>
            </div>
            <a href="./select.jsp" class="btn btn-primary float-right">�ο�/�¼� ����</a>
          </form>
        </main>
      </div>
    </div>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
