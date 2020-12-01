package com.board.action;
 
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.beans.board;
import com.board.beans.comment;
import com.board.controller.CommandAction;
 
public class ListAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	request.setCharacterEncoding("UTF-8");
    	String opt = request.getParameter("opt");
    	String condition = request.getParameter("condition");
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	
    	int pageSize = 10;
    	int pageGroupSize = 5;
    	
    	String pageNum = request.getParameter("pageNum");
    	
    	 if (pageNum == null) {
             pageNum = "1";
    	 }

    	 int currentPage = Integer.parseInt(pageNum);
    	 int startRow = (currentPage - 1) * pageSize + 1;//한 페이지의 시작글 번호
    	 int endRow = currentPage * pageSize;//한 페이지의 마지막 글번호
    	 int count = 0;
    	 int number=0;
    	 
    	 
    	board board = new board();
    	
    	
    	count = board.getCount(request, response,opt,condition,1);
    	//�˻��ɼǰ� �˻����� �޾� ������ ����
    	
    	try {
    		HttpSession session = request.getSession();
    		//�α����� �Ǿ����� ������ �����˾��� �α���ȭ������ �̵�    		    		
    		String id = (String) session.getAttribute("id");
    		if(id == null){    			
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://127.0.0.1/board";
    		           // +
    					//		"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "root";
    		String query = null; 
    		
    		ArrayList<board> articleList = new ArrayList<board>();    	

    		if (count > 0) {        
                if(endRow>count)
                {
                        endRow = count;
                }
            articleList = board.select(startRow,endRow, request, response,opt,condition,1);//현재 페이지에 해당하는 글 목록
            
    		} else {
            articleList = null;
    		}
    		number=count-(currentPage-1)*pageSize;//글목록에 표시할 글번호
    		
    		
    		
    		//페이지그룹의 갯수 
            //ex) pageGroupSize가 3일 경우 '[1][2][3]'가 pageGroupCount 개 만큼 있다.  
            int pageGroupCount = count/(pageSize*pageGroupSize)+( count % (pageSize*pageGroupSize) == 0 ? 0 : 1);
            //페이지 그룹 번호 
            //ex) pageGroupSize가 3일 경우  '[1][2][3]'의 페이지그룹번호는 1 이고  '[2][3][4]'의 페이지그룹번호는 2 이다.
            int numPageGroup = (int) Math.ceil((double)currentPage/pageGroupSize);


            request.setAttribute("currentPage", new Integer(currentPage));
            request.setAttribute("startRow", new Integer(startRow));
            request.setAttribute("endRow", new Integer(endRow));
            request.setAttribute("count", new Integer(count));
            request.setAttribute("pageSize", new Integer(pageSize));
            request.setAttribute("number", new Integer(number));
            request.setAttribute("pageGroupSize", new Integer(pageGroupSize));
            request.setAttribute("numPageGroup", new Integer(numPageGroup));
            request.setAttribute("pageGroupCount", new Integer(pageGroupCount));
    		request.setAttribute("articleList",articleList);

    		
    	} catch(SQLException ex){
    		
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
 
        return "list.jsp";
 
    }
 
}