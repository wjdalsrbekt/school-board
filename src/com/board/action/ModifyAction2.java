/**
 * �Խ��� ���� �����ϴ� Action
 */
package com.board.action;
 
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class ModifyAction2 implements CommandAction {
 
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
    		try{
    			
    			HttpSession session = request.getSession();
    			_id=session.getAttribute("id");
    			id=_id.toString();
        		if(session.getAttribute("id") == null){
        			return "loginerror.jsp";
        		}
    			request.setCharacterEncoding("UTF-8");
    			String license_num = request.getParameter("license_num");
    	    	String license_grade = request.getParameter("license_grade");
    	    	String license_date = request.getParameter("license_date");
    	    	String license_agency =request.getParameter("license_agency");
    	    	String in_name=request.getParameter("in_name");
    	    	String in_period=request.getParameter("in_period");
    	    	String in_grade=request.getParameter("in_grade");
    	    	String in_activity=request.getParameter("out_activity");
    	    	String out_name=request.getParameter("out_name");
    	    	String out_period=request.getParameter("out_period");
    	    	String out_grade=request.getParameter("out_grade");
    	    	String out_activity=request.getParameter("out_activity");
    	    	String test_name = request.getParameter("test_name");
    	    	String test_date = request.getParameter("test_date");
    	    	String test_agency = request.getParameter("test_agency");
    	    	String test_grade = request.getParameter("test_grade");
    	    	String test_score=request.getParameter("test_score");
    	    	String etc=request.getParameter("etc");
    			conn = DriverManager.getConnection(url,dbUser,dbPass);    			    			    			
    			
    			stmt = conn.createStatement();
   			    			    		
    			String sql = "UPDATE portfolio SET license_num='" + license_num + "' ,license_grade='"+ license_grade +    						
    						"',license_date='"+license_date+"',license_agency='"+license_agency+"',in_name='"+in_name+
    						"', in_period='"+in_period+"',in_grade='"+in_grade+"',in_activity='"+in_activity+"',out_name='"+
    						out_name+"',out_period='"+out_period+"',out_grade='"+out_grade+"',out_activity='"+out_activity+
    						"',test_name='"+test_name+"',test_date='"+test_date+"',test_agency='"+test_agency+"',test_grade='"+
    						test_grade+"',test_score='"+test_score+"',etc='"+etc+"' where id='" + id+"';";				
    			stmt.executeUpdate(sql);    			

    			stmt.close();
    			conn.close();    			
    		 
     } catch(SQLException e) {
    	System.out.println( e.toString() );
    } finally{    	
    	if(stmt != null) try{stmt.close();} catch(SQLException ex){}			
		if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
    	
    	
        return "content2.do";
 
    }
 
}