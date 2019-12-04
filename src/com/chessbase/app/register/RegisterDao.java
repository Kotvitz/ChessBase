package com.chessbase.app.register;

import java.sql.*;

public class RegisterDao {

	public static int register(User u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
			ps.setLong(1, u.getId());
			ps.setString(2, u.getLogin());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			ps.setBoolean(5, u.isAdmin());
			status = ps.executeUpdate();
			
			try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	                u.setId(generatedKeys.getLong(1));
	            }
	            else {
	                throw new SQLException("Creating user failed, no ID obtained.");
	            }
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
