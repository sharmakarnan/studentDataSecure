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

/**
 * Servlet implementation class RegisterController2
 */
@WebServlet("/RegisterController12")
public class RegisterController12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	SignDAO sign = new SignDAOimpl();
   
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
   		users u = new users();
   		u.setEmail(req.getParameter("email"));
   		u.setName(req.getParameter("name"));
   		u.setPhone(req.getParameter("phone"));
   		u.setPassword(req.getParameter("pass"));
   		u.setRole("USER");
   		boolean result = sign.register(u);
   		if(result) {
   			res.sendRedirect("Adminpage.html?st=reg");
   		}else {
   			res.sendRedirect("Adminpage.html?st=reg2");
   		}
		
		
		
		
	}

}
