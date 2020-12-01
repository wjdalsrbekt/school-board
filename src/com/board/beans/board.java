package com.board.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class board {
	//��ȣ
	private int num;
	private int commcount;
	private int select;
	
	//����
	private String subject;
	
	//����
	private String content;
	
	//���̵�
	private String id;
	
	//�̸���
	private String email;
	
	//�ۼ�����
	private String boarddate;
	
	//��ȸ��
	private String score;
	
	//�˻��ɼ�
	public String opt;
	
	//�˻�����
	public String condition;
	
	
	
	public String getOpt() {
		return opt;
	}
	public void setOpt(String opt) {
		this.opt = opt;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(String boarddate) {
		this.boarddate = boarddate;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public int getCount(HttpServletRequest request, HttpServletResponse response, String opt, String condition,int select) throws Throwable {
		
			    	Class.forName("com.mysql.jdbc.Driver");    	    
			    	Connection conn = null;
			    	Statement stmt = null;
			    	ResultSet rs = null;
			    	int count =0;
			    	
			    	request.setCharacterEncoding("UTF-8");

			    	try {
			    		HttpSession session = request.getSession();
			    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
			    		String dbUser = "root";
			    		String dbPass = "root";
			    		String query = null; 
			   
			    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			    		if(select == 1) {
			    			if(opt == null){    			
			    				query = "select * from board order by num desc";
			    			}else if(opt.equals("0")){    			
			    				query = "select * from board where subject like '%"+condition+"%' order by num desc";        		
			    			}else if(opt.equals("1")){    			
			    				query = "select * from board where content like '%"+condition+"%' order by num desc";        		
			    			}else if(opt.equals("2")){    			
			    				query = "select * from board where id like '%"+condition+"%' order by num desc";        		
			    			}
			    		}
			    		else if(select == 2) {
			    			if(opt == null){    			
			    				query = "select * from coverletter order by num desc";
			    			}else if(opt.equals("0")){    			
			    				query = "select * from coverletter where subject like '%"+condition+"%' order by num desc";        		
			    			}else if(opt.equals("1")){    			
			    				query = "select * from coverletter where content like '%"+condition+"%' order by num desc";        		
			    			}else if(opt.equals("2")){    			
			    				query = "select * from coverletter where id like '%"+condition+"%' order by num desc";        		
			    			}
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
	public ArrayList<board> select(int startRow,int endRow,HttpServletRequest request, HttpServletResponse response, String opt, String condition,int select)
		throws Throwable {
		
		ArrayList<board> articleList = new ArrayList<board>();
    	Class.forName("com.mysql.jdbc.Driver");
    	//占쏙옙호占쏙옙 占쌉력받아울옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
//    	int num = Integer.parseInt(request.getParameter("num"));
    	Connection conn = null;
    	Statement stmt = null;    	
    	ResultSet rs = null;   
    	
    	int count = 0;
    	board board = new board();
    	count = board.getCount(request, response,opt,condition,select);
    	int commCount=0;
    	
    	//占쏙옙회占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙
    	int score = 0;
    	request.setCharacterEncoding("UTF-8");
    	
    	try {
    		//占쏙옙占쏙옙 확占쏙옙占쏙옙 占싸깍옙占싸삼옙占승곤옙 占싣니몌옙 占싸깍옙占쏙옙창 호占쏙옙
    		HttpSession session = request.getSession();

    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		
    			//	+
    			//				"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "root";
    		String query = null; 

    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		if(select == 1) {
    			if(opt == null){    			
    				query = "select * from board order by num desc";
    			}else if(opt.equals("0")){    			
    				query = "select * from board where subject like '%"+condition+"%' order by num desc";        		
    			}else if(opt.equals("1")){    			
    				query = "select * from board where content like '%"+condition+"%' order by num desc";        		
    			}else if(opt.equals("2")){    			
    				query = "select * from board where id like '%"+condition+"%' order by num desc";        		
    			}
    		}
    		else if(select == 2) {
    			if(opt == null){    			
    				query = "select * from coverletter order by num desc";
    			}else if(opt.equals("0")){    			
    				query = "select * from coverletter where subject like '%"+condition+"%' order by num desc";        		
    			}else if(opt.equals("1")){    			
    				query = "select * from coverletter where content like '%"+condition+"%' order by num desc";        		
    			}else if(opt.equals("2")){    			
    				query = "select * from coverletter where id like '%"+condition+"%' order by num desc";        		
    			}
    		}
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		
    		//占쏙옙회占쏙옙 占쏙옙占쏙옙트占쏙옙 占쌨아울옙
    		for(int i = 0; i < count+1 ;i++,rs.next()){
    			if(startRow <= i && i <= endRow)
    			{
    				board article = new board();
    				article.setNum(rs.getInt("num"));
    				article.setSelect(select);
    				commCount = article.getCommCount();
    				article.setSubject(rs.getString("subject"));
//    				article.setContent(rs.getString("content"));
    				article.setId(rs.getString("id"));
    				article.setBoarddate(rs.getString("boarddate"));
    				score = Integer.parseInt(rs.getString("score")) + 1;
    				article.setScore(String.valueOf(score));
//    				article.setEmail(rs.getString("email"));
    				article.setCommCount(commCount);
    				articleList.add(article);
    			}
    		}
    		//占쏙옙회占쏙옙 占쏙옙占쏙옙占쏙옙트
    		String query2 =  "UPDATE board SET score='" + score +    						
					"' WHERE num=" + num;    		
    		stmt.executeUpdate(query2); 
    		
    		return articleList;
    		} catch(SQLException ex){
    		
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
		
    	return articleList;

	}
	public void setCommCount(int commCount) {
		this.commcount = commCount;
	}
	
	public int getCommCount() {
		int commCount=0;
		comment comm = new comment();
		try {
			commCount = comm.getCount(num,select);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return commCount;
	}
	public void setSelect(int select) {
		this.select = select;
	}
	public int getSelect() {
		return this.select;
	}
}
