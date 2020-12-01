/**
 * �Խ��� ������ ���� ǥ���ϴ� Action
 */
package com.login.action;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.beans.board;
import com.board.controller.CommandAction;
import com.login.beans.login;
 
public class InfoModifyformAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://127.0.0.1/board";
    	String dbUser = "root";
    	String dbPass = "root";
    	Object _id=null;
    	String id=null;
    	Connection conn = null;
    	Statement stmt = null;    	
    	ResultSet rs = null;
    		try{
    			
    			HttpSession session = request.getSession();
    			_id=session.getAttribute("id");
    			id=_id.toString();
            	
        		if(session.getAttribute("id") == null){
        			return "loginerror.jsp";
        		}

    			request.setCharacterEncoding("UTF-8");
    			String num = request.getParameter("num");
    			
    			conn = DriverManager.getConnection(url,dbUser,dbPass);    			    			
    			String query = "select * from user where id = '" + id+"'";
    			
    			stmt = conn.createStatement();
    			
    			rs = stmt.executeQuery(query);
    			
    			ArrayList<login> log = new ArrayList<login>();
    			
        		while(rs.next()){        			
        			login _log = new login();
        			_log.setId(rs.getString("id"));    		
        			_log.setPassword(rs.getString("password"));
        			_log.setEmail(rs.getString("email"));
        			_log.setName(rs.getString("name"));
        			log.add(_log);
        		}
        		request.setAttribute("log",log);
        		
    			stmt.close();
    			conn.close();
    			rs.close();
    		 
     } catch(SQLException e) {
    	System.out.println( e.toString() );
    } finally{
    	if(rs != null) try{rs.close();} catch(SQLException ex){}
    	if(stmt != null) try{stmt.close();} catch(SQLException ex){}			
		if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
    	
 
        return "infomodifyform.jsp";
 
    }
 
}