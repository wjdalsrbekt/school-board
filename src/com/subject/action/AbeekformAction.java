/**
 * �Խ��� ������ ���� ǥ���ϴ� Action
 */
package com.subject.action;
 
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
import com.subject.beans.Subject;
 
public class AbeekformAction implements CommandAction {
 
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
    			String query = "select * from subject where id = '" + id+"'";
    					
    			stmt = conn.createStatement();
    			
    			rs = stmt.executeQuery(query);
    			    			    	
    			ArrayList<Subject> abeekList = new ArrayList<Subject>();
    			
        		while(rs.next()){        			
        			Subject abeek = new Subject();
        			abeek.setSub0(rs.getString("sub0"));
                    abeek.setSub1(rs.getString("sub1"));
                    abeek.setSub2(rs.getString("sub2"));
                    abeek.setSub3(rs.getString("sub3"));
                    abeek.setSub4(rs.getString("sub4"));
                    abeek.setSub5(rs.getString("sub5"));
                    abeek.setSub6(rs.getString("sub6"));
                    abeek.setSub7(rs.getString("sub7"));
                    abeek.setSub8(rs.getString("sub8"));
                    abeek.setSub9(rs.getString("sub9"));
                    abeek.setSub10(rs.getString("sub10"));
                    abeek.setSub11(rs.getString("sub11"));
                    abeek.setSub12(rs.getString("sub12"));
                    abeek.setSub13(rs.getString("sub13"));
                    abeek.setSub14(rs.getString("sub14"));
                    abeek.setSub15(rs.getString("sub15"));
                    abeek.setSub16(rs.getString("sub16"));
                    abeek.setSub17(rs.getString("sub17"));
                    abeek.setSub18(rs.getString("sub18"));
                    abeek.setSub19(rs.getString("sub19"));
                    abeek.setSub20(rs.getString("sub20"));
                    abeek.setSub21(rs.getString("sub21"));
                    abeek.setSub22(rs.getString("sub22"));
                    abeek.setSub23(rs.getString("sub23"));
                    abeek.setSub24(rs.getString("sub24"));
                    abeek.setSub25(rs.getString("sub25"));
                    abeek.setSub26(rs.getString("sub26"));
                    abeek.setSub27(rs.getString("sub27"));
                    abeek.setSub28(rs.getString("sub28"));
                    abeek.setSub29(rs.getString("sub29"));
                    abeek.setSub30(rs.getString("sub30"));
                    abeek.setSub31(rs.getString("sub31"));
                    abeek.setSub32(rs.getString("sub32"));
                    abeek.setSub33(rs.getString("sub33"));
                    abeek.setSub34(rs.getString("sub34"));
                    abeek.setSub35(rs.getString("sub35"));
                    abeek.setSub36(rs.getString("sub36"));
                    abeek.setSub37(rs.getString("sub37"));
                    abeek.setSub38(rs.getString("sub38"));
                    abeek.setSub39(rs.getString("sub39"));
                    abeek.setSub40(rs.getString("sub40"));
                    abeek.setSub41(rs.getString("sub41"));
                    abeek.setSub42(rs.getString("sub42"));
                    abeek.setSub43(rs.getString("sub43"));
                    abeek.setSub44(rs.getString("sub44"));
                    abeek.setSub45(rs.getString("sub45"));
                    abeek.setSub46(rs.getString("sub46"));
                    abeek.setSub47(rs.getString("sub47"));
                    abeek.setSub48(rs.getString("sub48"));
                    abeek.setSub49(rs.getString("sub49"));
                    abeek.setSub50(rs.getString("sub50"));
                    abeek.setSub51(rs.getString("sub51"));
                    abeek.setSub52(rs.getString("sub52"));
                    abeek.setSub53(rs.getString("sub53"));
                    abeek.setSub54(rs.getString("sub54"));
                    abeek.setSub55(rs.getString("sub55"));
                    abeek.setSub56(rs.getString("sub56"));
                    abeek.setSub57(rs.getString("sub57"));
                    abeek.setSub58(rs.getString("sub58"));
                    abeek.setSub59(rs.getString("sub59"));
                    abeek.setSub60(rs.getString("sub60"));
                    abeek.setSub61(rs.getString("sub61"));
                    abeek.setSub62(rs.getString("sub62"));
                    abeek.setSub63(rs.getString("sub63"));
                    abeek.setSub64(rs.getString("sub64"));
                    abeek.setSub65(rs.getString("sub65"));
        			abeekList.add(abeek);
        		}
        		request.setAttribute("abeekList",abeekList);
        		
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
    	
 
        return "abeek.jsp";
 
    }
 
}