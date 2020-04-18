package com.chessbase.app.game;

public class Game {
	
	private long id;
	private String site, date, white, black, result, course;
	private int moves;
	
	public Game() {
		
	}
	
	public Game(long id, String site, String date, String white, String black, String result, int moves, String course) {
		this.id = id;
		this.site = site;
		this.date = date;
		this.white = white;
		this.black = black;
		this.result = result;
		this.moves = moves;
		this.course = course;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getSite() {
		return site;
	}
	
	public void setSite(String site) {
		this.site = site;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getWhite() {
		return white;
	}
	
	public void setWhite(String white) {
		this.white = white;
	}
	
	public String getBlack() {
		return black;
	}
	
	public void setBlack(String black) {
		this.black = black;
	}
	
	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}
	
	public String getCourse() {
		return course;
	}
	
	public void setCourse(String course) {
		this.course = course;
	}
	
	public int getMoves() {
		return moves;
	}
	
	public void setMoves(int moves) {
		this.moves = moves;
	}
	
	
}
