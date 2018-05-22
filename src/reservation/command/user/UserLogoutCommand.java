package reservation.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import reservation.frontController.ActionForward;
import reservation.util.Modal;
import reservatoin.command.Command;

public class UserLogoutCommand implements Command {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		boolean isRedirect = true;
		String viewPage = "mainView.reservation";
		HttpSession session = request.getSession();
		session.removeAttribute("userID");
		session.setAttribute("modal", new Modal("���� �޽���", "�α׾ƿ��� �����߽��ϴ�.", Modal.SUCCESS));
		viewPage = "userMainView.reservation";
		return new ActionForward(isRedirect, viewPage);
	}
	
}