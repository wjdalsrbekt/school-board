/**
 * �Խ��� ������ �����ִ� Action
 */
package com.board.action;
 
import java.sql.*;
import java.util.ArrayList;
 


import javax.servlet.http.HttpServletRequest;
 
import javax.servlet.http.HttpServletResponse;
 
import javax.servlet.http.HttpSession;

import com.board.beans.*;
 
import com.board.controller.CommandAction;
 
public class ContentAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");
    	//��ȣ�� �Է¹޾ƿ� ������ ����
    	int num = Integer.parseInt(request.getParameter("num"));
    	Connection conn = null;
    	Statement stmt = null;    	
    	ResultSet rs = null;   
    	
    	//��ȸ�� ������ ���� ���� ����
    	int score = 0;
    	
    	try {
    		//���� Ȯ���� �α��λ��°� �ƴϸ� �α���â ȣ��
    		HttpSession session = request.getSession();
    		String id = (String) session.getAttribute("id");
    		if(id == null){    			
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		
    			//	+
    			//				"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "root";
    		
    		String query = "select * from board where num = "+num;
    		
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		//��ȸ�� ����Ʈ�� �޾ƿ�
    		ArrayList<board> articleList = new ArrayList<board>();
    		
    		while(rs.next()){
    			board article = new board();
    			article.setNum(rs.getInt("num"));    			
    			article.setSubject(rs.getString("subject"));
    			String temp = rs.getString("content");
    			temp = temp.replaceAll("\r\n", "<br>");
    			article.setContent(temp);
    			article.setId(rs.getString("id"));
    			article.setBoarddate(rs.getString("boarddate"));
    			score = Integer.parseInt(rs.getString("score")) + 1;
    			article.setScore(String.valueOf(score));
    			article.setEmail(rs.getString("email"));
    			articleList.add(article);
    		}
    		request.setAttribute("articleList",articleList);
    		
    		//��ȸ�� ������Ʈ
    		String query2 =  "UPDATE board SET score='" + score +    						
					"' WHERE num=" + num;    		
    		stmt.executeUpdate(query2); 
    		
    		} catch(SQLException ex){
    		
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
    		
    	try {
    		//���� Ȯ���� �α��λ��°� �ƴϸ� �α���â ȣ��
    		HttpSession session = request.getSession();
    		String id = (String) session.getAttribute("id");
    		if(id == null){    			
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		
    			//	+
    			//				"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "root";
    		
    		String query = "select * from board where num = "+num;
    		
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);   
    		 query = "select * from board.comments where boardNum = "+num;
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		//��ȸ�� ����Ʈ�� �޾ƿ�
    		ArrayList<comment> commentsList = new ArrayList<comment>();
  
    		while(rs.next()){
    			comment mention = new comment();
    			mention.setcomment(rs.getString("comments"));
    			mention.setId(rs.getString("id"));
    			mention.setEmail(rs.getString("email"));
    			mention.setdate(rs.getString("date"));
    			mention.setNum(rs.getInt("num"));
    			commentsList.add(mention);
    		}
    		request.setAttribute("commentsList",commentsList);
    		
    	} catch(SQLException ex){
    		
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
        return "content.jsp";
    }
}