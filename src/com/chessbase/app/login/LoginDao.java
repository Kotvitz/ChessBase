package com.chessbase.app.login;

import java.sql.*;

import com.chessbase.app.db.ConnectionProvider;

public class LoginDao {

	public static boolean validate(Login login) {
		boolean status = false;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user where email=? AND password=?");
			ps.setString(1, login.getEmail());
			ps.setString(2, login.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
