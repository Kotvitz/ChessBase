package com.chessbase.app.register;

import java.sql.*;

import com.chessbase.app.db.ConnectionProvider;

public class RegisterDao {

	public static int register(User u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
			ps.setLong(1, u.getId());
			ps.setString(2, u.getName());
			ps.setString(3, u.getSurname());
			ps.setString(4, u.getLogin());
			ps.setString(5, u.getEmail());
			ps.setString(6, u.getPassword());
			ps.setBoolean(7, u.isAdmin());
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
