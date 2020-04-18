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

	public static void addGame(long id, String site, String date, String white, String black, String result, int moves,
			String course) {
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement preparedStatement = con
					.prepareStatement("INSERT INTO game VALUES (NULL, ?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setLong(1, id);
			preparedStatement.setString(2, site);
			preparedStatement.setString(3, date);
			preparedStatement.setString(4, white);
			preparedStatement.setString(5, black);
			preparedStatement.setString(6, result);
			preparedStatement.setInt(7, moves);
			preparedStatement.setString(8, course);
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void deleteGame(long id) {
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement preparedStatement = con.prepareStatement("DELETE FROM game WHERE id = " + id);
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
