<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="containerWrap">
	<div class="slideContainer"
		style="height: 346px; margin-left:100px;;padding: 15px 0px 30px 0px;">

		<!-- 슬라이드 http://img.yapen.co.kr/pension/mobile/bbdf3d599b710a21cfab30889c2d9d8a.png -->
		<div class="mainSliderLayer">
			<div class="mainSliderLayer">
				<ul class="slider">
					<li><img src="../img/boraborapack.jpg" title="할인 패키지"
						alt="가평 모닝필하우스펜션" class="pensionImg"></li>
					<li><img src="../img/slider2.jpg" alt="횡성 숲속의초록별펜션"
						class="pensionImg"></li>
					<li><img src="../img/slider3.jpg" alt="가평 블루펜션"
						class="pensionImg"></li>
					<li><img src="../img/slider4.jpg" alt="가평 곰사냥을떠나자펜션"
						class="pensionImg"></li>
				</ul>
			</div>
		</div>

		<!-- 두번째 슬라이드 -->
		<div class="subSliderLayer">
			<ul class="subSlider">
				<li><img src="../img/event1.png" title="할인 패키지"
					alt="가평 모닝필하우스펜션" class="pensionImg"></li>
				<li><img src="../img/event2.png" alt="횡성 숲속의초록별펜션"
					class="pensionImg"></li>
				<li><img src="../img/event3.png" alt="가평 블루펜션"
					class="pensionImg"></li>
			</ul>
		</div>
		<!-- 2s end -->
	</div>
	<!-- sc end -->

	<div class="mainContainer"
		style="height: 250px; padding: 15px 0px 30px 0px; display: inline-block;">
		<!-- 추천 펜션 시작 -->
		<!-- 신규 입점 펜션 시작 -->

		<div style="float: left; margin-left: 380px;">
			<img src="../img/snap.png" style="height: 30px;"> <img
				src="http://img.yapen.co.kr/pension/images/web/ad_icon.png" alt="AD"
				class="adIconImage">


		</div>

		<div class="moreSnap">
			  <a href="/SpringProject/template/snapPage.do"> <span
				class="moreBtn">more</span>
			</a>
		</div>
		<br>
		<div class="mainContainer" style="height: 150px;">
			<div class="mainLayer">
				<ul class="newPackage">
					<li><img src="../img/1.jpg" title="할인 패키지" alt="snapPoto"
						class="pensionImg"></li>
					<li><img src="../img/2.jpg" alt="횡성 숲속의초록별펜션"
						class="pensionImg"></li>
					<li><img src="../img/3.jpg" alt="가평 블루펜션" class="pensionImg"></li>
					<li><img src="../img/4.jpg" alt="가평 곰사냥을떠나자펜션"
						class="pensionImg"></li>
					<li><img src="../img/5.jpg" title="할인 패키지" alt="가평 모닝필하우스펜션"
						class="pensionImg"></li>
					<li><img src="../img/6.jpg" alt="횡성 숲속의초록별펜션"
						class="pensionImg"></li>
					<li><img src="../img/7.jpg" alt="가평 블루펜션" class="pensionImg"></li>
					<li><img src="../img/8.jpg" alt="가평 곰사냥을떠나자펜션"
						class="pensionImg"></li>
					<li><img src="../img/9.jpg" title="할인 패키지" alt="가평 모닝필하우스펜션"
						class="pensionImg"></li>
					<li><img src="../img/10.jpg" alt="횡성 숲속의초록별펜션"
						class="pensionImg"></li>
					<li><img src="../img/11.jpg" alt="가평 블루펜션" class="pensionImg"></li>
					<li><img src="../img/12.jpg" alt="가평 곰사냥을떠나자펜션"
						class="pensionImg"></li>
					<li><img src="../img/13.jpg" title="할인 패키지" alt="가평 모닝필하우스펜션"
						class="pensionImg"></li>
					<li><img src="../img/14.jpg" alt="횡성 숲속의초록별펜션"
						class="pensionImg"></li>
					<li><img src="../img/15.jpg" alt="가평 블루펜션" class="pensionImg"></li>
					<li><img src="../img/16.jpg" alt="가평 곰사냥을떠나자펜션"
						class="pensionImg"></li>
					<li><img src="../img/17.jpg" alt="가평 곰사냥을떠나자펜션"
						class="pensionImg"></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- 추천 펜션 시작 -->

<div class="mainContainer">
	<div class="mainLayer">
		<div class="mainLayerTitle">
			<img src="../img/pppack.png" style="height: 30px;"> <img
				src="http://img.yapen.co.kr/pension/images/web/ad_icon.png" alt="AD"
				class="adIconImage">
			<c:if test="${schChk eq 'y'}">
				<div align="center" style="color: #FF6C6C; font-size: 35px;">총
					검색결과 : ${mainList.size()}</div>
			</c:if>
		</div>
		<div
			style="border: 1px solid white; width: 120%; margin-left: -10%; position: relative;">
			<c:forEach items="${mainList}" var="mainListDTO" varStatus="i">
				<%-- <c:if test="${i.count%101 eq 0}">
								<br>
							</c:if>	 --%>
				<table class="pensionMainTbl" cellpadding="0" cellspacing="0"
					style="border: 1px solid white; width: 20%; display: inline-block;">
					<tbody>
						<tr>
							<td class="bestTD"
								onclick="location.href='/SpringProject/template/boardEnter.do?package_seq=${mainListDTO.package_seq}'"><img
								src="http://localhost:8080/SpringProject/packageImg/${mainListDTO.package_image0}"
								alt="가평 모닝필하우스펜션" class="pensionImg">
								<div class="infoLayer">
									<div class="pensionName">${mainListDTO.package_name}</div>
									<div class="price">${mainListDTO.package_price}원</div>
								</div> <span class="percent">${mainListDTO.hotel_grade}</span> <img
								src="http://img.yapen.co.kr/pension/images/web/discount_tag_icon.png"
								alt="할인률" class="percentImage"></td>
							<%-- <c:if test:x --%>
						</tr>
					</tbody>
				</table>
			</c:forEach>
		</div>
	</div>
</div>


<!-- Pension Tip Part Start -->

<div class="mainContainer"
	style="background-color: #F4F4F4; height: 415px;">
	<div class="mainLayer">
		<div class="mainLayerTitle">
			<img
				src="http://img.yapen.co.kr/pension/images/web/comment_title.png"
				alt="여행 후기">
		</div>
		<div id="tripAfter"
			style="margin-top: 25px; position: relative; height: 315px; width: 1200px; overflow: hidden;">
			<div style="width: 1300px; overflow: hidden; position: relative;"
				id="tipSliderLayer">
				<ul class="tripAfterSlide">
				<li>
					<c:forEach var="boardDto" items="${boardList }" varStatus="i">

						<%-- <c:if test="${i/4==1}">
							<li>
						</c:if>  --%>
						<div class="mainTipLayer">
							<div class="tipTitle"
								onclick="javascript:location.href='/SpringProject/board/freeboardAfter.do';"
								style="font-size: 16px;">${boardDto.subject }</div>
							<div
								onclick="javascript:location.href='/SpringProject/board/freeboardAfter.do';"
								class="tipContent">${boardDto.ir1 }</div>
							<div
								onclick="javascript:location.href='/SpringProject/board/freeboardAfter.do'"
								class="tipUser">
								<img
									src="http://img.yapen.co.kr/pension/images/web/user_image_icon.png">
								<label style="font-size: 16px;">
									&nbsp;&nbsp;&nbsp;${boardDto.hname } </label>
							</div>
						</div>
						
<%-- 						<c:if test="i==${rownum}">
							</li>
						</c:if>
						<c:if test="(i+4)/4==0">
							</li>
						</c:if> --%>
					</c:forEach>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
