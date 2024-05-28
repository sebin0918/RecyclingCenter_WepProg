<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<script type="text/javascript" src="js/jquery-1.11.1.min.js" ></script>
<script type="text/javascript" src="js/bx_slider.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/lib.validate_new.js"></script>
<title>뷰Recycle</title>
</head>
<body>
<div id="wrap">
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
                        <a href="bbs.jsp"><span>커뮤니티</span></a>
                      </li>  
                      <li><a href="env_community.jsp"><span>환경보호커뮤니티</span></a>
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
	<ul class="top_btnsm">
		<li><a href="?module=Default&amp;action=Login">로그인</a></li>
		<li><a href="?module=Member&amp;action=SiteMember&amp;sMode=INSERT3_FORM&amp;iMembClass=1">회원가입</a></li>
	</ul>
	<!--End header-->
	
	
	<!--Start contents-->
	<div id="all_contents">
		<!--Start 서브메뉴-->
		<div class="sub_bar" style="margin-top: 100px;">
			<div class="sub_bar_wid">
				<ul class="snavi_all clfix">
					<li>
						<a href="index.php">
							<img src="image/sub/shome.png" alt="">						
                        </a>					
                    </li>
			            <li>
						<a href="#n">환경보호커뮤니티</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 서브메뉴-->

		<div id="sub_contents">
			<h3 class="sub_title"><span>환경보호커뮤니티</span></h3>
		  
			<script language="JavaScript">
            /*<![CDATA[*/
            function autotab(thisval,fname, flen){

                var fieldname = eval("document.fs." + fname);

                if(thisval != 9 && thisval != 16){
                    if(fieldname.value.length + 1 <= flen){
                        fieldname.focus();
                    }else{

                        for(x=0; x<document.fs.elements.length; x++){
                            if(fieldname.name == document.fs.elements[x].name){
                                var nextfield = x + 1;
                            }
                        }
                        document.fs.elements[nextfield].focus();
                    }
                }
            }
            function changeinput(obj) {
                document.fs.brd_eml2.value = obj;
            }
 /*]]>*/
</script>
	
	<form>
<input type="hidden" name="module" value="Board">
<input type="hidden" name="action" value="SiteBoard">
<input type="hidden" name="sMode" value="SELECT_FORM">
<input type="hidden" name="iBrdNo" value="2">
	<div class="botcik_box clfix">
		<div class="sel_box">
			<select title="제목선택" name="sSearchField">
				<option value="all" selected="">전체</option>
				<option value="brd_title">제목</option>
				<option value="brd_contents">내용</option>
			</select>
		</div>
		<div class="inp_box">
			<input type="text" title="검색내용 입력" name="sSearchValue">
			<a href="#n"><input type="image" src="image/sub/gs.png" alt=""></a>
		</div>
	</div>
</form>
<div class="etc_tab_bg">
    <table class="etc_tab">
        <caption>회사소식</caption>
        <colgroup>
            <col style="width:8%">
            <col style="width:auto">
            <col style="width:12%">
            <col style="width:8%">
        </colgroup>
        
        <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">제목</th>
                <th scope="col">등록일</th>
                <th scope="col">조회</th>
            </tr>
        </thead>
        <tbody>

            <tr>
                <td class="mor_none">
                                                                    <strong>[공지]</strong>
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1017&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [모집] 제목 구성
                    </a>
                </td>
                <td class="btr">날짜 작성</td>
                <td class="mor_none">조회수 표시</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    <strong>[공지]</strong>
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1016&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [모집] 제공 구성
                    </a>
                </td>
                <td class="btr">날짜 작성</td>
                <td class="mor_none">조회수 표시</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    <strong>[공지]</strong>
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1015&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [모집] 제목 구성
                    </a>
                </td>
                <td class="btr">날짜</td>
                <td class="mor_none">조회수</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    766
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1018&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [방송안내]]B tv abc뉴스 "무네미골 제척 쉽지 않아"...주민들, 과천시 결단 촉구
                    </a>
                </td>
                <td class="btr">2022.10.26</td>
                <td class="mor_none">238</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    765
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1014&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [안내] 2022년 KOICA-NGO봉사단 파견 NGO 모집 안내
                    </a>
                </td>
                <td class="btr">2022.09.01</td>
                <td class="mor_none">774</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    764
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1013&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [안내] 하반기 본부, 지회 공익단체 추천신청 안내
                    </a>
                </td>
                <td class="btr">2022.08.04</td>
                <td class="mor_none">1650</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    763
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1012&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [안내] 제9회 Fun 사이언스 포럼 개최 안내
                    </a>
                </td>
                <td class="btr">2022.08.03</td>
                <td class="mor_none">859</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    762
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1011&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [알림] 제21회 국제 지구사랑 작품공모전 상장 발송 안내
                    </a>
                </td>
                <td class="btr">2022.07.07</td>
                <td class="mor_none">1920</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    761
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1010&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [안내]환경부와 함께하는 2022년 &lt;대기를 살리는 청년들&gt; 대상자 및 진행 안내
                    </a>
                </td>
                <td class="btr">2022.07.06</td>
                <td class="mor_none">2788</td>
            </tr>

            <tr>
                <td class="mor_none">
                                                                    760
                                                            </td>
                <td class="list lf_txt">
                    <a href="?module=Board&amp;action=SiteBoard&amp;sMode=VIEW_FORM&amp;iBrdNo=2&amp;iBrdContNo=1009&amp;sBrdContRe=0&amp;sSearchField=&amp;sSearchValue=&amp;CurrentPage=1">
                        [방송안내]B tv abc뉴스 과천 무네미골 주민, 엉터리 조사 LH 규탄
                    </a>
                </td>
                <td class="btr">2022.06.29</td>
                <td class="mor_none">956</td>
            </tr>
        </tbody>
    </table>
</div>
			
		
		</div>
	</div>
	<!--End contents-->

	<!--Start footer-->
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
                    <li><a href="?module=Inquiry&amp;action=SiteInquiry&amp;sMode=INSERT_FORM&amp;iInquiryNo=3">문의하기</a></li><!--20220525-->
                </ul>
                
            <!--하단 바-->
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
    <!--End footer-->
</div>

                                                                    
                                                                    
</body>
</html>