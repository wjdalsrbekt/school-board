<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/login_css.css" rel="stylesheet" type="text/css" />
		
		<title>login</title>
		<script type="text/javascript">
			function login(){
				document.form.submit();
			}
			
			function cancel(){
				document.form.reset();
			}	
		</script>
	</head>
	<body>
		<div class="wrapper fadeInDown">
		  <div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
			  <img src="./img/cbnu.jpg" id="icon" alt="User Icon" style="width:200px"/>
			</div>

			<!-- Login Form -->
			<form action="login.do" method="post" name="form">
			  <input type="text" id="id" class="fadeIn second" name="id" placeholder="ID"/>
			  <input type="password" id="password" class="fadeIn third" name="password" placeholder="PASSWORD"/>
<!-- 			  <input type="button" class="fadeIn fourth" value="로그인" onClick="login()"/> -->
			  <input type="button" class="btn btn-primary" value="로그인" onClick="login()" />
			  <input type="button" class="btn btn-secondary" value="취소" onClick="cancel()" style="background-color:crimson;"/>
			  
			</form>
			<!-- Remind Passowrd -->
			<div id="formFooter">
<!-- 			  <a class="underlineHover" href="#">Forgot Password?</a><br/> -->
			  
			  <a class="underlineHover"  href="./loginform.jsp">Join us!!</a>
			  
			</div>
			<script src="vendor1/jquery/jquery.min.js"></script>
			<script src="vendor1/bootstrap/js/bootstrap.bundle.min.js"></script>
			
		  </div>
		</div>
	</body>
</html>