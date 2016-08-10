<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
    function openAnswer(here){
        var isopen = $("#isopen_"+here).val();
        if(isopen == "0"){
            $("#title_"+here).css({'font-weight':'bold'});
            $("#answer_"+here).show();
            $("#td_"+here).show();
            $("#isopen_"+here).val("1");
        }else{
            $("#title_"+here).css({'font-weight':'normal'});
            $("#answer_"+here).hide();
            $("#td_"+here).hide();
            $("#isopen_"+here).val("0");
        }
    }
   
   	function boardPaging(pg) {
		if ('${map.value}' == '')
			location.href = "/SpringProject/template/notice.do?pg="+pg;
	}
</script>

<div class="destinations">
    <div class="search_reservation_list">
        <div class="wrap_1000"  style="margin-top:5%;">
            <img src="http://image2.yanolja.com/pension/yapen/web/noticeText.png" alt="공지사항" />
            <br><br>
            <div class="listbox">
                <table cellspacing="1" border="1" class="tbl_type">
                    <colgroup>
                        <col width="200">
                        <col>
                        <col width="150">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">작성자</th>
                            <th scope="col">제목</th>
                            <th scope="col">등록일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="noticeDto" items="${list }">
                <tr>
                   <td>오보라카이</td>
                   <td class="inq_subject"><a href="javascript:openAnswer('${noticeDto.notice_seq}')" id="title_${noticeDto.notice_seq }">${noticeDto.subject }</a></td>
                   <td>${noticeDto.logtime }</td>
               </tr>
               <tr class="answer" id="answer_${noticeDto.notice_seq }" style="display:none">
                   <td colspan="3" id="td_${noticeDto.notice_seq }" style="display:none">
                       <input type="hidden" id="isopen_${noticeDto.notice_seq }" value="0" />
                       <div class="q_ct">
                        ${noticeDto.content }   
						</div>
                   </td>
               </tr>
               </c:forEach>
                    </tbody>
                </table>

                <!---start-pagenation---->
                <div class="destination-pagenate" style="magin:auto;" align="center">          
                    	${paging.pagingHTML }
                </div>
            </div>
        </div>
    </div>
</div>       
