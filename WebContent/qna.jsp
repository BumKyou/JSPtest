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
            <h2>Q & A</h2>
          </div>
          <p class="lead">ȸ������ �ñ����� Ǯ��帳�ϴ�.</p>
          <hr>
          <div class="panel panel-default">
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse1">�� �Խ��� ������ �̿��� �� �ֳ���?</a>
              </h4>
            </div>
            <div id="collapse1" class="panel-collapse collapse in">
              <div class="panel-body">
                 ���� �� ����Ʈ�� �Խ����� <strong>������</strong> �̿��� �� �ֽ��ϴ�.
              </div>
            </div>
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse2">�� �������� ��ȭ��ȣ�� �ñ��ؿ�.</a>
              </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse in">
              <div class="panel-body">
                 �������� ��ȭ��ȣ�� <strong>02)000-0000</strong>�Դϴ�.
              </div>
            </div>
          </div>
          <div class="alert alert-warning">
            �̿��� ������ �����ͷ� ��ȭ���ֽø� ģ���� �亯�ص帮�ڽ��ϴ�.
          </div>
        </main>
      </div>
    </div>
    <%@ include file="./fragment/footer.jspf" %>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
