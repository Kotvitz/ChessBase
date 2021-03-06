package com.chessbase.app.game;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.chessbase.app.db.ConnectionProvider;

public class GameDao {

	public static List<Game> getGames(Game game) {
		List<Object> parameters = new ArrayList<>();
		StringBuilder query = new StringBuilder("SELECT * FROM game WHERE 1=1");
		if (game.getSite() != null) {
			query.append(" AND site = ?");
			parameters.add(game.getSite());
		}

		if (game.getDate() != null) {
			query.append(" AND date = ?");
			parameters.add(game.getDate());
		}

		if (game.getWhite() != null) {
			query.append(" AND white = ?");
			parameters.add(game.getWhite());
		}

		if (game.getBlack() != null) {
			query.append(" AND black = ?");
			parameters.add(game.getBlack());
		}

		if (game.getResult() != null) {
			query.append(" AND result = ?");
			parameters.add(game.getResult());
		}

		if (game.getMoves() != 0) {
			query.append(" AND moves = ?");
			parameters.add(game.getMoves());
		}

		List<Game> games = new ArrayList<>();
		Connection con = ConnectionProvider.getCon();
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = con.prepareStatement(query.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		int i = 1;
		for (Object parameter : parameters)
			try {
				preparedStatement.setObject(i++, parameter);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		try {
			ResultSet rs = preparedStatement.executeQuery();
			long id;
			String _site, _date, _white, _black, _result, course;
			int _moves;
			while (rs.next()) {
				id = rs.getInt("id");
				_site = rs.getString("site");
				_date = rs.getString("date");
				_white = rs.getString("white");
				_black = rs.getString("black");
				_result = rs.getString("result");
				_moves = rs.getInt("moves");
				course = rs.getString("course");
				games.add(new Game(id, _site, _date, _white, _black, _result, _moves, course));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return games;
	}

	public static Game getGameById(long id) {
		Game game = null;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM game WHERE id = " + id);
			ResultSet rs = preparedStatement.executeQuery();
			String _site, _date, _white, _black, _result, course;
			int _moves;
			while (rs.next()) {
				_site = rs.getString("site");
				_date = rs.getString("date");
				_white = rs.getString("white");
				_black = rs.getString("black");
				_result = rs.getString("result");
				_moves = rs.getInt("moves");
				course = rs.getString("course");
				game = new Game(id, _site, _date, _white, _black, _result, _moves, course);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return game;
	}

	public static void addGame(Game game) {
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement preparedStatement = con
					.prepareStatement("INSERT INTO game VALUES (?, ?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setLong(1, game.getId());
			preparedStatement.setString(2, game.getSite());
			preparedStatement.setString(3, game.getDate());
			preparedStatement.setString(4, game.getWhite());
			preparedStatement.setString(5, game.getBlack());
			preparedStatement.setString(6, game.getResult());
			preparedStatement.setInt(7, game.getMoves());
			preparedStatement.setString(8, game.getCourse());
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void updateGame(Game game) {
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement preparedStatement = con
					.prepareStatement("UPDATE game SET site = ?, date = ?, white = ?, black = ?, "
							+ "result = ?, moves = ?, course = ? WHERE id = ?;");
			preparedStatement.setString(1, game.getSite());
			preparedStatement.setString(2, game.getDate());
			preparedStatement.setString(3, game.getWhite());
			preparedStatement.setString(4, game.getBlack());
			preparedStatement.setString(5, game.getResult());
			preparedStatement.setInt(6, game.getMoves());
			preparedStatement.setString(7, game.getCourse());
			preparedStatement.setLong(8, game.getId());
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void deleteGame(Game game) {
		List<Object> parameters = new ArrayList<>();
		StringBuilder query = new StringBuilder("DELETE FROM game WHERE 1=1");
		if (game.getId() != 0L) {
			query.append(" AND id = ?");
			parameters.add(game.getId());
		}
		if (game.getSite() != null) {
			query.append(" AND site = ?");
			parameters.add(game.getSite());
		}

		if (game.getDate() != null) {
			query.append(" AND date = ?");
			parameters.add(game.getDate());
		}

		if (game.getWhite() != null) {
			query.append(" AND white = ?");
			parameters.add(game.getWhite());
		}

		if (game.getBlack() != null) {
			query.append(" AND black = ?");
			parameters.add(game.getBlack());
		}

		if (game.getResult() != null) {
			query.append(" AND result = ?");
			parameters.add(game.getResult());
		}

		if (game.getMoves() != 0) {
			query.append(" AND moves = ?");
			parameters.add(game.getMoves());
		}

		Connection con = ConnectionProvider.getCon();
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = con.prepareStatement(query.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		int i = 1;
		for (Object parameter : parameters)
			try {
				preparedStatement.setObject(i++, parameter);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		try {
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
