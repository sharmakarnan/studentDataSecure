package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import domain.users;

import utility.DBase;

public class SignDAOimpl implements SignDAO {

	Connection con = null;
	ResultSet rs = null;
	Statement stmt = null;
	PreparedStatement ps = null;
	
	@Override
	public boolean register(users u) {
		String status = "Pending";
		String sql = "INSERT INTO users(name,email,password,phone,loginstatus,role)"
				+" VALUES('"+u.getName()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getPhone()+"','"+status+"','"+u.getRole()+"')";
	try {
		int i = DBase.getconnection().prepareStatement(sql).executeUpdate();
		if(i>0) {
			return true;
		}else {
			return false;
		}
		
	} catch (SQLException e) {
	
		e.printStackTrace();
	}

	return false;
		
	}

	public String login1(users u) {
		
		String em = u.getEmail();
		String pw = u.getPassword();
		
		if(em.equalsIgnoreCase("cloud") && pw.equalsIgnoreCase("cloud")) {
			return "cloud";
		}else {
		
		String sql = "SELECT * FROM users WHERE email='"+em+"' AND password='"+pw+"'";
	
		try {
			Connection con = DBase.getconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				String Role = rs.getString("role");
				String LS = rs.getString("loginstatus");
				u.setUid(rs.getInt("uid"));
				if(LS=="BLOCKED") {
					return "blocked";
				}else {
					if(Role.equals("OWNER")){
						return "owner";
					}else if(Role.equals("USER")){
						return "user";
					}
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "error";
		}

		
		
		
		
	}

	@Override
	public String login(users u) {
		// TODO Auto-generated method stub
		return null;
	}

}
