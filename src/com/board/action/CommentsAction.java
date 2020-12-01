package com.board.action;

import java.sql.*;
import java.util.ArrayList;
 


import javax.servlet.http.HttpServletRequest;
 
import javax.servlet.http.HttpServletResponse;
 
import javax.servlet.http.HttpSession;

import com.board.beans.comment;
 
import com.board.controller.CommandAction;
public class CommentsAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");
    	//占쏙옙호占쏙옙 占쌉력받아울옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
    	int num = Integer.parseInt(request.getParameter("num"));
    	Connection conn = null;
    	Statement stmt = null;    	
    	ResultSet rs = null;   
    	
    	try {
    		//占쏙옙占쏙옙 확占쏙옙占쏙옙 占싸깍옙占싸삼옙占승곤옙 占싣니몌옙 占싸깍옙占쏙옙창 호占쏙옙
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
    		
    		String query = "select * from board.comments where boardNum = "+num;
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		//占쏙옙회占쏙옙 占쏙옙占쏙옙트占쏙옙 占쌨아울옙
    		ArrayList<comment> commentsList = new ArrayList<comment>();
  
    		while(rs.next()){
    			comment mention = new comment();
    			mention.setcomment(rs.getString("comments"));
    			mention.setId(rs.getString("id"));
    			mention.setEmail(rs.getString("email"));
    			mention.setdate(rs.getString("date"));
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