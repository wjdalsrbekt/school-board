/**
 * 글을 작성 하고 데이터베이스에 넣는 Action
 */
package com.board.action;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class WriteAction2 implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("UTF-8");
    	//제목과 내용을 입력 받아 변수에 저장
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
    	String etc=request.getParameter("etc");;
    	
    	Object _id=null;
    	String id = null;
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	
    	try{
    		HttpSession session = request.getSession();
    		//세션을 읽어 로그인 상태가 아니면 로그인 창으로 이동
    		_id=session.getAttribute("id");
			id=_id.toString();
    		if( id == null){
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		          // +
						//		"useUnicode=true&characterEncoding = euc-kr";
			String dbUser = "root";
			String dbPass = "root";
    		
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
      		pstmt = conn.prepareStatement(      				
    				"insert into board.portfolio (license_num,license_grade,license_date,license_agency,in_name,"
    				+ "in_period,in_grade,in_activity,out_name,out_period,out_grade,out_activity"
    				+ "test_name,test_date,test_agency,test_grade,test_score,etc) values(,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    				pstmt.setString(1, license_num);
    				pstmt.setString(2, license_grade);
    				pstmt.setString(3, license_date);
    				pstmt.setString(4, license_agency);
    				pstmt.setString(5, in_name);
    				pstmt.setString(6, in_period);
    				pstmt.setString(7, in_grade);
    				pstmt.setString(8, in_activity);
    				pstmt.setString(9, out_name);
    				pstmt.setString(10, out_period);
    				pstmt.setString(11, out_grade);
    				pstmt.setString(12, out_activity);
    				pstmt.setString(13, test_name);
    				pstmt.setString(14, test_date);
    				pstmt.setString(15, test_agency);
    				pstmt.setString(16, test_grade);
    				pstmt.setString(17, test_score);
    				pstmt.setString(18, etc);
    				//쿼리 실행
    				pstmt.executeUpdate();
    				System.out.println("out");
    				
    	} catch(SQLException ex){
			
		}finally{
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
 
        return "write2.jsp";
 
    }
 
}