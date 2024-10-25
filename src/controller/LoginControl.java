package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SignDAO;
import dao.SignDAOimpl;
import domain.users;


@WebServlet("/LoginControl1")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SignDAO sign = new SignDAOimpl();
	
   	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
   		HttpSession session = req.getSession();
   		users user = new users();
   		user.setEmail(req.getParameter("em"));
   		user.setPassword(req.getParameter("pw"));
   		String result = sign.login(user);
   	
   		if(result.equals("cloud")) 
   		{
   			String A = "1";
   			session.setAttribute("Role", A);
   			int uid=1;
  			session.setAttribute("uid", uid);
   			res.sendRedirect("CloudServer.jsp?st=clo");
   		}
   		else if(result.equals("user")) 
   		{
   			String E = "2";
   			session.setAttribute("Role", E);
   			session.setAttribute("uid", user.getUid());
   			res.sendRedirect("UserHome.jsp?st=us");
   		}
   		else if (result.equals("owner")) 
   		{
   			String O = "3";
   			session.setAttribute("Role", O);
   			session.setAttribute("uid", user.getUid());
   			session.setAttribute("email", user.getEmail());
   			res.sendRedirect("OwnerHome.jsp?st=ow");
   		}
   		else if (result.equals("error")) 
   		{
   			res.sendRedirect("SignupO.jsp?st=err");
   		}
   		else if (result.equals("blocked"))
   		{
   			res.sendRedirect("SignupO.jsp?st=blk");
   		}
}
}


