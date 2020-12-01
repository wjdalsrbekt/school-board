<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="description" content="">
  <meta name="author" content="">

  <title>list</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <link href="css/portfolio.css" rel="stylesheet">
  <!-- cycle -->
	<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
	<script>
		$(document).ready(function(){
		$('.cycle').cycle({ 
		    fx:     'scrollLeft', 
		    timeout: 5000
		 });
		});
	</script>
<!-- cycle -->
  <script> 
//html dom 이 다 로딩된 후 실행된다.
  $(document).ready(function(){
      // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
      $(".menu>a").click(function(){
          var submenu = $(this).next("ul");

          // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
          if( submenu.is(":visible") ){
              submenu.slideUp();
          }else{
              submenu.slideDown();
          }
      });
  });

		function writeCheck()
		  {
		   var form = document.getElementById("inform");
		  		return true;
		  }
		</script>
</head>

<body>
 <a id="logo" href="main.jsp"><img src="./img/cbnu.jpg" height="40px" width="40px"/>충북대학교 학적 게시판</a>
  <!-- main wrapper -->
  <div class="menubar">
	<ul>
 		<li id="first"><a href="#">학점관리</a>
 		<ul>
 			<li><a href="/board/abeekform.do">학점관리</a></li>
		</ul>
		</li>
 	   <li id="third"><a href="#">포트폴리오</a>
			<ul>
     			<li><a href="/board/modifyform2.do">포트폴리오 등록</a></li>
			    <li><a href="/board/content2.do">내 포트폴리오</a></li>
		    </ul>
	   </li>
 	   <li id="fourth"><a href="#">자기소개서</a>
			<ul>
     			<li><a href="/board/coverletterWriteform.jsp">자기소개서 등록</a></li>
    			<li><a href="/board/coverletterlist.do">자기소개서 게시판목록</a></li>
		    </ul>
	   </li>
 	   <li id="fifth"><a href="#">자유게시판</a>
			<ul>
     			<li><a href="/board/list.do">게시판</a></li>
		    </ul>
	   </li>
	</ul>
  </div>
    <!-- /#sidebar-wrapper -->
	<div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-bugundy border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">개인 메뉴</div>
      <div class="list-group list-group-flush">
        <a href="/board/logout.do" class="list-group-item list-group-item-action bg-bugundy">로그아웃</a>
        <a href="/board/infomodifyform.do" class="list-group-item list-group-item-action bg-bugundy">회원정보 수정</a>
        <a href="/board/retireconfirm.jsp" class="list-group-item list-group-item-action bg-bugundy">회원탈퇴</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle" style="margin-right:10px;">Menu</button> 
             	사용자ID : ${id}
      </nav>

      <div class="container-fluid">
<!--         		<div style="text-align:right"> -->
<%-- 	사용자ID : ${id} <input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'" style="margin-left:100"> --%>
<!-- 	</div> -->
	<c:forEach items="${articleList}" var="article">
	<div id="box">
	<ul>
		<li class="menu">
			<a style="text-align:center;color:white"><h2 style="background-color:#932c47;border-radius: 20px">${article.id}의 자격증 취득기록</h2></a>
			<ul class="hide">
				<li><table align="center" style=";border-spacing:10px;border-collapse: separate"><tr>
			<td style="background-color:#932c47;color:white;text-align:center;width:288px;height:50px;border-radius: 20px">시험명</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:287px;height:50px;border-radius: 20px">등급</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:287px;height:50px;border-radius: 20px">취득일자</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:288px;height:50px;border-radius: 20px">인증기관</td>						
		</tr>
		<tr>
			<td style="text-align:left">${article.license_num}</td>
			<td style="text-align:left">${article.license_grade}</td>	
			<td style="text-align:left">${article.license_date}</td>	
			<td style="text-align:left" colspan="5">${article.license_agency}</td>						
		</tr></table></li>
			</ul>
	</ul>
	<ul>
		<li class="menu">
			<a style="text-align:center;color:white;border-radius: 20px"><h2 style="background-color:#932c47;border-radius: 20px">${article.id}의 교내/외 활동</h2></a>
			<ul class="hide">
				<li>
				<table align="center" style=";border-spacing:10px;border-collapse: separate;">
				<tr>
				<td style="text-align:center; background-color:#932c47;color:white;width:1180px;height:50px;border-radius: 20px">교내활동</td>
				</tr>
				</table>
				</li>
				<li><table align="center" style=";border-spacing:10px;border-collapse: separate;"><tr>
			<td style="background-color:#932c47;color:white;text-align:center;width:288px;height:50px;border-radius: 20px">단체명</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:287px;height:50px;border-radius: 20px">활동기간</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:287px;height:50px;border-radius: 20px">직위</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:288px;height:50px;border-radius: 20px">활동사항</td>						
		</tr>
		<tr>
			<td style="text-align:left;border-radius: 20px">${article.in_name}</td>
			<td style="text-align:left;border-radius: 20px">${article.in_period}</td>	
			<td style="text-align:left;border-radius: 20px">${article.in_grade}</td>	
			<td style="text-align:left;border-radius: 20px" colspan="2">${article.in_activity}</td>						
		</tr></table></li>
		<li>
		<table align="center" style=";border-spacing:10px;border-collapse: separate">
		<tr>
		<td style="text-align:center; background-color:#932c47;color:white ;width:1180px;height:50px;border-radius: 20px">교외활동</td>
		</tr>
		</table>
		</li>
		
		<li><table align="center" style=";border-spacing:10px;border-collapse: separate"><tr>
			<td style="background-color:#932c47;color:white;text-align:center;width:288px;height:50px;border-radius: 20px">단체명</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:287px;height:50px;border-radius: 20px">활동기간</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:287px;height:50px;border-radius: 20px">직위</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:288px;height:50px;border-radius: 20px">활동사항</td>						
		</tr></table>
		</li>
		<li>
		<table align="center" style=";border-spacing:10px;border-collapse: separate"><tr>
			<td style="text-align:left;border-radius: 20px">${article.out_name}</td>
			<td style="text-align:left;border-radius: 20px">${article.out_period}</td>	
			<td style="text-align:left;border-radius: 20px">${article.out_grade}</td>	
			<td style="text-align:left;border-radius: 20px" colspan="2">${article.out_activity}</td>						
		</tr></table>
		</li>
		<li>
			<table align="center" style=";border-spacing:10px;border-collapse: separate">
				<tr>
					<td style="text-align:center; background-color:#932c47;color:white ;width:1180px;border-radius: 20px">기타사항</td>
				<tr>
			</table>
		</li>
				
		<li>
		<table align="center" style=";border-spacing:10px;border-collapse: separate">
		<tr>
		<td style="text-align:center;border-radius: 20px">${article.etc}</td>
		</tr>
		</table></li>
			</ul>
	</ul>
	<ul>
		<li class="menu">
			<a style="text-align:center;color:white"><h2 style="background-color:#932c47;border-radius: 20px">${article.id}의 외국어 성적기록</h2></a>
			<ul class="hide">
				<li><table align="center" style=";border-spacing:10px;border-collapse: separate"><tr>
			<td style="background-color:#932c47;color:white;text-align:center;width:237px;height:50px;border-radius: 20px">시험명</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:237px;height:50px;border-radius: 20px">시행일</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:237px;height:50px;border-radius: 20px">시행기관</td>
			<td style="background-color:#932c47;color:white;text-align:center;width:237px;height:50px;border-radius: 20px">해당 학년</td>
			<td style="background-color:#932c47;color:white;text-align:center;border-radius: 20px">성적</td>						
		</tr>
		<tr>
			<td style="text-align:left;width:200px;border-radius: 20px">${article.test_name}</td>
			<td style="text-align:left;border-radius: 20px">${article.test_date}</td>	
			<td style="text-align:left;border-radius: 20px">${article.test_agency}</td>
			<td style="text-align:left;border-radius: 20px">${article.test_grade}</td>
			<td style="text-align:left;border-radius: 20px">${article.test_score}</td>						
		</tr>	</table></li>
			</ul>
	</ul>
</div>
	<div style="text-align:right">
		<c:if test="${article.id eq id}">
			<%String id=(request.getParameter("id")); %>
			<!--  <input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='delete.do?num=${article.num}'">-->
			<input type=button class="btn btn-warning" value="수정하기" OnClick="window.location='modifyform2.do?id=${article.id}'">	
		</c:if>		
		<input type=button class="btn btn-secondary" value="돌아가기" OnClick="history.back();">
		<input type=button class="btn btn-primary" value="출력하기" OnClick="printArea()">
	</div>
	</c:forEach>		
	<br><br>
     		 </div>
	  		</div>

    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor1/jquery/jquery.min.js"></script>
  <script src="vendor1/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
  $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
    $( document ).ready( function() {
        $( "#wrapper" ).toggleClass( "toggled" );
    } );
  </script>
        <!-- cycle -->
     <div class="cycleborder">
	<div class="cycle" style="text-align:center">
		<div class="cyclediv" style="background:black;"><a href="https://cbnu.blackboard.com/" target="_blank"><img class="topimg" src="img/ecampus.png"/></a></div>
		<div class="cyclediv"><a href="https://eis.cbnu.ac.kr/" target="_blank"><img class="topimg" src="img/gaesin.png"/></a></div>
		<div class="cyclediv"><a href="https://software.cbnu.ac.kr/" target="_blank"><img class="topimg" src="img/software.png"/></a></div>
	</div>
	</div>
	<!-- cycle -->
<!-- Footer -->
	<section id="footer">
		<div class="container">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p>National Transaction Corporation is a Registered MSP/ISO of Elavon, Inc. Georgia<br />
					&copy All right Reversed.Sunlimetech</p>
				</div>
			</div>	
	</section>
	<!-- ./Footer -->
	  </script>
	<script type="text/javascript">
	function printArea(){
	     var sw=screen.width;
	     var sh=screen.height;
	     var w=720;//팝업창 가로길이
	     var h=480;//세로길이
	     var xpos=(sw-w)/2; //화면에 띄울위치.
	     var ypos=(sh-h)/2; //중앙에 띄웁니다.
	 
	     var pHeader="<html><head><link rel='stylesheet' href='css/bootstrap.min.css'><link rel='stylesheet' href='css/simple-sidebar.css'><link rel='stylesheet' href='css/portfolio.css'><title>인쇄하기</title></head><body>";
	     var pgetContent=document.getElementById("box").innerHTML + "<br>";
	     //innerHTML을 이용하여 Div로 묶어준 부분을 가져옵니다.
	     var pFooter="</body></html>";
	     pContent=pHeader + pgetContent + pFooter; 
	      
	     pWin=window.open("","print","width=" + w +"',height="+ h +",top=" + ypos + ",left="+ xpos +",status=1,scrollbars=1"); //동적인 새창을 띄웁니다.
	     pWin.document.open(); //팝업창 오픈
	     pWin.document.write(pContent); //새롭게 만든 html소스를 씁니다.
	     pWin.document.close(); //클로즈
	     pWin.print(); //윈도우 인쇄 창 띄우고
	     pWin.close(); //인쇄가 되던가 취소가 되면 팝업창을 닫습니다.
	    }
</script>
</body>

</html>
