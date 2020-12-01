/**
 * 占쌉쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쌍댐옙 Action
 */
package com.board.action;
 
import java.sql.*;
import java.util.ArrayList;
 


import javax.servlet.http.HttpServletRequest;
 
import javax.servlet.http.HttpServletResponse;
 
import javax.servlet.http.HttpSession;

import com.board.beans.*;
 
import com.board.controller.CommandAction;
 
public class ContentAction2 implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");
    	//占쏙옙호占쏙옙 占쌉력받아울옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
    	
    	Connection conn = null;
    	Statement stmt = null;    	
    	ResultSet rs = null;   
    	
    	//占쏙옙회占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙
    	int score = 0;
    	
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
    		
    		String query = "select * from portfolio where id = '"+id+"'";
    		
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		//占쏙옙회占쏙옙 占쏙옙占쏙옙트占쏙옙 占쌨아울옙
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
    		
    		//占쏙옙회占쏙옙 占쏙옙占쏙옙占쏙옙트
    		//String query2 =  "UPDATE board SET score='" + score +    						
			//		"' WHERE num=" + num;    		
    		//stmt.executeUpdate(query2); 
    		
    		} catch(SQLException ex){
    		
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
    	
        return "content2.jsp";
    }
}