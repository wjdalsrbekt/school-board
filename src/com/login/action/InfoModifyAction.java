/**
 * �Խ��� ���� �����ϴ� Action
 */
package com.login.action;
 
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class InfoModifyAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://127.0.0.1/board";
    	String dbUser = "root";
    	String dbPass = "root";
    	Connection conn = null;
    	Statement stmt = null;    	    	
    		try{
    			
    			HttpSession session = request.getSession();
            	
        		if(session.getAttribute("id") == null){
        			return "loginerror.jsp";
        		}
    			request.setCharacterEncoding("UTF-8");
    			String id = request.getParameter("id");    			
    			String password = request.getParameter("password");
    			String email = request.getParameter("email");    			
    			String name = request.getParameter("name");

    			conn = DriverManager.getConnection(url,dbUser,dbPass);    			    			    			
    			
    			stmt = conn.createStatement();
   			    			    		
    			String sql = "UPDATE board.user SET password='" + password + "' ,email='"+ email +  "' ,name='"+ name + 						
    						"' WHERE id='" + id+"'";				
    			stmt.executeUpdate(sql);    			
    			stmt.close();
    			conn.close();    			
    		 
     } catch(SQLException e) {
    	System.out.println( e.toString() );
    } finally{    	
    	if(stmt != null) try{stmt.close();} catch(SQLException ex){}			
		if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
    	
    	
        return "infomodify.jsp";
 
    }
 
}