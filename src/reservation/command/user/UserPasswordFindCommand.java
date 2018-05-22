package reservation.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.frontController.ActionForward;
import reservation.util.MathUtil;
import reservation.util.ServerUtil;
import reservatoin.command.Command;

public class UserPasswordFindCommand implements Command {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		boolean isRedirect = false;
	    String viewPage = "getAjaxResultView.jsp";
	    String userID = null;
	    String userEmail = null;
		String authenticationNumber = MathUtil.getPasswordCode();
	    String json = "-1";
	    
	    if(request.getParameter("userID") != null) {
	    	userID = request.getParameter("userID");
	    } if(request.getParameter("userEmail") != null) {
	    	userEmail = request.getParameter("userEmail");
	    }
	    
	    if(userEmail.equals("")) {
	    	json = "-5"; // �̸��� �����Ͱ� ���� ���� ���
	    } else if(!userEmail.contains("@")) {
	    	json = "-4"; // @�� �������� �ʴ� ���
	    } else if(userEmail.length() < 5 || userEmail.length() > 50) {
	    	json = "-3"; // �̸��� �ּ��� ���̰� ���� ���� ���
	    } else { // �Է��� �̸��� �ּҰ� ������ ��� ó�����ݴϴ�.
		    EmailAuthenticationDAO emailAuthenticationDAO = new EmailAuthenticationDAO();
		    int result = emailAuthenticationDAO.getCurrentAutheticationTimeDifference(emailAddress);
		    if(result >= 0 && result < 60) { // ������ȣ�� 1�� �̳��� ���� ���� �ִ� ��츦 ó�����ݴϴ�.
		    	json = "-2"; // �̸����� �߼��� �� 1���� ������ ���� ���
		    } else { // ���� ������ȣ�� ���� �� �ִ� ���
				String from = SMTPUtil.getAdminEmail();
				String to = emailAddress;
				String subject = "[JES] ���� ��ȣ�� �����ص帳�ϴ�.";
				String content = "<p style='font-size: 14px; font-family: Nanum Gothic;'>ȸ������ ������ ���� ��ȣ�� <strong>" +
								 authenticationNumber + "</strong> �Դϴ�.";
				
				Properties p = new Properties();
				p.put("mail.smtp.user", from);
				p.put("mail.smtp.host", "smtp.googlemail.com");
				p.put("mail.smtp.port", "465");
				p.put("mail.smtp.starttls.enable", "true");
				p.put("mail.smtp.auth", "true");
				p.put("mail.smtp.debug", "true");
				p.put("mail.smtp.socketFactory.port", "465");
				p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				p.put("mail.smtp.socketFactory.fallback", "false");
				
				try {
					Authenticator auth = new SMTPUtil();
					Session ses = Session.getInstance(p, auth);
					ses.setDebug(true);
					MimeMessage msg = new MimeMessage(ses);
					msg.setSubject(subject);
					Address fromAddr = new InternetAddress(from);
					msg.setFrom(fromAddr);
					Address toAddr = new InternetAddress(to);
					msg.addRecipient(Message.RecipientType.TO, toAddr);
					msg.setContent(content, "text/html;charset=UTF8");
					Transport.send(msg);
					result = emailAuthenticationDAO.sendAuthenticationNumber(emailAddress, authenticationNumber);
				    if(result == 1) {
				    	json = "1"; // �߼� ����
				    } else if(result == -1){
				    	json = "-1"; // ��Ÿ ���� �߻�
				    }
				} catch (Exception e) {
			    	json = "-1"; // ��Ÿ ���� �߻�
				}
		    }
	    }
	    
	    request.setAttribute("json", json);
		return new ActionForward(isRedirect, viewPage);
	}
}
