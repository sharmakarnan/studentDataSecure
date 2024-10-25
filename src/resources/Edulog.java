package resources;

import java.io.IOException;
import java.io.PrintWriter;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class Edulog
 */
@WebServlet("/Edulog")
public class Edulog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String us = request.getParameter("Email");
		String pwd = request.getParameter("Password");
		try
		{
			String qur = "Select * from edureg where mailid=? and conpass=?";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qur);
			ps.setString(1, us);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("Edudata.jsp");
			}
			else
			{
				response.sendRedirect("index.html");
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
