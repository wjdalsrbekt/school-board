/**
 * �Խ��� ������ ���� ǥ���ϴ� Action
 */
package com.board.action;
 
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
import com.board.beans.portfolio;
import com.board.controller.CommandAction;
 
public class ModifyformAction2 implements CommandAction {
 
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
    			
    			
    			conn = DriverManager.getConnection(url,dbUser,dbPass);    			    			
    			String query = "select * from portfolio where id = '" + id+"'";
 
    			stmt = conn.createStatement();
    			rs = stmt.executeQuery(query);
    			    			    	
    			ArrayList<portfolio> articleList = new ArrayList<portfolio>();
    			
        		while(rs.next()){        			
        			portfolio article = new portfolio();
        			article.setId(rs.getString("id"));
        			String temp = rs.getString("license_num");
        			temp = temp.replaceAll("\r\n", "<br>");
        			article.setLicense_num(temp);
        			
        			String temp1 = rs.getString("license_grade");
        			temp1 = temp1.replaceAll("\r\n", "<br>");
        			article.setLicense_grade(temp1);
        			
        			String temp2 = rs.getString("license_date");
        			temp2 = temp2.replaceAll("\r\n", "<br>");
        			article.setLicense_date(temp2);
        			
        			String temp3 = rs.getString("license_agency");
        			temp3 = temp3.replaceAll("\r\n", "<br>");
        			article.setLicense_agency(temp3);
        			
        			String temp4 = rs.getString("in_name");
        			temp4 = temp4.replaceAll("\r\n", "<br>");
        			article.setIn_name(temp4);
        			
        			String temp5 = rs.getString("in_period");
        			temp5 = temp5.replaceAll("\r\n", "<br>");
        			article.setIn_period(temp5);
        			
        			String temp6 = rs.getString("in_grade");
        			temp6 = temp6.replaceAll("\r\n", "<br>");
        			article.setIn_grade(temp6);
        			
        			String temp7 = rs.getString("in_activity");
        			temp7 = temp7.replaceAll("\r\n", "<br>");
        			article.setIn_activity(temp7);
        			
        			String temp8 = rs.getString("out_name");
        			temp8 = temp8.replaceAll("\r\n", "<br>");
        			article.setOut_name(temp8);
        			
        			String temp9 = rs.getString("out_period");
        			temp9 = temp9.replaceAll("\r\n", "<br>");
        			article.setOut_period(temp9);
        			
        			String temp10 = rs.getString("out_grade");
        			temp10 = temp10.replaceAll("\r\n", "<br>");
        			article.setOut_grade(temp10);
        			
        			String temp11 = rs.getString("out_activity");
        			temp11 = temp11.replaceAll("\r\n", "<br>");
        			article.setOut_activity(temp11);
        			
        			String temp12 = rs.getString("test_name");
        			temp12 = temp12.replaceAll("\r\n", "<br>");
        			article.setTest_name(temp12);
        			
        			String temp13 = rs.getString("test_date");
        			temp13 = temp13.replaceAll("\r\n", "<br>");
        			article.setTest_date(temp13);
        			
        			String temp14 = rs.getString("test_agency");
        			temp14 = temp14.replaceAll("\r\n", "<br>");
        			article.setTest_agency(temp14);
        			
        			String temp15 = rs.getString("test_grade");
        			temp15 = temp15.replaceAll("\r\n", "<br>");
        			article.setTest_grade(temp15);
        			
        			String temp16 = rs.getString("test_score");
        			temp16 = temp16.replaceAll("\r\n", "<br>");
        			article.setTest_score(temp16);
        			
        			article.setEtc(rs.getString("etc"));
        			articleList.add(article);
        		}
        		request.setAttribute("articleList",articleList);
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
    	
 
        return "list2.jsp";
 
    }
 
}