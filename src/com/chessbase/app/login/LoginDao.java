package com.chessbase.app.login;

import java.sql.*;

import com.chessbase.app.db.ConnectionProvider;

public class LoginDao {

	public static boolean isAdmin(Login login) {
		boolean admin = false;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user where login=? AND password=? AND admin=1");
			ps.setString(1, login.getLogin());
			ps.setString(2, login.getPassword());
			ResultSet rs = ps.executeQuery();
			admin = rs.next(); 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admin;
	}

	public static boolean validate(Login login) {
		boolean status = false;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user where login=? AND password=?");
			ps.setString(1, login.getLogin());
			ps.setString(2, login.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
