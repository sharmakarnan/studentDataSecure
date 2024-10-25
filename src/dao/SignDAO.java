package dao;

import domain.users;

public interface SignDAO {

	boolean register(users u);
	
	String login(users u);
	
	
}
