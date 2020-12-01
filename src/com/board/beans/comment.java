package com.board.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class comment {
	//��ȣ
	private int boardNum;
	
	//����
	private String comment;
	
	//���̵�
	private String id;
	
	//�̸���
	private String email;
	
	//�ۼ�����
	private String date;
	

	public int getNum() {
		return boardNum;
	}
	public void setNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getcomment() {
		return comment;
	}
	public void setcomment(String comment) {
		this.comment = comment;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getdate() {
		return date;
	}
	public void setdate(String date) {
		this.date = date;
	}
	public int getCount(int boardNum,int select) throws Throwable {
		
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	int count =0;


    	try {

    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		String dbUser = "root";
    		String dbPass = "root";
    		String query = null; 
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		if(select == 1) {
    			query = "select * from board.comments where boardNum = " + boardNum;
    		}
    		else if(select == 2) {
    			query = "select * from board.covercomments where boardNum = " + boardNum;
    		}

    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		

    		while(rs.next()){
    			count++;
    		}
    	} catch(SQLException ex){
    		
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
    	return count;
}
}
