<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
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
    <title>뷰Recycle</title>
    <style>
        .map_wrap {
            position: relative;
            width: 100%;
            height: 800px;
        }
        #menu_wrap {
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            width: 250px;
            margin: 14px 0 25px 14px;
            padding: 14px;
            overflow-y: auto;
            background: rgba(255, 255, 255, 0.7);
            z-index: 1;
            font-size: 14px;
            border-radius: 14px;
        }
        #pagination {
            margin: 14px auto;
            text-align: center;
        }
        #pagination a {
            dipxlay: inline-block;
            margin-right: 14px;
        }
    </style>
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
	

    <!--<h1>주변 재활용센터 및 업사이클링 지도검색</h1>-->
    
    <div>
   <h3 class="sub_title"><span>전국 재활용센터 위치 안내</span></h3>
   </div>
    <button type="button" onclick="getCurrentPosBtn()">내위치 가져오기</button>
    <div class="map_wrap">
        <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    </div>    
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8756bda6c7fed1605b904bd77121da4f&libraries=clusterer"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(36.83916273518297, 127.18597773927601), // 지도의 중심좌표
                level: 6, // 지도의 확대 레벨
                mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
            };

        // 지도를 생성한다 
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커 클러스터러를 생성합니다 
        var clusterer = new kakao.maps.MarkerClusterer({
            map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
            averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
            minLevel: 10 // 클러스터 할 최소 지도 레벨 
        });

        var positionData = [
            [36.83916273518297, 127.18597773927601, '<div style="padding:14px; text-align : center;">백석대학교</div>'],
            [36.81811696859436, 127.16159461371232, '<div style="padding:14px; text-align : center;">신부알뜰매장</div>'],
            [36.8344973671175, 127.13793906324214, '<div style="padding:14px; text-align : center;">아름다운가게<p>(업사이클링매장)</p></div>'],
            [36.81897404313675, 127.14322097118719, '<div style="padding:14px; text-align : center;">충남할인 알뜰매장</div>'],

            [37.65992, 127.04539, '<div style="padding:14px; text-align : center;">도봉구재활용센터	<p>서울특별시 도봉구 마들로13길 218</p>	<p>서울특별시 도봉구 창동 181-39</p>	<p>02-902-8272</p></div>'],
            [38.0707181246, 128.0409528721, '<div style="padding:14px; text-align : center;">양구군 전처리시설	<p>강원도 양구군 남면 국토정중앙로 300</p>		<p>033-480-2833</p></div>'],
            [36.4568483374, 127.1207351918, '<div style="padding:14px; text-align : center;">공주시 재활용센터	<p>충청남도 공주시 봉황로 125</p>	<p>충청남도 공주시 교동 120</p>	<p>041-852-1006</p></div>'],
            [37.5856701, 127.0881513, '<div style="padding:14px; text-align : center;">중랑구재활용센터	<p>서울특별시 중랑구 면목로 377</p>	<p>서울특별시 중랑구 면목본동 504-5</p>	<p>02-435-7272</p></div>'],
            [35.09101753, 126.4804107, '<div style="padding:14px; text-align : center;">함평군환경관리센터	<p>전라남도 함평군 함평읍 주포로 170-9</p>	<p>전라남도 함평군 함평읍 장년리 581</p>	<p>061-320-2878</p></div>'],
            [35.95678064, 128.3993445, '<div style="padding:14px; text-align : center;">칠고국 환경종합센터	<p>경상북도 칠곡군 왜관읍 강변대로 888</p>		<p>054-979-6745</p></div>'],
            [34.290004, 126.769156, '<div style="padding:14px; text-align : center;">완도군 자원관리센터	<p>전라남도 완도군 완도읍 망석리 1-4 폐기물처리장</p>	<p>전라남도 완도군 완도읍 청해진서로 189-735</p></div>'],
            [34.847594355, 127.7386021326, '<div style="padding:14px; text-align : center;">여수시 재활용품선별장	<p>전라남도 여수시 진달래길 310-157(월내동)</p>	<p>전라남도 여수시 월내동 200-5</p>	<p>061-659-3839</p></div>'],
            [38.13766188, 128.212133, '<div style="padding:14px; text-align : center;">인제군 공공재활용선별시설	<p>강원도 인제군 북면 금강로 221</p>	<p>강원도 인제군 북면 월학리 1235-3</p>	<p>033-463-8906</p></div>'],
            [38.22414087, 127.1695236, '<div style="padding:14px; text-align : center;">철원군 재활용센터	<p>강원도 철원군 철원읍 독서당길 305</p>	<p>강원도 철원군 철원읍 율이리 500</p>	<p>033-450-5572</p></div>'],
            [37.1976912, 129.003658, '<div style="padding:14px; text-align : center;">태백시 생활자원회수센터	<p>강원도 태백시 용정길 307(통동,위생매립지)</p>	<p>강원도 태백시 통동 336-1</p>	<p>033-550-2790</p></div>'],
            [36.32142495, 127.4340625, '<div style="padding:14px; text-align : center;">중구새마을부녀회알뜰매장	<p>대전광역시 중구 대종로386번길 69</p>	<p>대전광역시 중구 문창동 46-1</p>	<p>042-252-4957</p></div>'],
            [35.42665086, 126.4321006, '<div style="padding:14px; text-align : center;">영광군환경관리센터	<p>전라남도 영광군 홍농읍 홍농로8길 214</p>		<p>061-356-2127</p></div>'],
            [37.46009391, 126.8832504, '<div style="padding:14px; text-align : center;">광명시재활용센터	<p>경기도 광명시 금당로 47</p>	<p>경기도 광명시 하안동 110-7</p>	<p>02-891-2543</p></div>'],
            [35.79982581, 127.0736932, '<div style="padding:14px; text-align : center;">종합리싸이클링타운	<p>전라북도 전주시 완산구 삼산길 51-24</p>	<p>전라북도 전주시 완산구 삼천동3가 749-5</p>	<p>063-250-8035</p></div>'],
            [35.1150617, 126.936132, '<div style="padding:14px; text-align : center;">광주광역시 동구 재활용선별장	<p>광주광역시 동구 남문로 486(소태동)</p>	<p>광주광역시 동구 소태동 189-1</p>	<p>062-608-8936</p></div>'],
            [34.95596761, 127.6458382, '<div style="padding:14px; text-align : center;">광양시 재활용 선별장	<p>전라남도 광양시 광양읍 직동2길 113</p>	<p>전라남도 광양시 광양읍 죽림리 13</p>	<p>061-762-0388</p></div>'],
            [36.842481, 127.633583, '<div style="padding:14px; text-align : center;">자원관리센터	<p>충청북도 증평군 도안면 천광길 125</p>	<p>충청북도 증평군 도안면 광덕리 49</p>	<p>043-835-4293</p></div>'],
            [35.63481547, 128.7778428, '<div style="padding:14px; text-align : center;">청도환경관리센터	<p>경상북도 청도군 매전면 중앙로 84-460</p>	<p>경상북도 청도군 매전면 송원리 산194-1</p>	<p>054-370-6192</p></div>'],
            [35.4194608, 129.3287862, '<div style="padding:14px; text-align : center;">울주군 재활용품 선별장	<p>울산광역시 울주군 온산읍 화산로 113-11</p>	<p>울산광역시 울주군 온산읍 화산리 산 176-5</p>	<p>052-204-2145</p></div>'],
            [35.56580506, 129.1274934, '<div style="padding:14px; text-align : center;">언양재활용마트	<p>울산광역시 울주군 언양읍 반구대로 849</p>		<p>052-262-0225</p></div>'],
            [35.5610507, 129.1216301, '<div style="padding:14px; text-align : center;">울주 재활용	<p>울산광역시 울주군 삼남읍 중평로 69</p>		<p>052-264-1855+</p></div>'],
            [35.416672, 129.275613, '<div style="padding:14px; text-align : center;">모든상사	<p>울산광역시 울주군 온양읍 남창로 432</p></div>'],
            [35.558337, 129.116109, '<div style="padding:14px; text-align : center;">현대재활용	<p>울산광역시 울주군 삼남읍 봉화로 35</p>		<p>052-254-8105</p></div>'],
            [36.413280159, 129.3901166483, '<div style="padding:14px; text-align : center;">영덕군재활용선별장	<p>경상북도 영덕군 강구면 하저길 139-1</p>	<p>경상북도 영덕군 강구면 하저리 산103</p>	<p>054-730-6204</p></div>'],
            [37.07892172, 127.0514802, '<div style="padding:14px; text-align : center;">평택시북부재활용센터	<p>경기도 평택시 밀월로 15번길 83-10</p>	<p>경기도 평택시 신장동 274-96</p>	<p>031-665-4589</p></div>'],
            [36.99206481, 126.9401848, '<div style="padding:14px; text-align : center;">평택시서부재활용센터	<p>경기도 평택시 안중읍 서동대로 1731-3</p>	<p>경기도 평택시 안중읍 안중리 172-1</p>	<p>031-681-2707</p></div>'],
            [37.74351676, 127.0551989, '<div style="padding:14px; text-align : center;">의정부시재활용수리판매소	<p>경기도 의정부시 장곡로 450(신곡동)</p>	<p>경기도 의정부시 신곡동 681</p>	<p>031-844-7282</p></div>'],
            [35.08794406, 129.0719674, '<div style="padding:14px; text-align : center;">영도구 재활용선별장	<p>부산광역시 영도구 해양로 202</p>	<p>부산광역시 영도구 동삼동 201-14</p>	<p>051-419-4467</p></div>'],
            [37.13313732, 127.0586926, '<div style="padding:14px; text-align : center;">오산시 자원재활용센터	<p>경기도 오산시 오산천로 3-35</p>	<p>경기도 오산시 누읍동 196-4</p>	<p>031-8036-6456</p></div>'],
            [37.41426314, 127.1196311, '<div style="padding:14px; text-align : center;">성남시 재활용선별장	<p>경기도 성남시 분당구 탄천로 247</p>	<p>경기도 성남시 분당구 야탑동 404</p>	<p>031-707-6470</p></div>'],
            [37.5569162491, 127.0549690377, '<div style="padding:14px; text-align : center;">성동구 재활용센터	<p>서울특별시 성동구 천호대로 78길 58</p>	<p>서울특별시 성동구 송정동 78-1</p>	<p>02-2204-7997</p></div>'],
            [34.88376961, 128.5736717, '<div style="padding:14px; text-align : center;">경남거제지역자활센터	<p>경상남도 거제시 사등면 두동로1길 109</p>	<p>경상남도 거제시 사등면 사곡리 375-1</p>	<p>055-688-5890</p></div>'],
            [34.86244036, 128.691074, '<div style="padding:14px; text-align : center;">거제YWCA 아나바다 재활용센터	<p>경상남도 거제시 탑곡로 75 (아주동)</p>	<p>경상남도 거제시 아주동 290</p>	<p>055-682-4950</p></div>'],
            [37.30727229, 128.6787899, '<div style="padding:14px; text-align : center;">정선군재활용선별시설	<p>강원도 정선군 남면 광락로 691-233</p>	<p>강원도 정선군 남면 광덕리 365</p>	<p>033-560-2398</p></div>'],
            [35.53954689, 129.3174867, '<div style="padding:14px; text-align : center;">열린 재활용	<p>울산광역시 남구 돋질로 109</p>	<p>울산광역시 남구 신정동 590-11</p>	<p>052-272-3003</p></div>'],
            [35.53045106, 129.3146731, '<div style="padding:14px; text-align : center;">북부 재활용 센터	<p>울산광역시 남구 수암로 62</p>	<p>울산광역시 남구 신정동 804-10</p>	<p>052-260-5985</p></div>'],
            [35.5422021, 129.3209531, '<div style="padding:14px; text-align : center;">부일전자	<p>울산광역시 남구 신정로 116번길 14</p>	<p>울산광역시 남구 신정동 152-4</p>	<p>052-211-4380</p></div>'],
            [35.54000407, 129.3189429, '<div style="padding:14px; text-align : center;">울산 중고 프라자	<p>울산광역시 남구 돋질로 121</p>	<p>울산광역시 남구 신정동 170-12</p>	<p>052-256-1232</p></div>'],
            [35.53474255, 129.3184596, '<div style="padding:14px; text-align : center;">이안재활용마트	<p>울산광역시 남구 삼산로 98</p>	<p>울산광역시 남구 달동 915-2</p>	<p>052-256-4986</p></div>'],
            [35.54048694, 129.348049, '<div style="padding:14px; text-align : center;">보람 재활용	<p>울산광역시 남구 남중로 70</p>	<p>울산광역시 남구 삼산동 220-7</p>	<p>052-292-4982</p></div>'],
            [35.54265753, 129.354117, '<div style="padding:14px; text-align : center;">광장재활용센터	<p>울산광역시 남구 산업로 693</p>	<p>울산광역시 남구 삼산동 147-9</p>	<p>052-256-1900</p></div>'],
            [35.52030088, 129.3378032, '<div style="padding:14px; text-align : center;">울산 재활용	<p>울산광역시 남구 수암로 310</p>	<p>울산광역시 남구 야음동 368-4</p>	<p>052-260-2114</p></div>'],
            [35.52243771, 129.3347502, '<div style="padding:14px; text-align : center;">국민 재활용	<p>울산광역시 남구 수암로 271</p>	<p>울산광역시 남구 야음동 385-29</p>	<p>052-261-7262</p></div>'],
            [35.526987, 129.3281284, '<div style="padding:14px; text-align : center;">나눔 중고 알뜰매장	<p>울산광역시 남구 수암로 193</p>	<p>울산광역시 남구 야음동 671-1</p>	<p>052-227-8946</p></div>'],
            [35.54177297, 129.353249, '<div style="padding:14px; text-align : center;">남구재활용센터	<p>울산광역시 남구 산업로 679-1</p>	<p>울산광역시 남구 삼산동 194-4</p>	<p>052-258-8272</p></div>'],
            [35.50613473, 127.7494238, '<div style="padding:14px; text-align : center;">함양군폐기물종합처리장	<p>경상남도 함양군 함양읍 함양남서로 996-166</p>	<p>경상남도 함양군 함양읍 이은리 34</p>	<p>055-960-6150</p></div>'],
            [34.53069593, 126.2622759, '<div style="padding:14px; text-align : center;">진도군재활용선별시설	<p>전라남도 진도군 군내면 한의길 115</p>		<p>061-540-3781</p></div>'],
            [35.15563315, 129.0507411, '<div style="padding:14px; text-align : center;">부산진구 재활용센터	<p>부산광역시 부산진구 신천대로 155(부전동)</p>	<p>부산광역시 부산진구 부전동 384-65</p>	<p>051-805-8272</p></div>'],
            [37.6191271, 127.0789944, '<div style="padding:14px; text-align : center;">재활용센터1관	<p>서을특별시 노원구 화랑로 486</p>	<p>서을특별시 노원구 공릉동 656-5</p>	<p>02-974-7282</p></div>'],
            [37.654699, 127.0717395, '<div style="padding:14px; text-align : center;">재활용센터2관	<p>서을특별시 노원구 덕릉로 639</p>	<p>서을특별시 노원구 중계동 210-7</p>	<p>02-933-8289</p></div>'],
            [37.6715699839, 127.0548404019, '<div style="padding:14px; text-align : center;">상계재활용센터	<p>서울특별시 노원구 수락산로 212-23</p>	<p>서울특별시 노원구 상계동 1035-3</p>	<p>02-948-8138</p></div>'],
            [36.48986774, 127.675204, '<div style="padding:14px; text-align : center;">보은군 생활자원순환센터		<p>충청북도 보은군 보은읍 용암리 산37</p>	<p>043-540-3262</p></div>'],
            [37.25655776, 127.2198445, '<div style="padding:14px; text-align : center;">용인시 재활용센터	<p>경기도 용인시 처인구 경안천로 288</p>	<p>경기도 용인시 처인구 고림동 954-3</p>	<p>031-332-1190</p></div>'],
            [37.18157876, 127.2001045, '<div style="padding:14px; text-align : center;">이동읍 재활용센터	<p>경기도 용인시 처인구 백옥대로489번길</p>	<p>경기도 용인시 처인구 이동읍 덕성리 1130-7</p>	<p>031-332-1190</p></div>'],
            [35.54941673, 128.1734842, '<div style="padding:14px; text-align : center;">합천군재활용선별장	<p>경상남도 합천군 대양면 합천대로 2586-51</p>	<p>경상남도 합천군 대양면 정양리 18-1</p>	<p>055-931-9285</p></div>'],
            [35.18310703, 128.989651, '<div style="padding:14px; text-align : center;">사상구재활용센터	<p>부산광역시 사상구 백양대로 858(모라동)</p>	<p>부산광역시 사상구 모라동 1365-3</p>	<p>051-315-9721</p></div>'],
            [35.06809476, 127.2483342, '<div style="padding:14px; text-align : center;">순천시자원순환센터	<p>전라남도 순천시 주암면 동주로 2230-63</p>	<p>전라남도 순천시 주암면 구산리 832</p>	<p>061-751-8864</p></div>'],
            [37.58084553, 126.647851, '<div style="padding:14px; text-align : center;">서구 재활용선별장	<p>인천광역시 서구 거월로 37</p>	<p>인천광역시 서구 왕길동 61-8</p>	<p>032-560-1934</p></div>'],
            [37.45933133, 127.0401205, '<div style="padding:14px; text-align : center;">서초구재활용센터	<p>서울특별시 서초구 양재대로12길 73-19</p>	<p>서울특별시 서초구 원지동 23</p>	<p>02-571-7272</p></div>'],
            [37.55699643, 127.1569746, '<div style="padding:14px; text-align : center;">강동구가전가구재활용센터	<p>서울특별시 강동구 동남로 930</p>	<p>서울특별시 강동구 고덕동 302</p>	<p>02-427-8425</p></div>'],
            [37.64183139, 127.022653, '<div style="padding:14px; text-align : center;">강북구재활용센터	<p>서울특별시 강북구 노해로 70</p>	<p>서울특별시 강북구 수유동 188-26</p>	<p>02-992-8425</p></div>'],
            [35.299424, 128.7783286, '<div style="padding:14px; text-align : center;">김해시 재활용품선별장	<p>경상남도 김해시 진영읍 김해대로835번길 13-72</p>	<p>경상남도 김해시 진영읍 설창리 820</p>	<p>055-330-3409</p></div>'],
            [35.58707426, 126.6600257, '<div style="padding:14px; text-align : center;">줄포환경센터	<p>전라북도 부안군 줄포면 분탕골로 215-34</p>	<p>전라북도 부안군 줄포면 줄포리 1034-17</p>	<p>063-580-3911</p></div>'],
            [37.40717893, 126.9932814, '<div style="padding:14px; text-align : center;">과천시 재활용센터	<p>경기도 과천시 구리안로 177</p>	<p>경기도 과천시 갈현동 205-1</p>	<p>02-507-8946</p></div>'],
            [36.22144517, 127.8018119, '<div style="padding:14px; text-align : center;">영동군자원순환센터	<p>충청북도 영동군 용산면 남부로 621-39</p>		<p>043-740-3415</p></div>'],
            [35.02069463, 126.9907566, '<div style="padding:14px; text-align : center;">공공재활용 선별장	<p>전라남도 화순군 한천면 덕음로 548</p>	<p>전라남도 화순군 한천면 가암리 산91</p>	<p>061-379-3602</p></div>'],
            [35.98710823, 127.1700744, '<div style="padding:14px; text-align : center;">완주군생활자원화센터	<p>전라북도 완주군 비봉면 율백로 194-38</p>	<p>전라북도 완주군 비봉면 백도리 419</p>	<p>063-290-4290</p></div>'],
            [35.12231134, 128.0145496, '<div style="padding:14px; text-align : center;">진주시재활용품선별장	<p>경상남도 진주시 내동면 유수길 75번길 27</p>	<p>경상남도 진주시 내동면 유수리 1014</p>	<p>055-749-2279</p></div>'],
            [35.52604103, 129.3528164, '<div style="padding:14px; text-align : center;">대영기업	<p>울산광역시 남구 여천로 174</p>	<p>울산광역시 남구 여천동 1460</p>	<p>052-260-9944</p></div>'],
            [36.54865844, 128.6716658, '<div style="padding:14px; text-align : center;">안동시 재활용품선별장	<p>경상북도 안동시 배고개길 84</p>	<p>경상북도 안동시 수하동 742-1</p>	<p>054-840-3880</p></div>'],
            [35.41405716, 127.3184414, '<div style="padding:14px; text-align : center;">대립매립장 광역재활용품선별시설	<p>전라북도 남원시 대산면 노산하대길 134</p>	<p>전라북도 남원시 대산면 대곡리 925</p>	<p>063-620-6771</p></div>'],
            [36.17116665, 127.4411889, '<div style="padding:14px; text-align : center;">금산군 생활자원회수센터	<p>충청남도 금산군 추부면 용천로798-51</p>	<p>충청남도 금산군 추부면 용지리 430</p>	<p>041-750-2554</p></div>'],
            [35.8663645, 128.5417192, '<div style="padding:14px; text-align : center;">유창알앤씨	<p>대구광역시 서구 국채보상로20길 25</p>	<p>대구광역시 서구 중리동 1075-1</p>	<p>053-663-2723</p></div>'],
            [36.19560375, 127.0856077, '<div style="padding:14px; text-align : center;">논산시재활용센터	<p>충청남도 논산시 부창로 72</p>		<p>041-746-5535</p></div>'],
            [36.12512245, 127.0990302, '<div style="padding:14px; text-align : center;">연무읍재활용센터	<p>충청남도 논산시 연무읍 안심로 50</p>		<p>041-746-5535</p></div>'],
            [36.16398303, 127.015155, '<div style="padding:14px; text-align : center;">강경읍재활용센터	<p>충청남도 논산시 강경읍 옥녀봉로 66</p>		<p>041-746-5535</p></div>'],
            [36.34698788, 127.5781691, '<div style="padding:14px; text-align : center;">옥천군 생활자원회수센터	<p>충청북도 옥천군 군북면 이평1길 199</p>	<p>충청북도 옥천군 군북면 추소리 1</p>	<p>043-730-3455</p></div>'],
            [38.0937569, 128.571566, '<div style="padding:14px; text-align : center;">환경자원센터	<p>강원도 양양군 양양읍 되넘이길 80</p>	<p>강원도 양양군 양양읍 화일리 485</p>	<p>033-671-2788</p></div>'],
            [35.1281562, 129.0913237, '<div style="padding:14px; text-align : center;">남구재활용센터	<p>부산광역시 남구 석포로 126번길 4(대연동)</p>	<p>부산광역시 남구 대연동 967-1</p>	<p>051-611-0808</p></div>'],
            [35.12021396, 129.1097956, '<div style="padding:14px; text-align : center;">동아재활용센터	<p>부산광역시 남구 동명로115-1(용호동)</p>	<p>부산광역시 남구 용호동 413-13</p>	<p>051-626-1713</p></div>'],
            [35.12249262, 129.112594, '<div style="padding:14px; text-align : center;">용성가전에어컨	<p>부산광역시 남구 용호로109번길3(용호동)</p>	<p>부산광역시 남구 용호동366-8</p>	<p>051-628-7704</p></div>'],
            [35.1161314, 129.082796, '<div style="padding:14px; text-align : center;">남부재활용센터	<p>부산광역시 남구 홍곡로 26(감만동)</p>	<p>부산광역시 남구 감만동 162-22</p>	<p>051-644-8572</p></div>'],
            [37.28924123, 127.086283, '<div style="padding:14px; text-align : center;">수원시자원순환센터	<p>경기도 수원시 영통구 광교호수로 278-1(하동)</p>	<p>경기도 수원시 영통구 하동 17-3</p>	<p>031-888-7911</p></div>'],
            [35.21765981, 129.1375089, '<div style="padding:14px; text-align : center;">해운대구자원재활용센터	<p>부산광역시 해운대구 석대천로118(반여동)</p>	<p>부산광역시 해운대구 반여동 1502-77</p>	<p>051-749-5725</p></div>'],
            [35.47909459, 128.6870329, '<div style="padding:14px; text-align : center;">밀양시 재활용품 선별장	<p>경상남도 밀양시 무안면 신생길 53-246</p>	<p>경상남도 밀양시 무안면 마흘리 산229-4</p>	<p>055-359-5328</p></div>'],
            [36.630653419, 129.1277045048, '<div style="padding:14px; text-align : center;">영양군 환경자원센터	<p>경상북도 영양군 영양읍 석영로 1093-81</p>	<p>경상북도 영양군 영양읍 전곡리 306</p>	<p>054-680-6532</p></div>'],
            [37.33777051, 126.9642594, '<div style="padding:14px; text-align : center;">의왕시재활용센터	<p>경기도 의왕시 가나무로 20</p>	<p>경기도 의왕시 이동 478</p>	<p>070-4649-7431</p></div>'],
            [35.12989024, 129.0612769, '<div style="padding:14px; text-align : center;">동구재활용센터		<p>부산광역시 동구 범일동 1642</p>	<p>051-440-4451</p></div>'],
            [35.986793, 129.389004, '<div style="padding:14px; text-align : center;">포항시재활용선별장	<p>경상북도 포항시 남구 서원재로 45</p>	<p>경상북도 포항시 남구 호동 65</p>	<p>054-280-9332</p></div>'],
            [35.0810401, 129.024756, '<div style="padding:14px; text-align : center;">서구재활용센터	<p>부산광역시 서구 충무대로 120(암남동)</p>	<p>부산광역시 서구 암남동 95-30</p>	<p>051-247-8777</p></div>'],
            [35.098152, 129.020272, '<div style="padding:14px; text-align : center;">스마일재활용센터	<p>부산광역시 서구 구덕로 151(초장동)</p>	<p>부산광역시 서구 초장동 54-8</p>	<p>051-248-4488</p></div>'],
            [35.1525172, 128.700497, '<div style="padding:14px; text-align : center;">창원시진해재활용품상설교환판매장	<p>경상남도 창원시 진해구 동진로 44(석동)</p>	<p>경상남도 창원시 진해구 석동84-1</p>	<p>055-544-4980</p></div>'],
            [37.89328531, 127.0100091, '<div style="padding:14px; text-align : center;">재활용선별장	<p>경기도 양주시 은현면 은남로 160</p>	<p>경기도 양주시 은현면 봉암리 39</p>	<p>031-828-9752</p></div>'],
            [36.98235533, 127.9016585, '<div style="padding:14px; text-align : center;">충주시클린센터	<p>충청북도 충주시 낙수당1길 41(칠금동, 클린센터)</p>	<p>충청북도 충주시 칠금동 420-3</p>	<p>043-850-6991</p></div>'],
            [36.15896481, 128.1235108, '<div style="padding:14px; text-align : center;">김천시재활용선별장	<p>경상북도 김천시 공단4길 51-11</p>	<p>경상북도 김천시 응명동 1012-1</p>	<p>054-420-6183</p></div>'],
            [36.42394039, 128.1907151, '<div style="padding:14px; text-align : center;">상주시 재활용품선별장	<p>경상북도 상주시 영남제일로 1408-51</p></div>'],
            [35.8739064099, 128.6092627207, '<div style="padding:14px; text-align : center;">중구재활용센터	<p>대구광역시 중구 태평로51길 77</p>	<p>대구광역시 중구 동인동3가 394-13</p>	<p>053-254-8661</p></div>'],
            [35.201229, 129.0819157, '<div style="padding:14px; text-align : center;">동래구 재활용센터	<p>부산광역시 동래구 충렬대로202번길 33(수안동)</p>	<p>부산광역시 동래구 수안동 2-7</p>	<p>051-554-5088</p></div>'],
            [34.56720876, 126.5376835, '<div style="padding:14px; text-align : center;">해남군 재활용품 선별시설	<p>전라남도 해남군 해남읍 호교길 73-265</p>	<p>전라남도 해남군 해남읍 복평리 893-1</p>	<p>061-530-5116</p></div>'],
            [35.903514, 128.6309954, '<div style="padding:14px; text-align : center;">동구자원재활용센터	<p>대구광역시 동구 공항로31길 26(불로동)</p>	<p>대구광역시 동구 불로동 866-9</p>	<p>053-985-3840</p></div>'],
            [37.55897769, 127.0134049, '<div style="padding:14px; text-align : center;">중구재활용센터	<p>서울특별시 중구 다산로 174</p>	<p>서울특별시 중구 신당동 330-17</p>	<p>02-2233-7289</p></div>'],
            [35.61423844, 126.8549416, '<div style="padding:14px; text-align : center;">정읍시 재활용선별장	<p>전라북도 정읍시 영파길 169</p>	<p>전라북도 정읍시 영파동 399-1</p>	<p>063-539-5743</p></div>'],
            [37.967631, 127.243634, '<div style="padding:14px; text-align : center;">포천시 환경자원센터	<p>경기도 포천시 신북면 신평로16번길 207</p>	<p>경기도 포천시 신북면 만세교리 101</p>	<p>031-538-2244</p></div>'],
            [37.25779, 127.730107, '<div style="padding:14px; text-align : center;">여주시 재활용품 선별장	<p>경기도 여주시 강천면 웃설만이길 151</p></div>'],
            [34.70880038, 126.9210733, '<div style="padding:14px; text-align : center;">장흥군그린환경센터	<p>전라남도 장흥군 부산면 덕정길 206</p>	<p>전라남도 장흥군 부산면 부춘리 95</p>	<p>061-862-8266</p></div>'],
            [37.498725, 126.913851, '<div style="padding:14px; text-align : center;">영등포구 재활용센터	<p>서울특별시 영등포구 대방천로 207</p>	<p>서울특별시 영등포구 신길동 3937-10</p>	<p>02-836-7289</p></div>'],
            [34.92522294, 128.1138245, '<div style="padding:14px; text-align : center;">사천시 재활용선별장	<p>경상남도 사천시 환경길 71</p>	<p>경상남도 사천시 사등동 86-9</p>	<p>055-831-5606</p></div>'],
            [36.32843786, 127.4456278, '<div style="padding:14px; text-align : center;">대동알뜰매장	<p>대전광역시 동구 용운로21 (대동)</p>	<p>대전광역시 동구 대동 134-33</p></div>'],
            [34.623582999999996, 126.776748, '<div style="padding:14px; text-align : center;">강진환경정화센터		<p>전라남도 강진군 강진읍 남당로 97-73</p>	<p>061-430-3963</p></div>'],
            [35.12021823, 128.9629623, '<div style="padding:14px; text-align : center;">사하구재활용선별장	<p>부산광역시 사하구 낙동대로 641</p>	<p>부산광역시 사하구 하단동 845-52</p>	<p>051-220-4452</p></div>'],
            [36.33837746, 126.5394913, '<div style="padding:14px; text-align : center;">보령시 공공재활용 기반시설	<p>충청남도 보령시 해안로 543</p>	<p>충청남도 보령시 남곡동 1145-8</p>	<p>041-931-1420</p></div>'],
            [37.541718, 126.721928, '<div style="padding:14px; text-align : center;">(사)인천내일을 여는 집 계양구 재활용센터(계산점)	<p>인천광역시 계양구 계양대로205번길 11-3</p>	<p>인천광역시 계양구 계산동 942-10</p>	<p>032-555-8899</p></div>'],
            [37.534538, 126.733497, '<div style="padding:14px; text-align : center;">(사)한국생활자원재활용협회	<p>인천광역시 계양구 장제로743번길 14</p>	<p>인천광역시 계양구 작전동 26-1</p>	<p>032-552-7282</p></div>'],
            [37.479138, 127.0494793, '<div style="padding:14px; text-align : center;">강남구재활용센터	<p>서울특별시 강남구 개포로 247</p>	<p>서울특별시 강남구 개포동 1259-6</p></div>'],
            [37.50883463, 127.0325018, '<div style="padding:14px; text-align : center;">리싸이클세상	<p>서울특별시 강남구 논현로 115길 7</p>	<p>서울특별시 강남구 논현동 191-6</p></div>'],
            [37.545155, 126.844155, '<div style="padding:14px; text-align : center;">강서재활용센터	<p>서울특별시 강서구 화곡로35길 1</p>	<p>서울특별시 강서구 화곡동 111-81</p>	<p>02-2602-0505</p></div>'],
            [37.57083785, 126.816916, '<div style="padding:14px; text-align : center;">강서구재활용센터	<p>서울특별시 강서구 방화대로 336</p>	<p>서울특별시 강서구 방화동 257-19</p>	<p>02-2666-7262</p></div>'],
            [37.5472447, 126.848927, '<div style="padding:14px; text-align : center;">강서구중고재활용센터	<p>서울특별시 강서구 까치산로 102</p>	<p>서울특별시 강서구 화곡동 970-19</p>	<p>02-3662-8545</p></div>'],
            [37.503211, 126.886038, '<div style="padding:14px; text-align : center;">구로구 재활용센터	<p>서울특별시 구로구 새말로48</p>	<p>서울특별시 구로구 구로동 557-11</p>	<p>02-858-8272</p></div>'],
            [34.83982251, 128.4221417, '<div style="padding:14px; text-align : center;">통영시 재활용품 상설판매장	<p>경상남도 통영시 동충1길 4(항남동)</p>	<p>경상남도 통영시 항남동 151-54</p>	<p>055-646-2548</p></div>'],
            [37.89238, 127.751638, '<div style="padding:14px; text-align : center;">춘천시 재활용센터	<p>강원도 춘천시 뒷들길30번길 16</p>	<p>강원도 춘천시 후평동 194</p>	<p>033-243-7272</p></div>'],
            [37.908602, 127.749173, '<div style="padding:14px; text-align : center;">(합자)청명산업	<p>강원도 춘천시 동면 소양강로 242</p>	<p>강원도 춘천시 동면 장학리 648-56</p>	<p>033-257-4428</p></div>'],
            [37.864773, 127.735409, '<div style="padding:14px; text-align : center;">신바람 할인매장	<p>강원도 춘천시 공지로 257</p>	<p>강원도 춘천시 효자동 250-76</p>	<p>033-626-0071</p></div>'],
            [37.797263, 127.679831, '<div style="padding:14px; text-align : center;">춘천시 도시형종합폐기물처리시설 재활용선별센터	<p>강원도 춘천시 신동면 한치로 681-1</p>	<p>강원도 춘천시 신동면 혈동리 548-7</p>	<p>033-262-0216</p></div>'],
            [37.56081954, 127.0817523, '<div style="padding:14px; text-align : center;">광진구 재활용센터	<p>서울특별시 광진구 능동로 352-1(중곡동)</p>	<p>서울특별시 광진구 중곡동 57-24</p>	<p>02-457-0303</p></div>'],
            [35.15902805, 129.1149138, '<div style="padding:14px; text-align : center;">용우재활용센터	<p>부산광역시 수영구 광안로7번길 42(광안동)</p>		<p>051-752-2781</p></div>'],
            [35.16864148, 129.1116115, '<div style="padding:14px; text-align : center;">신수영재활용마트	<p>부산광역시 수영구 연수로392번길 18(광안동)</p>		<p>051-753-8270</p></div>'],
            [35.1728305, 129.1003937, '<div style="padding:14px; text-align : center;">부전식당용 중고마트	<p>부산광역시 수영구 연수로 272(망미동)</p>		<p>051-755-3250</p></div>'],
            [35.17085857, 129.110318, '<div style="padding:14px; text-align : center;">수영종합재활용센터	<p>부산광역시 수영구 연수로 365(수영동)</p>		<p>051-753-4979</p></div>'],
            [35.1684064, 129.1207317, '<div style="padding:14px; text-align : center;">수영구재활용센터	<p>부산광역시 수영구 수영로741번길 12(수영동)</p>		<p>051-756-0599</p></div>'],
            [35.17307547, 129.117523, '<div style="padding:14px; text-align : center;">팔도중고가전,가구마트	<p>부산광역시 수영구 수미로 62(수영동)</p>		<p>051-753-3104</p></div>'],
            [37.69266797, 128.9879447, '<div style="padding:14px; text-align : center;">강릉시자원순환센터	<p>강원도 강릉시 강동면 임곡로 557-13</p>	<p>강원도 강릉시 강동면 임곡리 산25</p>	<p>033-660-3391</p></div>'],
            [37.51123196, 127.9701806, '<div style="padding:14px; text-align : center;">횡성군재활용선별장	<p>강원도 횡성군 횡성읍 학오로 89</p>	<p>강원도 횡성군 횡성읍 학곡리 258</p>	<p>033-345-7132</p></div>'],
            [37.37179188, 126.7573247, '<div style="padding:14px; text-align : center;">시흥시 환경미화타운	<p>경기도 시흥시 뒷방울길 80</p>	<p>경기도 시흥시 정왕동 1</p>	<p>031-488-6890</p></div>'],
            [35.82020842, 128.6491827, '<div style="padding:14px; text-align : center;">수성구 생활자원회수센터	<p>대구광역시 수성구 청호로 10</p>	<p>대구광역시 수성구 범물동 105-7</p>	<p>053-666-2723</p></div>'],
            [37.61273536, 125.7203857, '<div style="padding:14px; text-align : center;">연평면 소연평 재활용 선별장	<p>인천광역시 옹진군 연평면 소연평로 161-94</p>	<p>인천광역시 옹진군 연평면 연평리 931-4</p>	<p>032-899-3490</p></div>'],
            [37.23042245, 126.1065875, '<div style="padding:14px; text-align : center;">덕적면 덕적 재활용 선별장	<p>인천광역시 옹진군 덕적면 덕적남로 771번길 103</p>	<p>인천광역시 옹진군 덕적면 서포리 615</p>	<p>032-899-3740</p></div>'],
            [34.782254843, 127.087097745, '<div style="padding:14px; text-align : center;">보성군 생활자원회수센터	<p>전라남도 보성군 보성읍 평동로 1656</p>	<p>전라남도 보성군 보성읍 용문리 608</p>	<p>061-850-8497</p></div>'],
            [37.53555774, 126.4311789, '<div style="padding:14px; text-align : center;">북도면 신도리 재활용 선별장	<p>인천광역시 옹진군 북도면 시도로86번길 78</p>	<p>인천광역시 옹진군 북도면 시도리 277-31</p>	<p>032-899-3410</p></div>'],
            [37.65306184, 125.6908597, '<div style="padding:14px; text-align : center;">연평면 대연평 재활용 선별장	<p>인천광역시 옹진군 연평면 연평로 746-46</p>	<p>인천광역시 옹진군 연평면 연평리 505-1</p>	<p>032-899-3490</p></div>'],
            [37.2500672, 126.3151764, '<div style="padding:14px; text-align : center;">자월면 자월 재활용 선별장	<p>인천광역시 옹진군 자월면 자월서로 78</p>	<p>인천광역시 옹진군 자월면 자월리 416-5</p>	<p>032-899-3750</p></div>'],
            [37.95713929, 124.6965634, '<div style="padding:14px; text-align : center;">백령면 재활용 선별장	<p>인천광역시 옹진군 백령면 백령남로72번길 356</p>	<p>인천광역시 옹진군 백령면 진촌리 2376</p>	<p>032-899-3420</p></div>'],
            [37.54345186, 126.3327049, '<div style="padding:14px; text-align : center;">북도면 장봉리 재활용 선별장	<p>인천광역시 옹진군 북도면 장봉로 678</p>	<p>인천광역시 옹진군 북도면 장봉리 546-2</p>	<p>032-899-3410</p></div>'],
            [37.24982327, 126.4667491, '<div style="padding:14px; text-align : center;">영흥면 재활용 선별장	<p>인천광역시 옹진군 영흥면 영흥남로110번길 116</p>	<p>인천광역시 옹진군 영흥면 외리 81-2</p>	<p>032-899-3820</p></div>'],
            [37.17249596, 126.107333, '<div style="padding:14px; text-align : center;">덕적면 문갑 재활용 선별장	<p>인천광역시 옹진군 덕적면 문갑로 61</p>	<p>인천광역시 옹진군 덕적면 문갑리 74-18</p>	<p>032-899-3740</p></div>'],
            [37.076451, 125.9442335, '<div style="padding:14px; text-align : center;">덕적면 백아 재활용 선별장		<p>인천광역시 옹진군 덕적면 백아리 149-6</p>	<p>032-899-3740</p></div>'],
            [37.02579534, 125.9966876, '<div style="padding:14px; text-align : center;">덕적면 울도 재활용 선별장	<p>인천광역시 옹진군 덕적면 울도로 182번길 8-1</p>	<p>인천광역시 옹진군 덕적면 울도리 산42-1</p>	<p>032-899-3740</p></div>'],
            [37.83920892, 124.7053035, '<div style="padding:14px; text-align : center;">대청면 대청 재활용 선별장	<p>인천광역시 옹진군 대청면 대청북로 53</p>	<p>인천광역시 옹진군 대청면 대청리 산16-26</p>	<p>032-899-3610</p></div>'],
            [37.17468452, 126.264866, '<div style="padding:14px; text-align : center;">자월면 대이작 재활용 선별장	<p>인천광역시 옹진군 자월면 대이작로 159번길 127</p>	<p>인천광역시 옹진군 자월면 이작리 394-3</p>	<p>032-899-3750</p></div>'],
            [37.17284668, 126.2963751, '<div style="padding:14px; text-align : center;">자월면 승봉 재활용 선별장	<p>인천광역시 옹진군 자월면 승봉로29번길 100-13</p>	<p>인천광역시 옹진군 자월면 승봉리 771-3</p>	<p>032-899-3750</p></div>'],
            [37.77133063, 124.7609434, '<div style="padding:14px; text-align : center;">대청면 소청 재활용 선별장	<p>인천광역시 옹진군 대청면 소청동로 159</p>	<p>인천광역시 옹진군 대청면 소청리 58</p>	<p>032-899-3409</p></div>'],
            [37.4557581, 126.6296378, '<div style="padding:14px; text-align : center;">중구재활용센터	<p>인천광역시 중구 서해대로 324</p>	<p>인천광역시 중구 신흥동3가 7-225</p>	<p>032-888-7282</p></div>'],
            [34.80677839, 126.6100995, '<div style="padding:14px; text-align : center;">영암군 공공재활용선별시설	<p>전라남도 영암군 군서면 녹색환경길 374</p>	<p>전라남도 영암군 군서면 도장리 1094</p>	<p>061-470-2437</p></div>'],
            [36.0773836729, 126.687346, '<div style="padding:14px; text-align : center;">서천군재활용처리시설	<p>충청남도 서천군 서천읍 충절로41번길 23 (군사리)</p>	<p>충청남도 서천군 서천읍 군사리 692-3</p>	<p>041-950-4336</p></div>'],
            [36.79792675, 126.9806588, '<div style="padding:14px; text-align : center;">아산시생활자원회수센터	<p>충청남도 아산시 환경공원로 121</p></div>'],
            [36.34961896, 128.6959101, '<div style="padding:14px; text-align : center;">의성군공공재활용센터	<p>경상북도 의성군 의성읍 동서1길 15-1</p>	<p>경상북도 의성군 의성읍 후죽리 678-8</p>	<p>054-833-0523</p></div>'],
            [35.12150861, 126.8264274, '<div style="padding:14px; text-align : center;">재활용선별장	<p>광주광역시 서구 서창둑길 166(세하동)</p>	<p>광주광역시 서구 세하동 765</p>	<p>062-374-9446</p></div>'],
            [36.2367537044, 128.5419154885, '<div style="padding:14px; text-align : center;">환경관리센터	<p>경상북도 군위군 군위읍 내량길 150</p>	<p>경상북도 군위군 군위읍 내량리 산58-3</p>	<p>054-380-7991</p></div>'],
            [35.96461799, 128.9694261, '<div style="padding:14px; text-align : center;">영천시 그린환경센터	<p>경상북도 영천시 바깥완산길 433 (완산동)</p>	<p>경상북도 영천시 완산동 산3-1</p>	<p>054-330-6519</p></div>'],
            [37.1255696817, 128.1723421857, '<div style="padding:14px; text-align : center;">제천시자원관리센터	<p>충청북도 제천시 북부로 1860</p>	<p>충청북도 제천시 신동 653</p></div>'],
            [38.363431, 128.481443, '<div style="padding:14px; text-align : center;">고성군생활자원회수센터	<p>고성군 죽왕면 짱고개길 253</p>	<p>고성군 죽왕면 향목리 223</p>	<p>033-680-3983</p></div>'],
            [35.2818126122, 127.3252385286, '<div style="padding:14px; text-align : center;">곡성군 재활용품 선별장	<p>전라남도 곡성군 곡성읍 곡고로 98-157</p>		<p>061-360-8529</p></div>'],
            [37.4851166, 126.9355291, '<div style="padding:14px; text-align : center;">관악구 재활용센터(봉천점)	<p>서울특별시 관악구 봉천동 남부순환로 1663</p>	<p>서울특별시 관악구 봉천동 959-3</p>	<p>02-883-0858</p></div>'],
            [37.48190245, 126.9165962, '<div style="padding:14px; text-align : center;">관악구 재활용센터(신림점)	<p>서울특별시 관악구 신림동 남부순환로 1494</p>	<p>서울특별시 관악구 신림동 1570-2</p>	<p>02-842-8425</p></div>'],
            [37.47542075, 126.9372603, '<div style="padding:14px; text-align : center;">관악구 재활용센터(신림2점)	<p>서울특별시 관악구 신림로 202</p>	<p>서울특별시 관악구 신림동 96-48</p>	<p>02-877-1140</p></div>'],
            [36.83184835, 127.8341003, '<div style="padding:14px; text-align : center;">괴산광역생활자원회수센터	<p>충청북도 괴산군 괴산읍 능촌로2길 70-37</p>	<p>충청북도 괴산군 괴산읍 능촌리 465-2</p>	<p>043-830-2773</p></div>'],
            [36.114273, 128.351282, '<div style="padding:14px; text-align : center;">구미시 재활용품 전시판매장	<p>경상북도 구미시 신시로10길 118</p>	<p>경상북도 구미시 송정동 492-7</p>	<p>054-455-3272</p></div>'],
            [34.59718491, 127.290166, '<div style="padding:14px; text-align : center;">고흥자원재활용센터	<p>전라남도 고흥군 고흥읍 봉계2길 142</p>	<p>전라남도 고흥군 고흥읍 남계리 786-5</p>	<p>061-830-5304</p></div>'],
            [34.82798253, 126.4080458, '<div style="padding:14px; text-align : center;">목포시 재활용선별센터	<p>전라남도 목포시 대양로 241-55</p>	<p>전라남도 목포시 대양동 산109-3</p>	<p>061-270-8076</p></div>'],
            [37.32914529, 126.9301236, '<div style="padding:14px; text-align : center;">군포시 새활용타운	<p>경기도 군포시 번영로 145</p>	<p>경기도 군포시 부곡동 732-1</p>	<p>031-390-7692</p></div>'],
            [35.183252, 129.106349, '<div style="padding:14px; text-align : center;">연제구 환경자원관리소	<p>부산광역시 연제구 고분로 222</p>	<p>부산광역시 연제구 연산동 243-19</p>	<p>051-665-4452</p></div>'],
            [36.66333984, 126.8412887, '<div style="padding:14px; text-align : center;">맑은누리센터 재활용선별시설	<p>충청남도 예산군 대률송림길 280 (대흥면)</p>	<p>충청남도 예산군 대흥면 대률리 1-4</p>	<p>031-335-6571</p></div>'],
            [35.94722384, 126.6058336, '<div style="padding:14px; text-align : center;">군산시재활용선별시설	<p>전라북도 군산시 새만금북로 630-28</p>	<p>전라북도 군산시 내초동 201-7</p>	<p>063-454-7895</p></div>'],
            [37.57651247, 129.1085604, '<div style="padding:14px; text-align : center;">동해시가전가구재활용센터	<p>강원도 동해시 봉수로 160</p>	<p>강원도 동해시 대진동 73-7</p>	<p>033-531-8272</p></div>'],
            [35.340437, 129.0373755, '<div style="padding:14px; text-align : center;">북부재활용센터	<p>경상남도 양산시 중앙로 109</p>	<p>경상남도 양산시 남부동 452-12</p>	<p>055-389-1457</p></div>'],
            [35.39145384, 129.1586463, '<div style="padding:14px; text-align : center;">덕계재활용센터	<p>경상남도 양산시 웅상대로 1038</p>	<p>경상남도 양산시 주진동 115-5</p>	<p>055-364-2740</p></div>'],
            [35.96738245, 127.0000091, '<div style="padding:14px; text-align : center;">익산시 생활자원 회수센터	<p>전라북도 익산시 선화로 798</p>	<p>전라북도 익산시 부송동 157-93</p>	<p>063-840-4430</p></div>'],
            [37.64624046, 126.7056753, '<div style="padding:14px; text-align : center;">김포시재활용수집소	<p>경기도 김포시 금포로1119</p>	<p>경기도 김포시 걸포동 1-3</p>	<p>031-985-2969</p></div>'],
            [35.33667796, 126.9980464, '<div style="padding:14px; text-align : center;">농촌폐기물종합처리시설	<p>전라남도 담양군 담양읍 태봉로 228-73</p>	<p>전라남도 담양군 담양읍 삼만리 410</p></div>'],
            [37.53764656, 126.971403, '<div style="padding:14px; text-align : center;">용산구 재활용센터	<p>서울특별시 용산구 한강대로67길 22-20(한강로1가)</p>	<p>서울특별시 용산구 한강로1가 73-1</p>	<p>02-794-8665</p></div>'],
            [37.53764656, 126.971403, '<div style="padding:14px; text-align : center;">용산구 재활용센터	<p>서울특별시 용산구 한강대로67길 22-20(한강로1가)</p>	<p>서울특별시 용산구 한강로1가 73-1</p>	<p>02-794-8666</p></div>'],
            [36.63781764, 128.4616533, '<div style="padding:14px; text-align : center;">예천군생활자원회수센터	<p>경상북도 예천군 예천읍 원고개길 57-25</p>	<p>경상북도 예천군 예천읍 청복리 650</p>	<p>054-650-6175</p></div>'],
            [35.20712085, 129.0008791, '<div style="padding:14px; text-align : center;">북구재활용센터	<p>부산광역시 북구 낙동대로1762번길 57(구포동)</p>	<p>부산광역시 북구 구포동 431-2</p>	<p>051-337-1555</p></div>'],
            [35.21139928, 129.0217337, '<div style="padding:14px; text-align : center;">만덕재활용센터	<p>부산광역시 북구 만덕대로156번길 42(덕천동)</p>	<p>부산광역시 북구 덕천동 773-14</p>	<p>051-336-8882</p></div>'],
            [35.2602037751, 129.0133571, '<div style="padding:14px; text-align : center;">금곡종합재활용센터	<p>부산광역시 북구 금곡대로 589(금곡동)</p>	<p>부산광역시 북구 금곡동 681-5</p>	<p>051-362-7289</p></div>'],
            [35.21449261, 129.0097456, '<div style="padding:14px; text-align : center;">북구재활용백화점	<p>부산광역시 북구 의성로 67(덕천동)</p>	<p>부산광역시 북구 덕천동 317-1</p>	<p>051-338-8796</p></div>'],
            [35.20221416, 128.9979855, '<div style="padding:14px; text-align : center;">종합재활용센터	<p>부산광역시 북구 백양대로1091번길 19(구포동)</p>	<p>부산광역시 북구 구포동 995-1</p>	<p>051-334-0712</p></div>'],
            [35.22473299, 129.0171995, '<div style="padding:14px; text-align : center;">구포재활용마트	<p>부산광역시 북구 낙동북로663번길 85(구포동)</p>		<p>051-342-2266</p></div>'],
            [35.20217752, 128.9969637, '<div style="padding:14px; text-align : center;">구포재활용센타	<p>부산광역시 북구 낙동북로 657(구포동)</p>	<p>부산광역시 북구 구포동 1041-4</p>	<p>051-342-2420</p></div>'],
            [35.105324, 126.878223, '<div style="padding:14px; text-align : center;">광주광역시 남구 재활용선별장	<p>광주광역시 남구 효천길 25-21</p>	<p>광주광역시 남구 송하동 566-1</p>	<p>062-607-4918</p></div>'],
            [37.8266309282, 127.514863675, '<div style="padding:14px; text-align : center;">모음과나눔	<p>경기도 가평군 가평읍 가화로 75-1</p>	<p>경기도 가평군 가평읍 대곡리 233-4</p>	<p>031-581-0396</p></div>'],
            [37.94229789, 127.0563814, '<div style="padding:14px; text-align : center;">동두천시 재활용선별장	<p>경기도 동두천시 강변로 872</p>	<p>경기도 동두천시 동두천동 432-1</p>	<p>031-860-2254</p></div>'],
            [37.32612272, 127.9599504, '<div style="padding:14px; text-align : center;">원주시 중고가전가구재활용센터(1호점)	<p>강원도 원주시 치악로 1601-6(단구동)</p>	<p>강원도 원주시 단구동 724-22</p>	<p>033-735-7388</p></div>'],
            [37.3557821, 127.9444831, '<div style="padding:14px; text-align : center;">원주시 중고가전가구재활용센터(2호점)	<p>강원도 원주시 원일로 214(학성동)</p>	<p>강원도 원주시 학성동 430-8</p>	<p>033-743-0119</p></div>'],
            [36.621858177, 126.6265758575, '<div style="padding:14px; text-align : center;">홍성군 생활폐기물종합처리장	<p>충청남도 홍성군 홍북읍 홍덕서로328</p>	<p>충청남도 홍성군 홍북읍 중계리525</p>	<p>041-630-9830</p></div>'],
            [37.45017338, 126.9027728, '<div style="padding:14px; text-align : center;">금천구재활용센터	<p>서울특별시 금천구 시흥대로 182</p>	<p>서울특별시 금천구 시흥동 903-5</p>	<p>02-802-7282</p></div>'],
            [37.4737391, 126.9030804, '<div style="padding:14px; text-align : center;">금천구 지정 독산동 재활용센터	<p>서울특별시 금천구 독산로 303</p>	<p>서울특별시 금천구 독산동 990-2</p>	<p>02-863-7282</p></div>'],
            [36.7817626861, 126.455284334, '<div style="padding:14px; text-align : center;">서산시 재활용 센터(녹색가게)	<p>충청남도 서산시 시장1로 4-4, 2층</p>	<p>충청남도 서산시 동문동 903-6, 2층</p>	<p>041-664-0848</p></div>'],
            [37.58323052, 126.9363911, '<div style="padding:14px; text-align : center;">서대문구재활용센터	<p>서울특별시 서대문구 연희로 292</p>	<p>서울특별시 서대문구 홍은동 425</p>	<p>02-394-8272</p></div>'],
            [36.88718978, 127.579352, '<div style="padding:14px; text-align : center;">진천음성 광역폐기물처리장 재활용선별시설	<p>충청북도 음성군 맹동면 원중로 873-23</p>	<p>충청북도 음성군 맹동면 통동리 산18</p>	<p>043-870-0477</p></div>'],
            [37.59131729, 126.8845899, '<div style="padding:14px; text-align : center;">은평구 재활용센터	<p>서울특별시 은평구 수색동 수색로24길 16 수색동재활용집하시설</p>	<p>서울특별시 은평구 수색동 293-13</p>	<p>02-372-8272</p></div>'],
            [37.4999099, 127.1420313, '<div style="padding:14px; text-align : center;">송파구재활용센터	<p>서울특별시 송파구 문정로246 (마천동)</p>	<p>서울특별시 송파구 마천동 27</p>	<p>02-409-9859</p></div>'],
            [37.99813896, 127.0844951, '<div style="padding:14px; text-align : center;">자원새롬센터	<p>경기도 연천군 청산면 초대로 106번길 125</p>	<p>경기도 연천군 청산면 대전리 458</p>	<p>031-833-5707</p></div>'],
            [36.68256185, 127.4990738, '<div style="padding:14px; text-align : center;">청주시재활용센터	<p>충청북도 청주시 청원구 내수로 28(주성동)</p>	<p>충청북도 청주시 청원구 주성동 297-19</p>	<p>043-285-7289</p></div>'],
            [35.45362712, 126.6199411, '<div style="padding:14px; text-align : center;">고창군 재활용선별시설	<p>전라북도 고창군 아산면 인천강변로 201-95</p>	<p>전라북도 고창군 아산면 계산리 680-5</p>	<p>063-560-2892</p></div>']


        ]

        var markers = [];

        for (var i = 0; i < positionData.length; i++) {
            // 지도에 마커를 생성하고 표시한다
            var marker = new kakao.maps.Marker({
                position: new kakao.maps.LatLng(positionData[i][0], positionData[i][1]), // 마커의 좌표
                map: map // 마커를 표시할 지도 객체
            });

            var iwContent = '<div style="padding:14px; text-align : center;">백석대학교</div>';
            // 인포윈도우를 생성합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: positionData[i][2]
            });

            // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
            //infowindow.open(map, marker); 
            markers.push(marker);

            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(
                marker,
                'mouseover',
                makeOverListener(map, marker, infowindow)
            );
            kakao.maps.event.addListener(
                marker,
                'mouseout',
                makeOutListener(infowindow)
            );
        }

        // 클러스터러에 마커들을 추가합니다
        clusterer.addMarkers(markers);

        // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
        function makeOverListener(map, marker, infowindow) {
            return function () {
                infowindow.open(map, marker);
            };
        }

        // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
        function makeOutListener(infowindow) {
            return function () {
                infowindow.close();
            };
        }

        function locationLoadSuccess(pos) {
            // 현재 위치 받아오기
            var currentPos = new kakao.maps.LatLng(pos.coords.latitude, pos.coords.longitude);

            // 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
            map.panTo(currentPos);

            // 마커 생성
            var marker1 = new kakao.maps.Marker1({
                position: currentPos
            });

        };

        function locationLoadError(pos) {
            alert('위치 정보를 가져오는데 실패했습니다.');
        };

        // 위치 가져오기 버튼 클릭시
        function getCurrentPosBtn() {
            navigator.geolocation.getCurrentPosition(locationLoadSuccess, locationLoadError);
        };

        // 지도에 확대 축소 컨트롤을 생성한다
        var zoomControl = new kakao.maps.ZoomControl();

        // 지도의 우측에 확대 축소 컨트롤을 추가한다
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

        // 지도 중심 좌표 변화 이벤트를 등록한다
        kakao.maps.event.addListener(map, 'center_changed', function () {
            console.log('지도의 중심 좌표는 ' + map.getCenter().toString() + ' 입니다.');
        });

        // 지도 시점 변화 완료 이벤트를 등록한다
        kakao.maps.event.addListener(map, 'idle', function () {
            var message = '지도의 중심좌표는 ' + map.getCenter().toString() + ' 이고,' +
                '확대 레벨은 ' + map.getLevel() + ' 레벨 입니다.';
            console.log(message);
        });

        // 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
        kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
            console.log('지도에서 클릭한 위치의 좌표는 ' + mouseEvent.latLng.toString() + ' 입니다.');
        });



    </script>

</body>

</html>