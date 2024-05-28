<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<script type="text/javascript" src="js/jquery-1.11.1.min.js" ></script>
<script type="text/javascript" src="js/bx_slider.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<title>뷰Recycle</title>
<style type="text/css">
	a, a:hover{
	color : #000000;
	text-decoration: none;
	}
</style>
</head>
<body> 
	<%	
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
                        <a href="bbs.jsp"><span>환경보호 커뮤니티</span></a>
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
	<div>
   <h3 class="sub_title"><span>환경보호커뮤니티</span></h3>
   </div>
	
	
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align:enter; border : 1px solid #dddddd;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">번호</th>
						<th style="background-color: #eeeeee; text-align:center;">제목</th>
						<th style="background-color: #eeeeee; text-align:center;">작성자</th>
						<th style="background-color: #eeeeee; text-align:center;">작성일</th> 
					</tr>
				</thead>
				<tbody>
				<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);

					for(int  i = 0; i < list.size(); i++)
					{
				%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></a></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + " 시 " + list.get(i).getBbsDate().substring(14, 16) +" 분" %></td>
					</tr>
				<%
					}
				%>
				</tbody>
			</table>
			<%
				if (pageNumber != 1){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>" class="btn btn-success btn-arrow-left">이전</a>
			<%
				} if(bbsDAO.nextPage(pageNumber + 1)){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">다음</a>
			<% 
				}
			%>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	 
	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	</script>
	<script src="js/bootstrap.js"></script>
</body>
</html>