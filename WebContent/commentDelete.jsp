<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<html>
	<head></head>
	<body>
  			<script>
  			<%int num=Integer.parseInt(request.getParameter("boardnum")); %>
   				self.window.alert("댓글을 삭제하였습니다.");
   				location.href="content.do?num="+<%=num%>;
  			</script>
</body>
</html>
