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
 
public class CoverCommentsWriteAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("UTF-8");
    	//제목과 내용을 입력 받아 변수에 저장
    	int num;
    	String id = null;
    	String email = null;
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	
    	try{
    		String comment = request.getParameter("comment");
    		HttpSession session = request.getSession();
//    		세션을 읽어 로그인 상태가 아니면 로그인 창으로 이동
        	id = (String) session.getAttribute("id");
        	email = (String) session.getAttribute("email");
        	
//        	boardNum = (String) session.getAttribute("num");
        	num=Integer.parseInt(request.getParameter("num"));
        	
    		if( id == null){
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		          // +
						//		"useUnicode=true&characterEncoding = euc-kr";
			String dbUser = "root";
			String dbPass = "root";
    		
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
      		pstmt = conn.prepareStatement("insert into covercomments values("+num+",?,?,?,now(),NULL)");
    		pstmt.setString(1, comment);
    		pstmt.setString(2, id);
    		pstmt.setString(3, email);
    		//쿼리 실행
    		pstmt.executeUpdate();
    	} catch(SQLException ex){
			
		}finally{
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
 
        return "coverlettercontent.do";
 
    }
 
}