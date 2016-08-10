<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../css/normalize.css">
<link rel="stylesheet" href="../css/tabs.css">
<script type="text/javascript"
   src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALGI0fege3ntZ38Sf4hUiBV50X4seOpJ4&callback=initMap">
</script>
<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
<script type="text/javascript">
   function initialize() {
      var mapLocation = new google.maps.LatLng('${packageDto.hotel_Location_lat }', '${packageDto.hotel_Location_long }'); // 지도에서 가운데로 위치할 위도와 경도
      var markLocation = new google.maps.LatLng('${packageDto.hotel_Location_lat }', '${packageDto.hotel_Location_long }'); // 마커가 위치할 위도와 경도
   
      var mapOptions = {
         center : mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
         zoom : 18, // 지도 zoom단계
         mapTypeId : google.maps.MapTypeId.ROADMAP
      };
      var map = new google.maps.Map(document.getElementById("tab3"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
      mapOptions);

      var size_x = 60; // 마커로 사용할 이미지의 가로 크기
      var size_y = 60; // 마커로 사용할 이미지의 세로 크기

      // 마커로 사용할 이미지 주소
      var image = new google.maps.MarkerImage(
            'http://www.larva.re.kr/home/img/boximage3.png',
            new google.maps.Size(size_x, size_y), '', '',
            new google.maps.Size(size_x, size_y));

      var marker;
      marker = new google.maps.Marker({
         position : markLocation, // 마커가 위치할 위도와 경도(변수)
         map : map,
         icon : image, // 마커로 사용할 이미지(변수)
         //             info: '말풍선 안에 들어갈 내용',
         title : '서대전네거리역이지롱~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
      });

      var content = "이곳은 서대전네거리역이다! <br/> 지하철 타러 가자~"; // 말풍선 안에 들어갈 내용

      // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
      var infowindow = new google.maps.InfoWindow({
         content : content
      });

      google.maps.event.addListener(marker, "click", function() {
         infowindow.open(map, marker);
      });

   }
   google.maps.event.addDomListener(window, 'load', initialize);
</script>
<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->

<c:forEach var="packageDto" items="${list }">
<div class="tabContaier"  style="border:1px solid red;">
<div id="emp_info" style="float: left; width: 20%">
<img alt="" src="/bora/storage/${packageDto.employee_image }" style="width: 100px; height: 100px">
</div>
<div style="float: left; width: 20%; height: 100px; " >
	<p style="font-size: 18px;">패키지코드</p>
	<p style="font-size: 18px;">담당자</p>
	<p style="font-size: 18px;">부서 대표번호</p>
	<p style="font-size: 18px;">이메일</p>
</div>
<div style="float: left; width: 50%; ">
	<p style="font-size: 18px;">${packageDto.package_Code } </p>
	<p style="font-size: 18px;">${packageDto.employee_name }</p>
	<p style="font-size: 18px;">${packageDto.department_Tel }</p>
	<p style="font-size: 18px;">${packageDto.email1 }</p>
</div>
<div style="clear:both;"></div>
	<ul>
    	<li><a class="active" href="#tab1">여행 일정표</a></li>
    	<li><a href="#tab2">호텔 정보</a></li>
    	<li><a href="#tab3">호텔 위치</a></li>
    	<li><a href='#tab4'>유의 사항</a></li>
    </ul><!-- //Tab buttons -->
    <div class="tabDetails">
    	<div id="tab1" class="tabContents" style="display: block;">
            <img alt="" src="../img/일정표.png" style="width: 100%;">
        </div><!-- //tab1 -->
    	<div id="tab2" class="tabContents" style="display: none; border:1px solid blue;">
        	<span style="font-size: 20px; padding: 20%" >${packageDto.hotel_Name } : ${packageDto.hotel_Name_Eng }</span>
        	
        	<div id="h_img" style="border: solid red 1px; margin-top: 5%">
        	<img alt="" src="/bora/storage/${packageDto.hotel_Image0 }" width="245" height="200">
        	<img alt="" src="/bora/storage/${packageDto.hotel_Image1 }" width="245" height="200">
        	<img alt="" src="/bora/storage/${packageDto.hotel_Image2 }" width="245" height="200">
        	</div>
        	<div id="h_content" style="border: solid green 1px; margin-top: 5%; height: 50%;">
        	<!-- <div id="h_content_left" style="float: left; border: solid 1px yellow; width: 20%"> -->
        	</div> 
        	<div id="h_content_right" style="display:inline-block; border: solid 1px black; ">
        	<p style="font-size: 18px;">주소 : <span style="font-size: 18px;">${packageDto.hotel_Address }</span></p>	
        	<p style="font-size: 18px;">전화 : <span style="font-size: 18px;">${packageDto.hotel_TelNum }</span></p>	
        	<p style="font-size: 18px;">팩스 : <span style="font-size: 18px;">${packageDto.hotel_FaxNum }</span></p>	
        	<p style="font-size: 18px;">홈페이지 : <span style="font-size: 18px;">${packageDto.hotel_Homepage }</span></p>	
        	<p style="font-size: 18px;">층수/객실수 : <span style="font-size: 18px;">${packageDto.hotel_Floors_Rooms }</span></p>	
        	<p style="font-size: 18px;">호텔등급 : <span style="font-size: 18px;">${packageDto.hotel_Grade }</span></p>	
        	<p style="font-size: 18px;">교통편 : <span style="font-size: 18px;">${packageDto.hotel_Transportation }</span></p>	
        	<p style="font-size: 18px;">호텔소개 : <span style="font-size: 18px;">${packageDto.hotel_Introduce }</span></p>	
        	<p style="font-size: 18px;">부대시설 : <span style="font-size: 18px;">${packageDto.hotel_Facilities }</span></p>	
        	</div>
        	
        	<div id="r_img" style=" margin-top: 5% ; width:100%; ">
        	<img alt="" src="../storage/객실1.jpg" width="245" height="200">
        	<img alt="" src="../storage/객실2.jpg" width="245" height="200">
        	<img alt="" src="../storage/객실3.jpg" width="245" height="200">
        	</div>
        
        	</div>
        </div><!-- //tab2 -->
    	<div id="tab3" class="tabContents" style="display: none;   
    	margin: 0%; padding:0px; border: 1px solid black; width: 100%; height: 500px; position: relative; ">
        	
        </div><!-- //tab3 -->
        <div id="tab4" class="tabContents" style="display: block;">
        	<img alt="" src="../img/유의사항.png" style="width: 100%;">
        </div>
    </div><!-- //tab Details -->
	<p><a href="https://github.com/shekhardesigner/EasyTabs/">Fork on Github</a></p>
	</c:forEach>
	<c:if test="${sessionScope.department_code} eq '100'">
	<div align="center">
	<input type ="button" value="승인하기">&nbsp; &nbsp; <input type ="button" value="취소하기">
	</div>
	</c:if>
</div><!-- //Tab Container -->

<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".tabContents").hide(); // Hide all tab content divs by default
		$(".tabContents:first").show(); // Show the first div of tab content by default
		
		$(".tabContaier ul li a").click(function(){ //Fire the click event
			
			var activeTab = $(this).attr("href"); // Catch the click link
			$(".tabContaier ul li a").removeClass("active"); // Remove pre-highlighted link
			$(this).addClass("active"); // set clicked link to highlight state
			$(".tabContents").hide(); // hide currently visible tab content div
			$(activeTab).fadeIn(); // show the target tab content div by matching clicked link.
			
			return false; //prevent page scrolling on tab click
		});
	});
</script>	
			