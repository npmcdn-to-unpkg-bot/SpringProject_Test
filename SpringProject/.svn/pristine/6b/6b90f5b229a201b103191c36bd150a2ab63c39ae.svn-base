<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- 지역노출 메뉴--------------------------------------------------------------------------------------- -->
<div class="reserveLayer" style="display: block;">
	<ul>
		<li style="width: 250px;" class="first-li"><img
			src="http://image2.yanolja.com/pension/reserveLocation.png" alt="지역"
			class="first-img">
			<div id="schLocationText">가평</div> <input type="hidden"
			name="schLocation" id="schLocation" value="가평"> <input
			type="hidden" name="schLocationCode" id="schLocationCode"
			value="1.001001"> <img
			src="http://image2.yanolja.com/pension/leftDownArrow.png"
			alt="펼치기/닫기" class="arrowToggle last-img"></li>


		<li style="width: 250px;" class="second-li"><img
			src="http://image2.yanolja.com/pension/reserveCalendar.png" alt="날짜"
			class="first-img">
			<div id="schStartDateText">2016-07-01 (1박2일)</div> <input
			type="hidden" name="schStartDate" id="schStartDate"
			value="2016-07-01"> <input type="hidden" name="schEndDate"
			id="schEndDate" value="2016-07-02"> <img
			src="http://image2.yanolja.com/pension/leftDownArrow.png"
			alt="펼치기/닫기" class="arrowToggle last-img"></li>

		<!-- <li style="width: 170px;" class="three-li"><img
			src="http://image2.yanolja.com/pension/reservePeople.png" alt="인원"
			class="first-img">
			<div id="schPeopleText">2명</div> <input type="hidden"
			name="schPeople" id="schPeople" value="2"> <img
			src="http://image2.yanolja.com/pension/leftDownArrow.png"
			alt="펼치기/닫기" class="arrowToggle last-img"></li>
		<li style="width: 260px;" class="four-li"><img
			src="http://image2.yanolja.com/pension/reserveEtc.png" alt="기타"
			class="first-img">
			<div>테마 &amp; 가격선택</div> <img
			src="http://image2.yanolja.com/pension/leftDownArrow.png"
			alt="펼치기/닫기" class="arrowToggle last-img"></li> -->
		<li style="width: 162px; background-color: #FFFFF;" class="last-li">
			<img src="http://image2.yanolja.com/pension/reserveSearch.png"
			alt="검색" class="first-img">
			<div>빈방찾기</div>
		</li>
	</ul>
</div>

<!-- 지역노출 --------------------------------------------------------------------------------------- -->
<div class="revLocLayer" style="display: block;">
	<table class="revLocTbl">
		<tbody>
			<tr>
				<th><label style="margin-left: 15px; color: red;">1성급 호텔 <span>(${first})</span></label>
				</th>
				<td>
				  <c:forEach items="${firstGradeList}" var="mainListDTO">
					<ul>
						<li  style="color: red;">${mainListDTO.hotel_name}<span></span></li>

					</ul>
				  </c:forEach>
				</td>
			</tr>
			
		 	<tr>
				<th><label style="margin-left: 15px;">2성급 호텔 <span>(${two})</span></label>
				</th>
				<td>
				  <c:forEach items="${twoGradeList}" var="mainListDTO">
					<ul>
						<li onclick="selectRevLoc('가평', '1.001001');">${mainListDTO.hotel_name} <span></span></li>

					</ul>
				  </c:forEach>
				</td>
			</tr>
			
			<tr>
				<th><label style="margin-left: 15px; color: red;">3성급 호텔 <span>(${three})</span></label>
				</th>
				<td>
				  <c:forEach items="${threeGradeList}" var="mainListDTO">
					<ul>
						<li style="color: red;" onclick="selectRevLoc('가평', '1.001001');">${mainListDTO.hotel_name} <span></span></li>

					</ul>
				  </c:forEach>
				</td>
			</tr>
			
			<tr>
				<th><label style="margin-left: 15px;">4성급 호텔 <span>(${four})</span></label>
				</th>
				<td>
				  <c:forEach items="${fourGradeList}" var="mainListDTO">
					<ul>
						<li onclick="selectRevLoc('가평', '1.001001');">${mainListDTO.hotel_name} <span></span></li>

					</ul>
				  </c:forEach>
				</td>
			</tr>
			
			<tr>
				<th><label style="margin-left: 15px; color: red;">5성급 호텔 <span>(${five})</span></label>
				</th>
				<td>
				  <c:forEach items="${fiveGradeList}" var="mainListDTO">
					<ul>
						<li style="color: red;" onclick="selectRevLoc('가평', '1.001001');">${mainListDTO.hotel_name} <span></span></li>

					</ul>
				  </c:forEach>
				</td>
			</tr>
		</tbody>
	</table>
	<img src="/SpringProject/img/to-top.png" alt="닫기" class="slideCloseBtn">
</div>

<!-- 달력-------------------------------------------------------------- -->


 <div class="revCalLayer hasDatepicker" id="revCalLayer"
	style="display: block;">
	<!-- <table class="revCalTbl">
		<tbody>
			<tr>
				<th>숙박일수</th>
				<td><select name="revDay" id="revDay">
						<option value="1">1박 2일</option>
						<option value="2">2박 3일</option>
						<option value="3">3박 4일</option>
						<option value="4">4박 5일</option>
						<option value="5">5박 6일</option>
						<option value="6">6박 7일</option>
						<option value="7">7박 8일</option>
						<option value="8">8박 9일</option>
						<option value="9">9박 10일</option>
				</select></td>
			</tr>
		</tbody>
	</table> -->
	<img src="/SpringProject/img/to-top.png" alt="닫기" class="slideCloseBtn2">
	<div
		class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all ui-datepicker-multi-4 ui-datepicker-multi"
		style="width: 100%; display:inline-block; align:center;">
		<div  style="width: 130%;">
		<div class="ui-datepicker-group ui-datepicker-group-first"  >
			<div
				class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-left">
				<div class="ui-datepicker-title">
					<span class="ui-datepicker-month">7월</span>&nbsp;<span
						class="ui-datepicker-year">2016년</span>
				</div>
			</div>
			<table class="ui-datepicker-calendar">
				<thead>
					<tr>
						<th class="ui-datepicker-week-end"><span title="일요일"><label
								style="color: #FF6559;">일</label></span></th>
						<th><span title="월요일">월</span></th>
						<th><span title="화요일">화</span></th>
						<th><span title="수요일">수</span></th>
						<th><span title="목요일">목</span></th>
						<th><span title="금요일">금</span></th>
						<th class="ui-datepicker-week-end"><span title="토요일"><label
								style="color: #66A5EE;">토</label></span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today"
							data-handler="selectDay" data-event="click" data-month="6"
							data-year="2016"><a
							class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
							href="#">1</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">2</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">3</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">4</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">5</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">6</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">7</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">8</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">9</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">10</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">11</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">12</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">13</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">14</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">15</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">16</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">17</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">18</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">19</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">20</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">21</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">22</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">23</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">24</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">25</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">26</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">27</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">28</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="6" data-year="2016"><a class="ui-state-default"
							href="#">29</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">30</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="6" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">31</a></td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="ui-datepicker-group ui-datepicker-group-middle">
			<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix">
				<div class="ui-datepicker-title">
					<span class="ui-datepicker-month">8월</span>&nbsp;<span
						class="ui-datepicker-year">2016년</span>
				</div>
			</div>
			<table class="ui-datepicker-calendar">
				<thead>
					<tr>
						<th class="ui-datepicker-week-end"><span title="일요일"><label
								style="color: #FF6559;">일</label></span></th>
						<th><span title="월요일">월</span></th>
						<th><span title="화요일">화</span></th>
						<th><span title="수요일">수</span></th>
						<th><span title="목요일">목</span></th>
						<th><span title="금요일">금</span></th>
						<th class="ui-datepicker-week-end"><span title="토요일"><label
								style="color: #66A5EE;">토</label></span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">1</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">2</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">3</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">4</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">5</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">6</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">7</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">8</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">9</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">10</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">11</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">12</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">13</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">14</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">15</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">16</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">17</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">18</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">19</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">20</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">21</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">22</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">23</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">24</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">25</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">26</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">27</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="7" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">28</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">29</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">30</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="7" data-year="2016"><a class="ui-state-default"
							href="#">31</a></td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					</tr>
					<tr>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="ui-datepicker-group ui-datepicker-group-middle">
			<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix">
				<div class="ui-datepicker-title">
					<span class="ui-datepicker-month">9월</span>&nbsp;<span
						class="ui-datepicker-year">2016년</span>
				</div>
			</div>
			<table class="ui-datepicker-calendar">
				<thead>
					<tr>
						<th class="ui-datepicker-week-end"><span title="일요일"><label
								style="color: #FF6559;">일</label></span></th>
						<th><span title="월요일">월</span></th>
						<th><span title="화요일">화</span></th>
						<th><span title="수요일">수</span></th>
						<th><span title="목요일">목</span></th>
						<th><span title="금요일">금</span></th>
						<th class="ui-datepicker-week-end"><span title="토요일"><label
								style="color: #66A5EE;">토</label></span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">1</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">2</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">3</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">4</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">5</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">6</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">7</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">8</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">9</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">10</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">11</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">12</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">13</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">14</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">15</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">16</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">17</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">18</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">19</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">20</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">21</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">22</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">23</a></td>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #66A5EE;">24</a></td>
					</tr>
					<tr>
						<td class=" ui-datepicker-week-end " data-handler="selectDay"
							data-event="click" data-month="8" data-year="2016"><a
							class="ui-state-default" href="#" style="color: #FF6559;">25</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">26</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">27</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">28</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">29</a></td>
						<td class=" " data-handler="selectDay" data-event="click"
							data-month="8" data-year="2016"><a class="ui-state-default"
							href="#">30</a></td>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					</tr>
					<tr>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
						<td
							class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="ui-datepicker-row-break"></div>
	</div>
	</div>
</div>

<!-- ////////////////////////////////////////////////////보라카이 팁///////////////////////////////// -->
<div class="mainTip" style="width:80%; display: block;">
	<ul>
	   <li>
		 <img src="http://localhost:8080/SpringProject/img/boracayTip.jpg"/>
	   </li>	
 	</ul>
 </div>   