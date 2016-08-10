<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../css/freeBoard.css" />
<!-- page 이동 -->

<script type="text/javascript">
$(document).ready(function(){  
	 <c:forEach var="boardDto" items="${replayList}" varStatus="status">
		     var html = '<div class="reply_list">'; 
		      html += '<ul class="replyOpen" style="background-color:#FF9090;">'; 
		      html += '<li><b>작성자</b> : '+'${boardDto.hname}' +'</li>'; 
		      html += '</ul>'; 
		      html += '<ul class="replyOpen" style="height:30px;">'; 
		      html += '<li style="text-align:left; background-color: #FFC6C6;">'+'${boardDto.content}'+'</li>'; 
		      html += '</ul>'; 
		      html += '</div>'; 
		      $("#result${status.count}").append($(html));     
	  </c:forEach>	      
})
</script>

<script>
// ajax 댓글 저장 이벤트
function AjaxEx(seq,count){
	/*  var hname = document.getElementById('cwriter').value;
	 var content =document.getElementById('cmt').value; */
     var hname = $('#cwriter').val();
	 var content = $('#cmt').val();
	 alert("count?" + count);
	 $.ajax({
		 url : "/SpringProject/template/checkfreeboard.do",
		 type : "get",
		 dataType : "json",
		 contentType: 'application/json',
		 data: {"hname":hname,"content":content,"seq":seq},
		 success :function(data){
			  var html = '<div class="reply_list">'; 
			      html += '<ul class="replyOpen" style="background-color:#FF9090;">'; 
			      html += '<li><b>작성자</b> : '+data.hname +'</li>'; 
			      html += '</ul>'; 
			      html += '<ul class="replyOpen" style="height:30px;">'; 
			      html += '<li style="text-align:left; background-color: #FFC6C6;">'+ data.content +'</li>'; 
			      html += '</ul>'; 
			      html += '</div>'; 
			      $("#result"+count).append($(html));  
			},
		 error : function(request) {
		 alert("실패");
		 }
	   });
	 }

	function boardPaging(pg) {
		if ('${map.value}' == '')
			location.href = "/SpringProject/board/freeboardAfter.do?pg=" + pg;
		else
			location.href = "/SpringProject/board/boardSearch.do?pg=" + pg
					+ "&type=${map.type}&value=${map.value}";
	}

	function checkBoardSearch() {
		if (document.boardSearchForm.value.value == "")
			alert("검색어를 입력하세요");
		else
			document.boardSearchForm.submit();
	}
	
/* subject 클릭시 Sliding */
	function openTip(here) {
		var isopen = $("#isopen_" + here).val();

		if (isopen == "0") {
			$("#tipView_" + here).show();
			$("#tipViewtd_" + here).show();
			$("#isopen_" + here).val("1");
		} else {
			$("#tipView_" + here).hide();
			$("#tipViewtd_" + here).hide();
			$("#isopen_" + here).val("0");
		}
	}
</script>



<div id="container" class="clear">
	<div id="content">
		<div class="banner_promise">
			<div class="inner_right"></div>
		</div>

		<div class="board_border">
			<div class="board_title_list board_text1 ">
				<h3>자유게시판</h3>
				<ul class="list_view_all clear">
					<li><a href="/SpringProject/board/freeboardAfter.do" class="select_bold bg_list_f">전체글</a><span
						class="board_bar">|</span></li>
					<li><a href="/SpringProject/board/freeboardAfterHit.do" class=" bg_list_l">인기글</a></li>
				</ul>
				<p class="reply_donation">수많은 게시판 중에 어느 곳에 써야 할지 고민된다면 바로 이곳,
					자유수다방에 자유롭게 글을 남겨주세요.</p>
			</div>

			<div class="board_list">
				<form name="orderForm" method="get" action="/free">
					<div class="board_top_etc">
						<div class="border_top_content"></div>
						<div class="board_array">
							<ul>
								<li><a href="/free?order=1&amp;hot=&amp;sc=&amp;sq="><b>최신순</b></a><span
									class="bar"></span></li>
								<li><a href="/free?order=2&amp;hot=&amp;sc=&amp;sq=">댓글순</a><span
									class="bar"></span></li>

								<li>
									<button class="ir btn_board_write" type="button"
										onclick="location.href='../board/boardWriteForm.do'"></button>
								</li>
							</ul>
						</div>
					</div>
				</form>

				<table border="0" cellpadding="0" cellspacing="0" class="list">
					<thead>
						<tr>
							<th colspan="3" class="title">제목</th>
							<th class="hit">조회수</th>
							<th class="nickname">글쓴이</th>
							<th class="date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="boardDto" items="${list}" varStatus="status">
							<tr>
								<td class="f11 number notice_title"><c:if
										test="${boardDto.pseq==0 }">${boardDto.seq }</c:if></td>
								<td class="notice_title" colspan="2" style="cursor: pointer;">
									<a href="javascript:openTip(${boardDto.seq })" onclick="/SpringProject/board/hitcheck.do">
										${boardDto.subject } </a>
								</td>
								<td class="notice f11">${boardDto.hit }</td>
								<td class="notice f11">${boardDto.hname }</td>
								<td class="notice f11">${boardDto.logtime }</td>
							</tr>
							<tr>
							<tr id="tipView_${boardDto.seq }" style="display: none;">
								<td colspan="7" id="tipViewtd_${boardDto.seq }">
									<div id="isopen_${boardDto.seq }" style="magin: auto;">${boardDto.ir1 }</div>
									<!-- 댓글 목록 불러오기 --> 
										<br>
										<div id="result${status.count}"></div>
										<br>
									 <!-- 글 쓰는 공간 -->
									<div>
									<form action="" method="get" name="checkfreeboard">
										<div>
									
											글쓴이 : <input type="text" name="hname" id="cwriter" value="${hname }"
												placeholder="${hname }" readonly style="width: 15%; background-color: gray;" /> 댓글 :
											<input type="text" name="content" id="cmt" style="width: 50%" /> 
											<input type="button" value="입력" id="createbt" onclick="AjaxEx(${boardDto.seq},${status.count});"/>
										</div>
									</form>
									</div>
									<div id="cmtTarget"></div> <!-- 글쓰기&댓글 end -->
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="board_number_list">
					${paging.pagingHTML }
					<ul class="board_needs">
						<li><a href="http://policy.yanolja.com?t=community"
							target="_blank">후기게시판 운영원칙</a></li>
					</ul>
				</div>

				<div class="board_search">
					<form id="boardSearchForm" name="searchForm" method="" action="/SpringProject/board/boardSearch.do">
						<select name="type">
							<option value="subject">제목</option>
							<option value="hname">작성자</option>
						</select> 
						<input type="text" name="value">
						<button class="ir btn_search" onclick="checkBoardSearch()">
							<span>검색</span>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--// content -->
</div>