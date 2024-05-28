<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
                                                                 
  <!DOCTYPE html>
  <html lang="ko">
  <head>
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
      <title> 뷰Recycle </title> 
      <link rel="stylesheet" type="text/css" href="css/common.css">
      <link rel="stylesheet" type="text/css" href="css/main.css">
      <link rel="stylesheet" type="text/css" href="css/sub.css">
      <script type="text/javascript" src="js/jquery-1.11.1.min.js" ></script>
      <script type="text/javascript" src="js/bx_slider.js"></script>
      <script type="text/javascript" src="js/js.js"></script>
      
      
      </script>      
  </head>

  <!--팝업창 띄울 때 body onLoad 주석 해제-->
  <!--body onLoad="OpenWindow()">
    window.onload = function (){
    window.open("join.html", "popupNo1", "width = 300, height = 360"); }
    -->
    
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
      <!--Start contents-->
      <div id="all_contents">
          <div class="mv_box" style="position: absolute; z-index: 1;">
              <div class="mv_area" style="padding-top: 380px; vertical-align: top;">
                  <div>
                      <dl>
                          <dt class="anim display-opacity2 time1" style="color: white;">환경 보호 페이지에서는</dt>           
                          <dd class="anim display-opacity2 time2" style="color: white;">환경을 지킬 수 있도록 모든 사람들의 노력이 필요합니다.</dd>             
                      </dl>
                      <a class="anim display-opacity2 time3" href="#n">환경 지키러 가기</a>
                  </div>
              </div>
          </div>
  <style>
      .manv > li.bg1{background: url(upload_dir/inquiry/5398041276271ff7354419.jpg) no-repeat center center; }
      @media screen and (max-width:1024px){
          .manv > li.bg1{background: url(upload_dir/inquiry/2707393146271ff7354508.jpg) no-repeat center center; }
      }
  </style>
      
          <div id="" class="mainv" style="position: relative; z-index: -1;">
                <ul class="clfix manv">
                    <li class="bg1"><a href="https://ecolink.or.kr/index.php?module=Board&action=SiteBoard&sMode=SELECT_FORM&iBrdNo=1"  ></a></li>
                </ul>
          </div>

  <!--두번째 영역-->
          <div class="mic_area">
              <div class="mic_wid">
                  <ul class="mic_line clfix">
                      <li>
                          <a href="?module=Html&amp;action=SiteComp&amp;sSubNo=1">
                              <p class="tit">활동분야</p>
                              <p class="img"><img src="image/common/mic1.png" alt="" /></p>
                              <p class="txt">물·대기·생태계 등 다양한 분야에서 <br />환경 보호를 위한 활동을 진행합니다.</p>
                          </a>					</li>
                      <li>
                          <a href="?module=Board&amp;action=SiteBoard&amp;sMode=SELECT_FORM&amp;iBrdNo=6">
                              <p class="tit">주변재활용센터</p>
                              <p class="img"><img src="image/common/mic2.png" alt="" /></p>
                              <p class="txt">주변에 있는 재활용센터를 <br />알려드립니다.</p>
                          </a>					</li>
                      <li>
                          <a href="?module=Html&amp;action=SiteComp&amp;sSubNo=21">
                              <p class="tit">게시판</p>
                              <p class="img"><img src="image/common/mic3.png" alt="" /></p>
                              <p class="txt">게시물을 작성하고 <br />다 같이 참여하세요. </p>
                          </a>					</li>
                      <li>
                          <a href="?module=Html&amp;action=SiteComp&amp;sSubNo=10">
                              <p class="tit">업사이클몰</p>    
                              <p class="img"><img src="image/common/mic4.png" alt="" /></p>
                              <p class="txt">물건들을 <br />사고 팔고하세요.</p>
                          </a>					</li>
                  </ul>
              </div>
          </div>
  
          <div class="mcont_wid">
              <div class="nw_mvsl">
                  <ul class="mvsl_sld">
                            <li>
                          <a href="https://ecowater.or.kr" target="_blank">
                          <img src="upload_dir/inquiry/103317819361c2aa16a56b0.png" alt="" class="pc" />
                          <img src="upload_dir/inquiry/135605613461c2aa16a5782.png" alt="" class="mob" />						</a>
                      </li>
                            <li>
                          <a href="https://ecolink.kr" target="_blank">
                          <img src="upload_dir/inquiry/208311437462bd2cd1c3fef.png" alt="" class="pc" />
                          <img src="upload_dir/inquiry/63131727562bd2cd1c412c.png" alt="" class="mob" />						</a>
                      </li>
                            <li>
                          <a href="https://ecolink.or.kr/_alien_species/" target="_blank">
                          <img src="upload_dir/inquiry/156518087461c2aac48a0de.png" alt="" class="pc" />
                          <img src="upload_dir/inquiry/37548696961c2aac48a1d1.png" alt="" class="mob" />						</a>
                            </li>
                     </ul>
              </div>
          </div>

  <!--갈아엎거나 수정파트-->
          <div class="mgr_bg">
              <div class="mgr_wid clfix">
                  <!--div class="mc_img anim display-opacity2 time1"><img src="image/main/mc1.png" width="80%"></div-->
                  <div class="mc_text">
                      <div>
                          <dl class="anim display-opacity2 time2">
                              <dt>작은 실천들이 함께 모여 <span>우리의 환경을 보호합시다.</span></dt>
                              <dd>깨끗한 환경, 깨끗한 생활</dd>
                              <dd>인간을 위한 최대의 가치창조! <br />바로 환경보전입니다.</dd>
                          </dl>
                      </div>
                  </div>
              </div>
          </div>
          
          <!--수정 또는 엎기-->
          <div class="mic_area1">
              <div class="mic_wid">
                  <ul class="mic_line1 clfix">
                      <li>
                          <a href="https://happylog.naver.com/hlog/leekr021/home" target="_blank">
                              <p class="tit">분리수거</p>
                              <p class="img"><img src="image/main/main_gibu_bn01.png" alt="" /></p>
                              <p class="txt">쓰레기를 함부로 버리지 말고 <br />분리수거를 통해 환경을 아껴주세요!</p>
                          </a>					
                      </li>
                      <li>
                          <a href="https://together.kakao.com/fundraisings/98635" target="_blank">
                              <p class="tit">일회용품 줄이기</p>
                              <p class="img"><img src="image/main/main_gibu_bn02.png" alt="" /></p>
                              <p class="txt">일회용품을 사용을 자제하고<br />재활용 용품으로 사용해주세요!</p>
                          </a>					
                      </li>
    
                      <li>
                          <p class="tit1"><a href="https://www.emc-env.com/index.do="_blank">환경시설관리주식회사</a></p>
                          <p class="img1"><a href="https://www.emc-env.com/index.do" target="_blank"><img src="image/main/main_gibu_bn03_1.png"></a></p>
                          <p class="txt">탄소 발자국 줄이기 캠페인에<br />글로벌 환경전문 기업 emc가 앞장섭니다.</p>
                          <!--p class="img1"><a href="/fredit/fredit_act.html" target="_blank"><img src="image/main/main_gibu_bn03_2.png"></a></p-->
                      </li>						
                      
                      <li>
                          <a href="https://cherry.charity/public/campaign/cmpgnDtlPage/1769" target="_blank">   
                             
                              <p class="tit">세계환경의 날</p>
                              <!--p class="img"><img src="image/main/main_gibu_bn04.png" alt="" /></p-->
                              <p class="txt">1972년 6월 스웨덴 스톡홀름에서 열린 '유엔인간환경회의'에서<br/> 국제사회가 지구환경보전을 위해 공동노력을 다짐하며 제정한 날로, 매년 6월 5일이다.</p>
                          </a>					
                      </li>						
                  </ul>
              </div>
          </div>	
          
          <!--공지사항 영역-->
          <div class="mgal_bg">
              <div class="mcont_wid">
                  <div class="mgal_box clfix">
                      <div class="mgal_title">
                          <p class="tit"><span> 공지사항</span></p>
                          <p class="txt">환경보호페이지에서<br />소식을 알려드립니다.</p>
                      </div>
                      <div class="mgal_line">
                          <ul class="clfix">
                                                      <li>
                                  <a href="https://www.cheonan.go.kr/cop/bbs/BBSMSTR_000000000472/selectBoardArticle.do?nttId=B00000177299nj5pH2hj8uk6&kind=&mno=sitemap_12&pageIndex=1&searchCnd=0&searchWrd=%EC%9D%BC%ED%9A%8C%EC%9A%A9%ED%92%88">
                                      <dl>
                                          <dt>[공지] 환경을 위해서 일회용품을 줄여주세요.</dt>
                                          <dd>일회용품 대신 재활용품으로 사용해주세요.</dd>
                                      </dl>
                                  </a>							</li>
                                                      <li>
                                  <a href="http://www.me.go.kr/webdata/education/class21/8-03.html">
                                      <dl>
                                          <dt>[공지] "분리수거 하는 요령"</dt>
                                          <dd>분리수거 하는 법을 모르겠다면 확인해보세요.</dd>
                                      </dl>
                                  </a>							</li>
                                                      <li>
                                  <a href="https://www.me.go.kr/home/web/board/read.do?menuId=10525&boardId=1545630&boardMasterId=1">                                    
                                      <dl>
                                          <dt>[계획] 환경에 대한 앞으로의 미래</dt>
                                          <p class="txt">&nbsp;2023년도 환경부 예산안…안전·환경서비스·미래 중심 투자</p>
                                      </dl>
                                  </a>							</li>
                                                  </ul>
                      </div>
                      <a href="?module=Board&amp;action=SiteBoard&amp;sMode=SELECT_FORM&amp;iBrdNo=1" class="more"><img src="image/main/more1.png" alt="" /></a>				</div>
              </div>
          </div>

            <!--공지&언론보도(팝업창으로 띄워보기)-->
          <div class="mcont_wid">
              <div class="mgs_box clfix">
                  <div class="mgs_line clfix">
                      <div class="mgs_title">
                          <dl>
                              <dt>언론보도</dt>
                              <!--dd>환경보호페이지에서<br /> 소식을 알려드립니다. </dd-->
                          </dl>
                      </div>
                      <div class="mgs_nys">
                          <ul>
                                                      <li>
                                  <p class="day">2022.10.19</p>
                                  <p class="list"><a href="https://www.onews.tv/news/articleView.html?idxno=144208">[열린뉴스통신] 코웨이, 강원도 홍천군에 '코웨이 청정숲' 조성 "환경 경영 실천"</a></p>
                                  <p class="txt">&nbsp;
                              </li>
                                                      <li>
                                  <p class="day">2022.11.10</p>
                                  <p class="list"><a href="http://www.upinews.kr/newsView/upi202211100038">[UPI뉴스] 하이트진로, 제주 표선해변 일대 환경 정화활동 진행</a></p>
                                  <p class="txt">&nbsp;</p>
                              </li>
                                                      <li>
                                  <p class="day">2022.11.10</p>
                                  <p class="list"><a href="http://www.kwnews.co.kr/page/view/2022102416003247383">[포토뉴스] 평창군 상하수도사업소, 상수원보호구역 환경정화활동 실시</a></p>
                                  <p class="txt">&nbsp;
                              </li>
                                                  </ul>
                      </div>
                      <a href="?module=Board&amp;action=SiteBoard&amp;sMode=SELECT_FORM&amp;iBrdNo=2" class="more"><img src="image/main/more2.png" alt="" /></a>				</div>
                  <div class="mgs_line clfix">
                      <div class="mgs_title bg">
                          <dl>
                              <dt>커뮤니티 홍보물</dt>
                              <dd>환경보호페이지에서<br /> 확인하세요.</dd>

                          </dl>
                      </div>
                      <div class="mgs_nys"> 
                          <ul>
                                                      <li>
                                  <p class="day">[게시물 추가]</p>
                                  <p class="list"><a href="[주소 남기기]"></a></p>
                                  <p class="txt">&nbsp; [게시물 추가] </p>
                              </p>
                              </li>
                                                      <li>
                                  <p class="day">[      ]</p>
                                  <p class="list"><a href="[게시물 추가]"></a></p>
                                  <p class="txt">&nbsp;</p> [게시물 추가] </p>
                              </li>
                                                      <li>
                                  <p class="day">[      ]</p>
                                  <p class="list"><a href="[게시물 추가]"></a></p>
                                  <p class="txt">&nbsp; [게시물 추가] </p>
                              </p>
                              </li>
                                                      
                          </ul>
                      </div>
                      <a href="?module=Board&amp;action=SiteBoard&amp;sMode=SELECT_FORM&amp;iBrdNo=3" class="more"><img src="image/main/more2.png" alt="" /></a>				</div>
              </div>
          </div>
      </div>
      <!--End contents-->
      
      
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
      <!--End footer-->
  </div>
  </body>
  </html>                                                                    
                                                                      
  