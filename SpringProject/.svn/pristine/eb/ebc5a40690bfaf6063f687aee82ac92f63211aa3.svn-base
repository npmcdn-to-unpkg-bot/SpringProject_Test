<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../css/freeBoard.css" />
<!-- page 이동 -->

<script>
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
</script>

<!-- subject 클릭시 Sliding -->
<script>
	/* $(document).ready(function(){
	 $(".notice_title").click(function(){
	 $("#tipView_"+${boardDto.seq }).hide();
	 });
	 }); */
	/*
	 $('.btn_big').find('span').click(function(){
	 location.href='pensionTip/writeTip?ypIdx=21438';
	 });
	 });
	 $(document).ready(function(){
	 openTip('4461');
	 });	    */
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
<style>
#panel, #flip {
	padding: 5px;
	text-align: center;
}

#panel {
	padding: 25px;
	display: none;
}
</style>

<div id="container" class="clear">
	<div id="content">
		<div class="banner_promise">
			<div class="inner_right"></div>
		</div>

		<div class="board_border">
			<div class="board_title_list board_text1 ">
				<h3>자유게시판</h3>
				<ul class="list_view_all clear">
					<li><a href="/free" class="select_bold bg_list_f">전체글</a><span
						class="board_bar">|</span></li>
				</ul>
				<p class="reply_donation" style="color: red;">이 게시판은 Q&A 게시판
					입니다. 질문 사항을 남겨주세요</p>
			</div>

			<div class="board_list">
				<form name="orderForm" method="get" action="/free">
					<div class="board_top_etc">
						<div class="border_top_content"></div>
						<div class="board_array">
							<ul>
								<li>
									<button class="ir btn_board_write" type="button"
										onclick="location.href='../qnaboard/boardWriteForm.do'"></button>
								</li>
							</ul>
						</div>
					</div>
				</form>

				<table border="0" cellpadding="0" cellspacing="0" class="list">
					<thead>
						<tr>
							<th colspan="3" class="title">제목</th>
							<th class="nickname">글쓴이</th>
							<th class="date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="boardDto" items="${list }">
							<tr>
								<td class="f11 number notice_title"><c:if
										test="${boardDto.pseq==0 }">${boardDto.seq }</c:if></td>
								<td class="notice_title" colspan="2" style="cursor: pointer;">
									<a href="javascript:openTip(${boardDto.seq })">
										${boardDto.subject } </a>
								</td>
								<td class="notice f11">${boardDto.hname }</td>
								<td class="notice f11">${boardDto.logtime }</td>
							</tr>
							<tr>
							<tr id="tipView_${boardDto.seq }" style="display: none;">
								<td colspan="7" id="tipViewtd_${boardDto.seq }">
									<div id="isopen_${boardDto.seq }" style="magin: auto;">${boardDto.ir1 }</div>
									<!-- 댓글 목록 불러오기 -->
									<div id="result"></div> <!-- 글 쓰는 공간 -->
									<div>
										<form action="" method="get" name="check">
											<div>

												글쓴이 : <input type="text" name="name" id="cwriter"
													value="${hname }" placehoder="${hname }" readonly
													style="width: 10%" /> 댓글 : <input type="text"
													name="content" id="cmt" style="width: 50%" /> <input
													type="button" value="입력" id="createbt" onclick="AjaxEx();" />
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
							target="_blank">커뮤니티 운영원칙</a></li>
					</ul>
				</div>

				<div class="board_search">
					<form id="boardSearchForm" name="searchForm" method=""
						action="/SpringProject/board/boardSearch.do">
						<select name="type">
							<option value="subject">제목</option>
							<option value="id">작성자</option>
						</select> <input type="text" name="value">
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

