package reservation.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import reservation.dao.UserDAO;
import reservation.frontController.ActionForward;
import reservation.util.Modal;
import reservatoin.command.Command;

public class UserLoginCommand implements Command {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		boolean isRedirect = true;
		String viewPage = "userLoginView.reservation";
		HttpSession session = request.getSession();
		String userID = null;
		String userPassword = null;
		if(request.getParameter("userID") != null) {
			userID = request.getParameter("userID");
		}
		if(request.getParameter("userPassword") != null) {
			userPassword = request.getParameter("userPassword");
		}
		if(userID == null || userPassword == null ||
		   userID.equals("") || userPassword.equals("")) {
			session.setAttribute("modal", new Modal("���� �޽���", "��� ������ �� ĭ�� �� �����ϴ�.", Modal.ERROR));
		} else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.login(userID, userPassword);
			if (result == 0) {
				session.setAttribute("modal", new Modal("���� �޽���", "��й�ȣ�� Ʋ���ϴ�.", Modal.ERROR));
			} else if(result == -1) {
				session.setAttribute("modal", new Modal("���� �޽���", "���̵� �����ϴ�.", Modal.ERROR));
			} else if(result == -2) {
				session.setAttribute("modal", new Modal("���� �޽���", "�����ͺ��̽� ������ �߻��߽��ϴ�.", Modal.ERROR));
			} else if(result == 1) {
				session.setAttribute("userID", userID);
				session.setAttribute("modal", new Modal("���� �޽���", "�α��ο� �����߽��ϴ�.", Modal.SUCCESS));
				viewPage = "userMainView.reservation";
			}
		}
		return new ActionForward(isRedirect, viewPage);
	}
	
}
