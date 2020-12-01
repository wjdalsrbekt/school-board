<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
   <head>
      <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta name="description" content="">
        <meta name="author" content="">
		<title>학점 페이지</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/simple-sidebar.css" rel="stylesheet">
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
   </head>
<script>
	var grade = ["1학년","1학년","1학년","1학년","1학년","1학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","2학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","3학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년","4학년"];
	var semester = ["1학기","1학기","1학기","2학기","2학기","2학기","1학기","1학기","1학기","1학기","1학기","1학기","1학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기","1학기","1학기","1학기","1학기","1학기","1학기","1학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기","1학기","1학기","1학기","1학기","1학기","1학기","1학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기","2학기"];
	var type = ["전필","전선","전선","전필","전선","전선","전필","전필","전선","전선","전선","전선","전선","전필","전필","전필","전선","전선","전선","전선","전필","전필","전선","전선","전선","전선","전선","전필","전필","전선","전선","전선","전선","전선","전선","전필","전선","전선","전선","전선","전선","전선","전필","전선","전선","전선","전선","전선","전선","전선","전선","전선"];
	var subj = ["이산수학","창의공학설계","미래설계탐색1","컴퓨터시스템개론","소프트웨어도구 실험","미래설계탐색2","논리회로 및 실험","자료구조","객체지향 프로그래밍","선형대수학","오토마타","미래설계준비1","기초프로젝트","컴퓨터구조","프로그래밍언어론","알고리즘","시스템프로그래밍","인간컴퓨터상호작용 프로그래밍","미래설계준비2","개발프로젝트","운영체제","객체지향 설계","웹기반소프트웨어 개발","컴파일러","컴퓨터네트워크","미래설계구현1","전문프로젝트 강추!","소프트웨어공학","산학프로젝트","확률및 통계","펌웨어프로그래밍","데이터통신","데이터통신","컴퓨터그래픽스","미래설계구현2","캡스톤디자인1","임베디드시스템","영상처리","인공지능","산학초청세미나1","컴퓨터교재연구 및 지도법","데이터베이스설계","캡스톤디자인2","그래프이론","정보보호","정보검색","산학초청세미나2","컴퓨터논리 및 논술","컴퓨터논리 및 논술","컴퓨터교육론","빅데이터처리","실험실 프로젝트","정보콘텐츠 SW 프로젝트"];
	var score = [3,2,1,3,2,1,3,3,3,3,3,1,2,3,3,3,3,3,1,2,3,3,3,3,3,1,3,2,3,3,3,3,3,1,2,3,3,3,1,3,3,2,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,3,4,3,3,3,3,3,3];
</script>
<body>   
<script>
$(document).ready(function(){
  $('.toast').toast('show');
});
</script>

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
	<!-- 	</div> -->


      <!-- ******************************************* authenticate.jsp의 content ******************************************* -->
      <div class="container">
         <h3 style="margin: 30px;text-align: center">21년 졸업생 기준 교양과목 영역별 이수학점</h3>

         <table class="table table-bordered">
            <tr>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">전공 <br>(학과/학부)</th>
               <th colspan="6" class="align-middle" style="background-color: #932c47; color: white;text-align:center">기초교양</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">심화<br>교양</th>
              <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">특성<br>교양</th>
              <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">교양최저 이수기준 학점</th>
             <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">교양과목 이수상한 학점</th>
          </tr>
            <tr>
               <th colspan="4" class="align-middle" style="background-color: #932c47; color: white;text-align:center">공통기초</th>
               <th colspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">자연이공계 기초</th>
            </tr>
            <tr>
               <th style="background-color: #932c47; color: white;text-align:center">국어와<br>작문</th>
               <th style="background-color: #932c47; color: white;text-align:center">글쓰기와<br>소통</th>
               <th style="background-color: #932c47; color: white;text-align:center">컴퓨터<br>활용</th>
               <th style="background-color: #932c47; color: white;text-align:center">외국어/<br>한국어</th>
               <th style="background-color: #932c47; color: white;text-align:center">수학</th>
               <th style="background-color: #932c47; color: white;text-align:center">자연과학</th>
            </tr>
            <tr>
               <th style="text-align:center">소프트웨어학과</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">0</th>
               <th style="text-align:center">6</th>
               <th style="text-align:center" colspan="2">19</th>
               <th style="text-align:center">12</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">46</th>
               <th style="text-align:center">57</th>
            </tr>
         </table>
      </div>
         
      <div class="container">
         <h3 style="margin: 30px;text-align: center">21년 졸업생 기준 전공 이수학점</h3>
         
         <table class="table table-bordered">
            <tr>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">대학</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">전공 (학과/학부)</th>
               <th colspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">교양과정</th>
               <th colspan="5" class="align-middle" style="background-color: #932c47; color: white;text-align:center">전공과정</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">일반선택</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">졸업학점</th>
            </tr>
            <tr>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">필수</th>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">선택</th>
               <th colspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">최소전공인정학점</th>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">선택(심화)</th>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">계</th>
            </tr>
            <tr>
               <th style="background-color: #932c47; color: white;text-align:center">필수</th>
               <th style="background-color: #932c47; color: white;text-align:center">선택</th>
               <th style="background-color: #932c47; color: white;text-align:center">소계</th>
            </tr>
            <tr>
               <th style="text-align:center">전자정보대학</th>
               <th style="text-align:center">소프트웨어학과</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">43</th>
               <th style="text-align:center">46</th>
               <th style="text-align:center">36</th>
               <th style="text-align:center">72</th>
               <th style="text-align:center">21</th>
               <th style="text-align:center">93</th>
               <th style="text-align:center">0이상</th>
               <th style="text-align:center">150</th>
            </tr>
         </table>
      </div>
      
      
      
      
      
      <script>
         
         
      </script>
      <form action="abeek.do" method="POST">
      <c:forEach items="${abeekList}" var="abeek">
      <div id="t1" class="container text-center" style="margin-top: 100px;">
         <h3 style="margin-bottom: 20px;">공학인증 교육 학점 관리</h3>
         <table class="table table-striped table-bordered table-hover">
            <tr>
               <th style="background-color: #932c47; color: white;text-align:center">학년</th>
            <th style="background-color: #932c47; color: white;text-align:center">학기</th>
            <th style="background-color: #932c47; color: white;text-align:center">분류</th>
            <th style="background-color: #932c47; color: white;text-align:center">강좌</th>
            <th style="background-color: #932c47; color: white;text-align:center">학점</th>
         </tr>
         
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub0 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(0);"><input type="hidden" id="0" name="sub0" value="${abeek.sub0}">이산수학</th>
			</c:if>
			<c:if test="${abeek.sub0 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(0);"><input type="hidden" id="0" name="sub0" value="${abeek.sub0}">이산수학</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub1 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(1);"><input type="hidden" id="1" name="sub1" value="${abeek.sub1}">창의공학설계</th>
			</c:if>
			<c:if test="${abeek.sub1 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(1);"><input type="hidden" id="1" name="sub1" value="${abeek.sub1}">창의공학설계</th>
			</c:if>
            <th class="credit" style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub2 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(2);"><input type="hidden" id="2" name="sub2" value="${abeek.sub2}">미래설계탐색1</th>
			</c:if>
			<c:if test="${abeek.sub2 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(2);"><input type="hidden" id="2" name="sub2" value="${abeek.sub2}">미래설계탐색1</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub3 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(3);"><input type="hidden" id="3" name="sub3" value="${abeek.sub3}">컴퓨터시스템개론</th>
			</c:if>
			<c:if test="${abeek.sub3 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(3);"><input type="hidden" id="3" name="sub3" value="${abeek.sub3}">컴퓨터시스템개론</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub4 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(4);"><input type="hidden" id="4" name="sub4" value="${abeek.sub4}">소프트웨어도구 실험</th>
			</c:if>
			<c:if test="${abeek.sub4 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(4);"><input type="hidden" id="4" name="sub4" value="${abeek.sub4}">소프트웨어도구 실험</th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub5 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(5);"><input type="hidden" id="5" name="sub5" value="${abeek.sub5}">미래설계탐색2</th>
			</c:if>
			<c:if test="${abeek.sub5 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(5);"><input type="hidden" id="5" name="sub5" value="${abeek.sub5}">미래설계탐색2</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub6 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(6);"><input type="hidden" id="6" name="sub6" value="${abeek.sub6}">논리회로 및 실험</th>
			</c:if>
			<c:if test="${abeek.sub6 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(6);"><input type="hidden" id="6" name="sub6" value="${abeek.sub6}">논리회로 및 실험</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub7 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(7);"><input type="hidden" id="7" name="sub7" value="${abeek.sub7}">자료구조</th>
			</c:if>
			<c:if test="${abeek.sub7 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(7);"><input type="hidden" id="7" name="sub7" value="${abeek.sub7}">자료구조</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub8 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(8);"><input type="hidden" id="8" name="sub8" value="${abeek.sub8}">객체지향 프로그래밍</th>
			</c:if>
			<c:if test="${abeek.sub8 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(8);"><input type="hidden" id="8" name="sub8" value="${abeek.sub8}">객체지향 프로그래밍</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub9 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(9);"><input type="hidden" id="9" name="sub9" value="${abeek.sub9}">선형대수학</th>
			</c:if>
			<c:if test="${abeek.sub9 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(9);"><input type="hidden" id="9" name="sub9" value="${abeek.sub9}">선형대수학</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub10 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(10);"><input type="hidden" id="10" name="sub10" value="${abeek.sub10}">오토마타</th>
			</c:if>
			<c:if test="${abeek.sub10 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(10);"><input type="hidden" id="10" name="sub10" value="${abeek.sub10}">오토마타</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub11 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(11);"><input type="hidden" id="11" name="sub11" value="${abeek.sub11}">미래설계준비1</th>
			</c:if>
			<c:if test="${abeek.sub11 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(11);"><input type="hidden" id="11" name="sub11" value="${abeek.sub11}">미래설계준비1</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub12 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(12);"><input type="hidden" id="12" name="sub12" value="${abeek.sub12}">기초프로젝트</th>
			</c:if>
			<c:if test="${abeek.sub12 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(12);"><input type="hidden" id="12" name="sub12" value="${abeek.sub12}">기초프로젝트</th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub13 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(13);"><input type="hidden" id="13" name="sub13" value="${abeek.sub13}">컴퓨터구조</th>
			</c:if>
			<c:if test="${abeek.sub13 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(13);"><input type="hidden" id="13" name="sub13" value="${abeek.sub13}">컴퓨터구조</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub14 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(14);"><input type="hidden" id="14" name="sub14" value="${abeek.sub14}">프로그래밍언어론</th>
			</c:if>
			<c:if test="${abeek.sub14 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(14);"><input type="hidden" id="14" name="sub14" value="${abeek.sub14}">프로그래밍언어론</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub15 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(15);"><input type="hidden" id="15" name="sub15" value="${abeek.sub15}">알고리즘</th>
			</c:if>
			<c:if test="${abeek.sub15 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(15);"><input type="hidden" id="15" name="sub15" value="${abeek.sub15}">알고리즘</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub16 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(16);"><input type="hidden" id="16" name="sub16" value="${abeek.sub16}">시스템프로그래밍</th>
			</c:if>
			<c:if test="${abeek.sub16 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(16);"><input type="hidden" id="16" name="sub16" value="${abeek.sub16}">시스템프로그래밍</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub17 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(17);"><input type="hidden" id="17" name="sub17" value="${abeek.sub17}">인간컴퓨터상호작용 프로그래밍</th>
			</c:if>
			<c:if test="${abeek.sub17 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(17);"><input type="hidden" id="17" name="sub17" value="${abeek.sub17}">인간컴퓨터상호작용 프로그래밍</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub18 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(18);"><input type="hidden" id="18" name="sub18" value="${abeek.sub18}">미래설계준비2</th>
			</c:if>
			<c:if test="${abeek.sub18 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(18);"><input type="hidden" id="18" name="sub18" value="${abeek.sub18}">미래설계준비2</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub19 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(19);"><input type="hidden" id="19" name="sub19" value="${abeek.sub19}">개발프로젝트</th>
			</c:if>
			<c:if test="${abeek.sub19 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(19);"><input type="hidden" id="19" name="sub19" value="${abeek.sub19}">개발프로젝트</th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub20 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(20);"><input type="hidden" id="20" name="sub20" value="${abeek.sub20}">운영체제</th>
			</c:if>
			<c:if test="${abeek.sub20 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(20);"><input type="hidden" id="20" name="sub20" value="${abeek.sub20}">운영체제</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub21 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(21);"><input type="hidden" id="21" name="sub21" value="${abeek.sub21}">객체지향 설계</th>
			</c:if>
			<c:if test="${abeek.sub21 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(21);"><input type="hidden" id="21" name="sub21" value="${abeek.sub21}">객체지향 설계</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub22 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(22);"><input type="hidden" id="22" name="sub22" value="${abeek.sub22}">웹기반소프트웨어 개발</th>
			</c:if>
			<c:if test="${abeek.sub22 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(22);"><input type="hidden" id="22" name="sub22" value="${abeek.sub22}">웹기반소프트웨어 개발</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub23 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(23);"><input type="hidden" id="23" name="sub23" value="${abeek.sub23}">컴파일러</th>
			</c:if>
			<c:if test="${abeek.sub23 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(23);"><input type="hidden" id="23" name="sub23" value="${abeek.sub23}">컴파일러</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub24 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(24);"><input type="hidden" id="24" name="sub24" value="${abeek.sub24}">컴퓨터네트워크</th>
			</c:if>
			<c:if test="${abeek.sub24 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(24);"><input type="hidden" id="24" name="sub24" value="${abeek.sub24}">컴퓨터네트워크</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub25 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(25);"><input type="hidden" id="25" name="sub25" value="${abeek.sub25}">미래설계구현1</th>
			</c:if>
			<c:if test="${abeek.sub25 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(25);"><input type="hidden" id="25" name="sub25" value="${abeek.sub25}">미래설계구현1</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub26 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(26);"><input type="hidden" id="26" name="sub26" value="${abeek.sub26}">전문프로젝트 <span class="badge badge-danger">강추!</span></th>
			</c:if>
			<c:if test="${abeek.sub26 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(26);"><input type="hidden" id="26" name="sub26" value="${abeek.sub26}">전문프로젝트 <span class="badge badge-danger">강추!</span></th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub27 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(27);"><input type="hidden" id="27" name="sub27" value="${abeek.sub27}">소프트웨어공학</th>
			</c:if>
			<c:if test="${abeek.sub27 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(27);"><input type="hidden" id="27" name="sub27" value="${abeek.sub27}">소프트웨어공학</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub28 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(28);"><input type="hidden" id="28" name="sub28" value="${abeek.sub28}">산학프로젝트</th>
			</c:if>
			<c:if test="${abeek.sub28 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(28);"><input type="hidden" id="28" name="sub28" value="${abeek.sub28}">산학프로젝트</th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub29 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(29);"><input type="hidden" id="29" name="sub29" value="${abeek.sub29}">확률및 통계</th>
			</c:if>
			<c:if test="${abeek.sub29 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(29);"><input type="hidden" id="29" name="sub29" value="${abeek.sub29}">확률및 통계</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub30 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(30);"><input type="hidden" id="30" name="sub30" value="${abeek.sub30}">펌웨어프로그래밍</th>
			</c:if>
			<c:if test="${abeek.sub30 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(30);"><input type="hidden" id="30" name="sub30" value="${abeek.sub30}">펌웨어프로그래밍</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub31 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(31);"><input type="hidden" id="31" name="sub31" value="${abeek.sub31}">데이터통신</th>
			</c:if>
			<c:if test="${abeek.sub31 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(31);"><input type="hidden" id="31" name="sub31" value="${abeek.sub31}">데이터통신</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub32 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(32);"><input type="hidden" id="32" name="sub32" value="${abeek.sub32}">데이터베이스시스템</th>
			</c:if>
			<c:if test="${abeek.sub32 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(32);"><input type="hidden" id="32" name="sub32" value="${abeek.sub32}">데이터베이스시스템</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub33 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(33);"><input type="hidden" id="33" name="sub33" value="${abeek.sub33}">컴퓨터그래픽스</th>
			</c:if>
			<c:if test="${abeek.sub33 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(33);"><input type="hidden" id="33" name="sub33" value="${abeek.sub33}">컴퓨터그래픽스</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub34 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(34);"><input type="hidden" id="34" name="sub34" value="${abeek.sub34}">미래설계구현2</th>
			</c:if>
			<c:if test="${abeek.sub34 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(34);"><input type="hidden" id="34" name="sub34" value="${abeek.sub34}">미래설계구현2</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub35 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(35);"><input type="hidden" id="35" name="sub35" value="${abeek.sub35}">캡스톤디자인1</th>
			</c:if>
			<c:if test="${abeek.sub35 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(35);"><input type="hidden" id="35" name="sub35" value="${abeek.sub35}">캡스톤디자인1</th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub36 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(36);"><input type="hidden" id="36" name="sub36" value="${abeek.sub36}">임베디드시스템</th>
			</c:if>
			<c:if test="${abeek.sub36 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(36);"><input type="hidden" id="36" name="sub36" value="${abeek.sub36}">임베디드시스템</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub37 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(37);"><input type="hidden" id="37" name="sub37" value="${abeek.sub37}">영상처리</th>
			</c:if>
			<c:if test="${abeek.sub37 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(37);"><input type="hidden" id="37" name="sub37" value="${abeek.sub37}">영상처리</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub38 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(38);"><input type="hidden" id="38" name="sub38" value="${abeek.sub38}">인공지능</th>
			</c:if>
			<c:if test="${abeek.sub38 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(38);"><input type="hidden" id="38" name="sub38" value="${abeek.sub38}">인공지능</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub39 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(39);"><input type="hidden" id="39" name="sub39" value="${abeek.sub39}">산학초청세미나1</th>
			</c:if>
			<c:if test="${abeek.sub39 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(39);"><input type="hidden" id="39" name="sub39" value="${abeek.sub39}">산학초청세미나1</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub40 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(40);"><input type="hidden" id="40" name="sub40" value="${abeek.sub40}">컴퓨터교재연구 및 지도법</th>
			</c:if>
			<c:if test="${abeek.sub40 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(40);"><input type="hidden" id="40" name="sub40" value="${abeek.sub40}">컴퓨터교재연구 및 지도법</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub41 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(41);"><input type="hidden" id="41" name="sub41" value="${abeek.sub41}">데이터베이스설계</th>
			</c:if>
			<c:if test="${abeek.sub41 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(41);"><input type="hidden" id="41" name="sub41" value="${abeek.sub41}">데이터베이스설계</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <c:if test="${abeek.sub42 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(42);"><input type="hidden" id="42" name="sub42" value="${abeek.sub42}">캡스톤디자인2</th>
			</c:if>
			<c:if test="${abeek.sub42 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(42);"><input type="hidden" id="42" name="sub42" value="${abeek.sub42}">캡스톤디자인2</th>
			</c:if>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub43 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(43);"><input type="hidden" id="43" name="sub43" value="${abeek.sub43}">그래프이론</th>
			</c:if>
			<c:if test="${abeek.sub43 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(43);"><input type="hidden" id="43" name="sub43" value="${abeek.sub43}">그래프이론</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub44 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(44);"><input type="hidden" id="44" name="sub44" value="${abeek.sub44}">정보보호</th>
			</c:if>
			<c:if test="${abeek.sub44 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(44);"><input type="hidden" id="44" name="sub44" value="${abeek.sub44}">정보보호</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub45 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(45);"><input type="hidden" id="45" name="sub45" value="${abeek.sub45}">정보검색</th>
			</c:if>
			<c:if test="${abeek.sub45 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(45);"><input type="hidden" id="45" name="sub45" value="${abeek.sub45}">정보검색</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub46 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(46);"><input type="hidden" id="46" name="sub46" value="${abeek.sub46}">산학초청세미나2</th>
			</c:if>
			<c:if test="${abeek.sub46 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(46);"><input type="hidden" id="46" name="sub46" value="${abeek.sub46}">산학초청세미나2</th>
			</c:if>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub47 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(47);"><input type="hidden" id="47" name="sub47" value="${abeek.sub47}">컴퓨터논리 및 논술</th>
			</c:if>
			<c:if test="${abeek.sub47 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(47);"><input type="hidden" id="47" name="sub47" value="${abeek.sub47}">컴퓨터논리 및 논술</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub48 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(48);"><input type="hidden" id="48" name="sub48" value="${abeek.sub48}">컴퓨터교육론</th>
			</c:if>
			<c:if test="${abeek.sub48 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(48);"><input type="hidden" id="48" name="sub48" value="${abeek.sub48}">컴퓨터교육론</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub49 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(49);"><input type="hidden" id="49" name="sub49" value="${abeek.sub49}">빅데이터처리</th>
			</c:if>
			<c:if test="${abeek.sub49 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(49);"><input type="hidden" id="49" name="sub49" value="${abeek.sub49}">빅데이터처리</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub50 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(50);"><input type="hidden" id="50" name="sub50" value="${abeek.sub50}">실험실 프로젝트</th>
			</c:if>
			<c:if test="${abeek.sub50 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(50);"><input type="hidden" id="50" name="sub50" value="${abeek.sub50}">실험실 프로젝트</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <c:if test="${abeek.sub51 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(51);"><input type="hidden" id="51" name="sub51" value="${abeek.sub51}">정보콘텐츠 SW 프로젝트</th>
			</c:if>
			<c:if test="${abeek.sub51 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(51);"><input type="hidden" id="51" name="sub51" value="${abeek.sub51}">정보콘텐츠 SW 프로젝트</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th colspan="5" style="text-align:center"><hr></th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub52 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(52);"><input type="hidden" id="52" name="sub52" value="${abeek.sub52}">Action English</th>
			</c:if>
			<c:if test="${abeek.sub52 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(52);"><input type="hidden" id="52" name="sub52" value="${abeek.sub52}">Action English</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub53 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(53);"><input type="hidden" id="53" name="sub53" value="${abeek.sub53}">발표와 토론의 실제</th>
			</c:if>
			<c:if test="${abeek.sub53 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(53);"><input type="hidden" id="53" name="sub53" value="${abeek.sub53}">발표와 토론의 실제</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub54 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(54);"><input type="hidden" id="54" name="sub54" value="${abeek.sub54}">수학1</th>
			</c:if>
			<c:if test="${abeek.sub54 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(54);"><input type="hidden" id="54" name="sub54" value="${abeek.sub54}">수학1</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub55 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(55);"><input type="hidden" id="55" name="sub55" value="${abeek.sub55}">수학2</th>
			</c:if>
			<c:if test="${abeek.sub55 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(55);"><input type="hidden" id="55" name="sub55" value="${abeek.sub55}">수학2</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub56 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(56);"><input type="hidden" id="56" name="sub56" value="${abeek.sub56}">기초컴퓨터프로그래밍</th>
			</c:if>
			<c:if test="${abeek.sub56 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(56);"><input type="hidden" id="56" name="sub56" value="${abeek.sub56}">기초컴퓨터프로그래밍</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub57 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(57);"><input type="hidden" id="57" name="sub57" value="${abeek.sub57}">응용컴퓨터프로그래밍</th>
			</c:if>
			<c:if test="${abeek.sub57 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(57);"><input type="hidden" id="57" name="sub57" value="${abeek.sub57}">응용컴퓨터프로그래밍</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub58 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(58);"><input type="hidden" id="58" name="sub58" value="${abeek.sub58}">기초통계학및실습</th>
			</c:if>
			<c:if test="${abeek.sub58 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(58);"><input type="hidden" id="58" name="sub58" value="${abeek.sub58}">기초통계학및실습</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub59 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(59);"><input type="hidden" id="59" name="sub59" value="${abeek.sub59}">맛보기물리학및실험</th>
			</c:if>
			<c:if test="${abeek.sub59 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(59);"><input type="hidden" id="59" name="sub59" value="${abeek.sub59}">맛보기물리학및실험</th>
			</c:if>
            <th class="credit"    style="text-align:center">4</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub60 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(60);"><input type="hidden" id="60" name="sub60" value="${abeek.sub60}">영어읽기와 토론</th>
			</c:if>
			<c:if test="${abeek.sub60 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(60);"><input type="hidden" id="60" name="sub60" value="${abeek.sub60}">영어읽기와 토론</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub61 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(61);"><input type="hidden" id="61" name="sub61" value="${abeek.sub61}">공업경영과 경제</th>
			</c:if>
			<c:if test="${abeek.sub61 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(61);"><input type="hidden" id="61" name="sub61" value="${abeek.sub61}">공업경영과 경제</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub62 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(62);"><input type="hidden" id="62" name="sub62" value="${abeek.sub62}">공학윤리와 역사</th>
			</c:if>
			<c:if test="${abeek.sub62 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(62);"><input type="hidden" id="62" name="sub62" value="${abeek.sub62}">공학윤리와 역사</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub63 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(63);"><input type="hidden" id="63" name="sub63" value="${abeek.sub63}">언어로의 초대</th>
			</c:if>
			<c:if test="${abeek.sub63 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(63);"><input type="hidden" id="63" name="sub63" value="${abeek.sub63}">언어로의 초대</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub64 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(64);"><input type="hidden" id="64" name="sub64" value="${abeek.sub64}">동양문학사</th>
			</c:if>
			<c:if test="${abeek.sub64 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(64);"><input type="hidden" id="64" name="sub64" value="${abeek.sub64}">동양문학사</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <c:if test="${abeek.sub65 eq '0'}">
            	<th class="subject" style="text-align:center; background-Color:none; color:black;" onclick="select_subject(65);"><input type="hidden" id="65" name="sub65" value="${abeek.sub65}">지역사회문화 영역에서 택1</th>
			</c:if>
			<c:if test="${abeek.sub65 eq '1'}">
            	<th class="subject" style="text-align:center; background-Color:#9fdf9f; color:white;" onclick="select_subject(65);"><input type="hidden" id="65" name="sub65" value="${abeek.sub65}">지역사회문화 영역에서 택1</th>
			</c:if>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
      </table>
   </div>
   
      <div class="container-fluid" style="background-color: #f2f2f2;position: fixed; bottom: 0px; z-index:10;">
            <div class="progress" style="margin: 30px;">
                  <div id="t2" class="progress-bar bg-success progress-bar-striped progress-bar-animated" style="width: 0%"></div>
              </div>
              <table class="table table-bordered table-hover">
            <tr>
               <th class="align-middle" style="background-color: #932c47; color: white;text-align:center; width: 18%">졸업 학점</th>
               <th class="align-middle" style="background-color: white;text-align:center; width: 9%">150</th>
               <th class="align-middle" style="background-color: #932c47; color: white;text-align:center; width: 18%">이수 학점</th>
               <th class="align-middle" style="background-color: white;text-align:center; width: 9%" id="AA">0</th>
               <th class="align-middle" style="background-color: #932c47; color: white;text-align:center; width: 18%">잔여 학점</th>
               <th class="align-middle" style="background-color: white; text-align:center; width: 9%" id="BB">150</th>
               <th style="text-align:center; width: 19%">
                  <div class="btn-group">
                     <button type="submit" class="btn btn-success btn-lg" onclick="print1();">저장하기</button>
                     <button type="button" class="btn btn-outline-success btn-lg" onclick="act1();">다시하기</button>
                  </div>
               </th>
            </tr>
         </table>
           </div>
           <div style="height: 150px;"></div>
           </c:forEach>
   </form>
            <script>
            var temp1 = document.getElementsByClassName("subject");
            var temp2 = new Array();
            var temp3 = document.getElementsByClassName("credit");
            var temp4 = new Array();
            var id1 = document.getElementById("AA");
            var id2 = document.getElementById("BB");
            var sum1 = 0;
            var sum2 = 150;
            var bar = document.getElementById("t2");
            
            for(var i = 0 ; i< 66 ;i++){
    			var temp = document.getElementById(+i).value;
    			if(temp == 1){
    				sum1 = sum1+score[i];
    				}
    		}
            sum2= sum2-sum1;
            bar.style.width = (sum1/150) * 100 +"%";
            id1.innerHTML = sum1;
            id2.innerHTML = sum2;
            if(sum2 < 0) sum2 = 0;
            
            for(var i=0;i<temp1.length;i++){
               temp2[i] = temp1[i].innerHTML;
            }
            for(var i=0;i<temp3.length;i++){
               temp4[i] = parseInt(temp3[i].innerHTML, 10);
            }
            
            function select_subject(num) {
               
               var _id = document.getElementById(num);
               
               if(_id.value == 0){
                  _id.value = 1;
                  temp1[num].style.backgroundColor = "#9fdf9f";
                  temp1[num].style.color = "white";
                  
                  sum1 += temp4[num];
                  sum2 -= temp4[num];
                  
                  bar.style.width = (sum1/150) * 100 +"%";
               }
               else if(_id.value == 1){
                  _id.value = 0;
                  temp1[num].style.background = "none";
                  temp1[num].style.color = "black";
                  
                  sum1 -= temp4[num];
                  sum2 += temp4[num];
                  
                  bar.style.width = (sum1/150) * 100 +"%";
               }
               id1.innerHTML = sum1;
               id2.innerHTML = sum2;
               if(sum2 < 0) sum2 = 0;
            }
            function sumation(){
            	for(var i = 0 ; i< 66 ;i++){
            			var temp = document.getElementById(+i).value;
            			if(temp == 1){
            				sum1 = sum1+score[i];
            				}
            		}
            	alert(sum1);
            }
            function print1() {
               alert("이수학점 : "+ sum1 + '\n' +"남은학점 : " + sum2);
               $('html, body').stop().animate( { scrollTop : '1100' } );
            }
            function act1() {
               window.location.reload();
            }
         </script>
     </div>

    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="jquery/jquery.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>

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
	<section id="footer" style="margin-bottom: 195.200; z-index:-10;">
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
</body>
</html>