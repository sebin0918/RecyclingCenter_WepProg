<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<script type="text/javascript" src="js/jquery-1.11.1.min.js" ></script>
<script type="text/javascript" src="js/bx_slider.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<title>뷰Recycle</title>
</head>
<body> 
	<!-- 여기부터 복붙하기 -->
	<%	
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	
	
	<!--Start header-->
      <div id="header">
          <div class="head_wid clfix">
                <h1 class="logo">
                    <a href="main1.jsp">
                      <img src="image/common/bu.logo.png" alt=""/>	<!--(로고랑) 사이트이름 -->>			
                    </a>			
                </h1>
                <a class="mor_open" href="#n"><img src="image/common/all_menu.png" alt="" /></a>
                <div class="menu_area clfix">
                  <div class="mo_logo">
                      <a href="main1.jsp">
                          <img src="image/common/bu.logo.png" alt="" />					
                      </a>				
                  </div>
                  <ul class="menu clfix">
                      <li>
                        <a href="business.jsp"><span>환경보호기업</span></a>
                      </li>
                      <li>
                        <a href="map.jsp"><span>주변재활용센터</span></a>
                      </li>  
                       
                      <li>
                        <a href="bbs.jsp"><span>환경보호커뮤니티</span></a>
                      </li>  
                      </li>  
                      
                  </ul>
                  <div class="pcbg"></div>
                  <a class="mor_out" href="#n"><img src="image/common/pout.png" alt="" /></a>			
              </div>
              <%
				if(userID == null){
			  %>
              <ul class="top_btns">
                  <li><a href="login.jsp">로그인</a></li>
                  <li><a href="join.jsp">회원가입</a></li>
              </ul>
              
              <%
				}
				else
				{
				
			  %>
              
              <ul class="top_btns">
                  <li><a href="logoutAction.jsp">로그아웃</a></li>
                  
              </ul>
              
              <%
			}
			%>
              
          </div>
          <div class="menu_bg"></div>
      </div>

     <!--로그인/회원가입-->
      <ul class="top_btnsm">
              <li><a href="?module=Default&amp;action=Login">로그인</a></li>
          <li><a href="join.html">회원가입</a></li>
          </ul>

      <!--End header  여기까지 복붙!-->
       <h3 class="sub_title"><span>회원가입</span></h3>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbtron" style="padding-top:20px;">
				<form method="post" action="joinAction.jsp">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align:center">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="male" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="female" checked>여자
							</label>
						</div>
						
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
					</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	</script>
	<script src="js/bootstrap.js"></script>
</body>
</html>