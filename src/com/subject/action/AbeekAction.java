/**
 * �Խ��� ���� �����ϴ� Action
 */
package com.subject.action;
 
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class AbeekAction implements CommandAction {
 
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
                String sub0 = request.getParameter("sub0");
                String sub1 = request.getParameter("sub1");
                String sub2 = request.getParameter("sub2");
                String sub3 = request.getParameter("sub3");
                String sub4 = request.getParameter("sub4");
                String sub5 = request.getParameter("sub5");
                String sub6 = request.getParameter("sub6");
                String sub7 = request.getParameter("sub7");
                String sub8 = request.getParameter("sub8");
                String sub9 = request.getParameter("sub9");
                String sub10 = request.getParameter("sub10");
                String sub11 = request.getParameter("sub11");
                String sub12 = request.getParameter("sub12");
                String sub13 = request.getParameter("sub13");
                String sub14 = request.getParameter("sub14");
                String sub15 = request.getParameter("sub15");
                String sub16 = request.getParameter("sub16");
                String sub17 = request.getParameter("sub17");
                String sub18 = request.getParameter("sub18");
                String sub19 = request.getParameter("sub19");
                String sub20 = request.getParameter("sub20");
                String sub21 = request.getParameter("sub21");
                String sub22 = request.getParameter("sub22");
                String sub23 = request.getParameter("sub23");
                String sub24 = request.getParameter("sub24");
                String sub25 = request.getParameter("sub25");
                String sub26 = request.getParameter("sub26");
                String sub27 = request.getParameter("sub27");
                String sub28 = request.getParameter("sub28");
                String sub29 = request.getParameter("sub29");
                String sub30 = request.getParameter("sub30");
                String sub31 = request.getParameter("sub31");
                String sub32 = request.getParameter("sub32");
                String sub33 = request.getParameter("sub33");
                String sub34 = request.getParameter("sub34");
                String sub35 = request.getParameter("sub35");
                String sub36 = request.getParameter("sub36");
                String sub37 = request.getParameter("sub37");
                String sub38 = request.getParameter("sub38");
                String sub39 = request.getParameter("sub39");
                String sub40 = request.getParameter("sub40");
                String sub41 = request.getParameter("sub41");
                String sub42 = request.getParameter("sub42");
                String sub43 = request.getParameter("sub43");
                String sub44 = request.getParameter("sub44");
                String sub45 = request.getParameter("sub45");
                String sub46 = request.getParameter("sub46");
                String sub47 = request.getParameter("sub47");
                String sub48 = request.getParameter("sub48");
                String sub49 = request.getParameter("sub49");
                String sub50 = request.getParameter("sub50");
                String sub51 = request.getParameter("sub51");
                String sub52 = request.getParameter("sub52");
                String sub53 = request.getParameter("sub53");
                String sub54 = request.getParameter("sub54");
                String sub55 = request.getParameter("sub55");
                String sub56 = request.getParameter("sub56");
                String sub57 = request.getParameter("sub57");
                String sub58 = request.getParameter("sub58");
                String sub59 = request.getParameter("sub59");
                String sub60 = request.getParameter("sub60");
                String sub61 = request.getParameter("sub61");
                String sub62 = request.getParameter("sub62");
                String sub63 = request.getParameter("sub63");
                String sub64 = request.getParameter("sub64");
                String sub65 = request.getParameter("sub65");

    			conn = DriverManager.getConnection(url,dbUser,dbPass);    			    			    			
    			
    			stmt = conn.createStatement();
   			    			    		
    			String sql = "UPDATE board.subject SET sub0='" + sub0 + "' ,sub1='" + sub1 + "' ,sub2='" + sub2 + "' ," + "sub3='" + sub3 + "' ,sub4='" + sub4 + "' ,sub5='" + sub5 + "' ,sub6='" + sub6 + "' ,sub7='" + sub7 + "' ,sub8='" + sub8 + "' ,sub9='" + sub9 + "' ,sub10='" + sub10 + "' ,sub11='" + sub11 + "' ,sub12='" + sub12 + "' ,sub13='" + sub13 + "' ,sub14='" + sub14 + "' ,sub15='" + sub15 + "' ,sub16='" + sub16 + "' ,sub17='" + sub17 + "' ,sub18='" + sub18 + "' ,sub19='" + sub19 + "' ,sub20='" + sub20 + "' ,sub21='" + sub21 + "' ,sub22='" + sub22 + "' ,sub23='" + sub23 + "' ,sub24='" + sub24 + "' ,sub25='" + sub25 + "' ,sub26='" + sub26 + "' ,sub27='" + sub27 + "' ,sub28='" + sub28 + "' ,sub29='" + sub29 + "' ,sub30='" + sub30 + "' ,sub31='" + sub31 + "' ,sub32='" + sub32 + "' ,sub33='" + sub33 + "' ,sub34='" + sub34 + "' ,sub35='" + sub35 + "' ,sub36='" + sub36 + "' ,sub37='" + sub37+ "' ,sub38='" + sub38 + "' ,sub39='" + sub39 + "' ,sub40='" + sub40 + "' ,sub41='" + sub41 + "' ,sub42='" + sub42 + "' ,sub43='" + sub43 + "' ,sub44='" + sub44 + "' ,sub45='" + sub45 + "' ,sub46='" + sub46 + "' ,sub47='" + sub47 + "' ,sub48='" + sub48 + "' ,sub49='" + sub49 + "' ,sub50='" + sub50 + "' ,sub51='" + sub51 + "' ,sub52='" + sub52 + "' ,sub53='" + sub53 + "' ,sub54='" + sub54 + "' ,sub55='" + sub55 + "' ,sub56='" + sub56 + "' ,sub57='" + sub57 + "' ,sub58='" + sub58 + "' ,sub59='" + sub59 + "' ,sub60='" + sub60 + "' ,sub61='" + sub61 + "' ,sub62='" + sub62 + "' ,sub63='" + sub63 + "' ,sub64='" + sub64 + "' ,sub65='" + sub65 + "'  WHERE id='" + id+"'";				
    			stmt.executeUpdate(sql);    			
    			stmt.close();
    			conn.close();    			
    		 
     } catch(SQLException e) {
    	System.out.println( e.toString() );
    } finally{    	
    	if(stmt != null) try{stmt.close();} catch(SQLException ex){}			
		if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
    	
    	
        return "abeekform.do";
 
    }
 
}