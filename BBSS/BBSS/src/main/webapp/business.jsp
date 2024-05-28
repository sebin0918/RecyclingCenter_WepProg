<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<meta name="description" content="">
<meta name="generator" content="Hugo 0.104.2">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">

<link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/album/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<script type="text/javascript" src="js/jquery-1.11.1.min.js" ></script>
<script type="text/javascript" src="js/bx_slider.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<title>뷰Recycle</title>
<!-- 
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
              #my {
          float:right;
          right: 10px;
        }
    </style>
-->
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
          <div>
   <h3 class="sub_title"><span>환경보호 기업 소개</span></h3>
   </div>
      
      <main>
  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <p class="img"><img src="image/introduce/dongu1.png" width = 100% width= "200" height="220" alt="donggubat" /></p>           
             <div class="card-body">          
              <p class="card-text">세안·설거지 비누 등 생필품 친환경 브랜드 <br />'동구밭'을 소개합니다.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" onclick="location.href='https://www.donggubat.co.kr' "class="btn btn-sm btn-outline-secondary">페이지 바로가기</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm">
            <p class="img"><img src="image/introduce/paperpop1.png" width = 100% width= "200" height="220"  alt="paperpop" /></p>           
            <div class="card-body">
              <p class="card-text">종이로 만든가구<br />'페이퍼팝'을 소개합니다.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" onclick="location.href='https://www.paperpop.co.kr' "class="btn btn-sm btn-outline-secondary">페이지 바로가기</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <p class="img"><img src="image/introduce/morethan.png" width = 100% width= "200" height="220"  alt="morethan" / ></p>
            <div class="card-body">
              <p class="card-text">폐자동차 시트 가죽과 에어백으로 패션용품을 만드는 <br />'모어댄'을 소개합니다.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <button type="button" onclick="location.href='http://wemorethan.com' "class="btn btn-sm btn-outline-secondary">페이지 바로가기</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <p class="img"><img src="image/introduce/rehavest1.png" width = 100% width= "200" height="220"  alt="rehavest"/></p>           
            <div class="card-body">
              <p class="card-text">전 세계 푸드업사이클 협회 아시아 최초 회원기업 <br />'리하베스트'를 소개합니다.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <button type="button" onclick="location.href='http://www.reharvestshop.com' "class="btn btn-sm btn-outline-secondary">페이지 바로가기</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <p class="img"><img src="image/introduce/siita.png" width = 100% width= "200" height="220" alt="siita"  /></p>           
            <div class="card-body">
              <p class="card-text">제로 웨이스트에 힘쓰는 뷰티 브랜드 <br />'시타'를 소개합니다.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <button type="button" onclick="location.href='http://www.siita.co.kr/' "class="btn btn-sm btn-outline-secondary">페이지 바로가기</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <p class="img"><img src="image/introduce/sambe1.png" width = 100% width= "200" height="220" alt="sambe"  /></p>           
            <div class="card-body">
              <p class="card-text">자연으로 돌아가는 삼베 제품을 만드는 브랜드 <br />'예고은삼베'를 소개합니다.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <button type="button" onclick="location.href='http://sambe.co.kr' "class="btn btn-sm btn-outline-secondary">페이지 바로가기</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
</main>
      
 <!--하단-->
      <div id="footer">
          <div class="foot_wid">
              <div class="foot_top">
                  <ul style="margin-bottom: 15px;">
                      <li><a href="http://pf.kakao.com/_xmgQSb" target="_blank"><img src="image/common/icon_kakaoch.png" width="35px"></a></li>
                      <li><a href="https://www.instagram.com/eaa_ecolink" target="_blank"><img src="image/common/icon_instargram.png" width="35px"></a></li>
                      <li><a href="https://www.youtube.com/channel/UCK6VzPa_bs3ljLnovrfD6Bg" target="_blank"><img src="image/common/icon_youtube.png" width="35px"></a></li>					
                  </ul>				
                  <ul>
                      <li><a href="?module=Html&amp;action=SiteComp&amp;sSubNo=18">개인정보처리방침</a></li>
                      <li><a href="?module=Html&amp;action=SiteComp&amp;sSubNo=19">이메일무단수집거부</a></li>
                      <li><a href="?module=Html&amp;action=SiteComp&amp;sSubNo=20">사이트맵</a></li>
                      <li><a href="?module=Inquiry&amp;action=SiteInquiry&amp;sMode=INSERT_FORM&amp;iInquiryNo=3">문의하기</a></li> <!--20220525-->
                  </ul>
            
              </div>
              <div class="foot-bot">
                  <p><img src="image/common/bu.logo.png" alt=""/><br>
                  <!--span>[삽입]</span> <span>[추가]</span> <span>[예정]</span></p-->
                  <p><span>(31065) 충청남도 천안시 동남구 백석대학로 1, 백석대학교</span> <span>TEL 041-550-9114</span>
                    <p><span>https://www.bu.ac.kr/sites/web/intro/intro.html</span> 
                  <p>© Baekseok University. All rights reserved.<br><br> 
                      <!--<a href="https://sectigo.com/trust-seal" style="font-family: arial; font-size: 10px; color: #212121; text-decoration: none;"><img src="/img/common/sectigo.jpg" srcset="https://sectigo.com/images/seals/sectigo_trust_seal_sm.png, https://sectigo.com/images/seals/sectigo_trust_seal_sm_2x.png 2x" width="82" height="32" alt="Protected by Sectigo SSL" border="0" /></a><div style="font-family: arial;font-weight:bold;font-size:15px;color:#86BEE0;"><a href="https://sectigo.com" style="color:#86BEE0; text-decoration: none;"></a></div>-->
                      <img src="/img/common/sectigo.jpg" srcset="https://sectigo.com/images/seals/sectigo_trust_seal_sm.png, https://sectigo.com/images/seals/sectigo_trust_seal_sm_2x.png 2x" width="82" height="32" alt="Protected by Sectigo SSL" border="0" />
                  </p>
              </div>    
          </div>
      </div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>  
 
      
</body>
</html>