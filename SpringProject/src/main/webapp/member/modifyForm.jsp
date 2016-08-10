<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="../css/modify.css" type="text/css" rel="stylesheet">
<link rel='stylesheet' href='../css/reg_form_css.css' type='text/css'/>
<script type="text/javascript">
$( document ).ready( function () {
    $( "#modifyForm" ).validate( {
       rules: {
          hname: {
             required: true,
             minlength: 2
          },
          firstname: "required",
          lastname: "required",
          
          pwd: {
             required: true,
             minlength: 5
          },
          cellphone: {
             required: true,
             minlength: 10,
             maxlength: 15
          },
       },
       messages: {
          firstname: "Please enter your firstname",
          lastname: "Please enter your lastname",
          hname: {
             required: "이름을 입력해 주세요",
             minlength: "적어도 2글자 이상 입력해 주세요"
          },
          pwd: {
             required: "Please provide a password",
             minlength: "Your password must be at least 5 characters long"
          },
          cellphone: {
             required: "Please enter a vaild phone number",
             minlength: "Your phone must be at least 10 number long",
             maxlength: "Your phone must be not more than 15 number short"
          },
       },
       errorPlacement: function ( error, element ) {
          error.addClass( "error" );
          error.insertAfter( element.parent() );
       },
       highlight: function ( element, errorClass, validClass ) {
          $( element ).parents( "#firstname" ).addClass( errorClass );
       },
       unhighlight: function (element, errorClass, validClass) {
          $( element ).parents( "#firstname" ).removeClass( errorClass );
       }
    });
    
    $( "#modifyForm_pw" ).validate( {
        rules: {
        	 pwd: {
                 required: true,
                 minlength: 5
              },
              repwd: {
                 required: true,
                 minlength: 5,
                 equalTo: ".password"
              },
        },
        messages: {
        	pwd: {
                required: "Please provide a password",
                minlength: "최소 5글자 이상 입력하세요"
             },
             repwd: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long",
                equalTo: "Please enter the same password as above"
             },
        },
        errorPlacement: function ( error, element ) {
           error.addClass( "error" );
           error.insertAfter( element.parent() );
        },
        highlight: function ( element, errorClass, validClass ) {
           $( element ).parents( "#firstname" ).addClass( errorClass );
        },
        unhighlight: function (element, errorClass, validClass) {
           $( element ).parents( "#firstname" ).removeClass( errorClass );
        }
     });
  
    
    
 });
function mailchk(){
    if(confirm("메일이 발송되었습니다.")){
        location.href = "http://localhost:8080/SpringProject/template/email.do?email=${email}";
        return true;
    } else {
        return false;
    }
}

</script>


<div id="modify_total">
<div id="modify_sel">
<input type="button" id="modify_infoB" value="기본정보 수정">
<input type="button" id="modify_pwB" value="비밀번호 수정">
<input type="button" id="myRev" value="예약내역 확인">
</div>
			
<div id="modify_wrap">
<form id="modifyForm" name="modifyForm" method="post" action="/SpringProject/member/modify.do">
<fieldset>

	<legend>한글 성명</legend>
	<p>
			<input type="text" name="hname" value="${hname}" size="30" >
	</p>
	
    <legend>영문이름(이름)-FirstName</legend>
	<p>
			<input type="text" name="firstname" value="${firstname}" size="30" >
	</p>
	
    <legend>영문이름(이름)-LastName</legend>
	<p>
			<input type="text" name="lastname" value="${lastname}" size="30">
	</p>
	
    <legend>이메일</legend>
	<p>
			<input type="text" name="email" value="${email }" size="30"  readonly="readonly" style="background-color: gray;">
			<c:if test="${emailaut!=0 }">
			<a href="#" onclick="return mailchk()"><img alt="메일 인증" src="../img/emailaccept.gif" width="80" height="30"></a>
			</c:if>
	</p>
	<legend>휴대폰 번호</legend>
	<p>
			<input type="text" name="cellphone" value="${cellphone }" size="30" >
	</p>
	
	<legend>
	<input type="submit" name="modify_B" id="modify_B" value="수정하기" size="15">	
	</legend>
</fieldset>
</form>

<form id="modifyForm_pw" name="modifyForm_pw" method="post" action="/SpringProject/member/repwd.do">
<fieldset>
<legend>비밀번호 입력</legend>
	<p>
			<input type="password" class="password" name="pwd" value="" size="30" placeholder="비밀번호 입력">
	</p>
<legend>비밀번호 재확인</legend>
	<p>
			<input type="password" id="repwd" name="repwd" value="" size="30" placeholder="비밀번호 재확인">
	</p>
<legend>변경할 비밀번호 입력</legend>
	<p>
			<input type="password" name="newpwd" value="" size="30" placeholder="변경할 비밀번호 입력">
	</p>

	<legend>
			<input type="submit" name="modify_B" id="modify_B" value="비밀번호 변경" size="15">	
	</legend>
</fieldset>
</form>
</div>

<div id="myRevDiv">

<form name="reservationViewForm" method="post" action="/bora/department/reservationWrite.do" >
<%-- <c:forEach var="reservationDto" items="${list }"> --%>
<div id="allPage">
   <div id="title">
      <ul>
         <li>
            <font size="4"><b>예약정보</b></font>
         </li>
      </ul>
   </div>
   <div id="line">
   </div>
   <div id="form_1">
   
   <div id="regist_table" style="margin-left:30px; margin-top:30px; " align="center">
   	  <c:if test="${msg.length()>5 }">
   	  <table>
      <colgroup>
         <col width="100%"/>
         <col width="*%"/>
      </colgroup> 
         <tbody>
            <tr>
               <td id="td1">
                    ${msg}
               </td>
            </tr>
         </tbody>
      </table>
   	  </c:if>
   	  <c:if test="${msg.length()<5 }">
      <table border="1" cellpading="1">
      <colgroup>
         <col width="100%"/>
         <col width="*%"/>
      </colgroup> 
         <tbody>
            <tr>
               <td id="th1">
                  패키지코드
               </td>
               <td id="td1">
                    ${reservateDTO.package_code }
               </td>
            </tr>
            <tr>
               <td id="th1">
                  담당자코드
               </td>
               <td id="td1">
             ${reservateDTO.manager } 
               </td>
            </tr>
            
            <tr>
               <td id="th1">
                  예약자
               </td>
               <td id="td1">
                 ${reservateDTO.subscriber }     
               </td>
            </tr>
            
            <tr>
               <td id="th1">
                  예약인원수
               </td>
               <td id="td1">
                ${reservateDTO.person_number }
               </td>
            </tr>
            
            <tr>
               <td id="th1">
                   예약자 전화번호
               </td>
               <td id="td1">
                 ${reservateDTO.subscriber_phonenum }
               </td>
            </tr>
            
            <tr>
               <td id="th1">
                  예약자 이메일
               </td>
               <td colSpan="3" id="td1">
               ${reservateDTO.subscriber_mail1 }@${reservateDTO.subscriber_mail2 }
               </td>
            </tr>
            
            <tr>
               <td id="th1">
                   결제방법
               </td>
               <td id="td1">
                  ${reservateDTO.payment_option }
               </td>
            </tr>
            
            <tr>
               <td id="th1">
                  예약자 요구사항
               </td>
               <td id="td1">
                  <c:if test="${reservateDTO.subscriber_message eq '예약자의 요구사항을 입력해주세요.' }"></c:if>
                  <c:if test="${reservateDTO.subscriber_message ne '예약자의 요구사항을 입력해주세요.' }">${reservateDTO.subscriber_message }</c:if>   
               </td>
            </tr>
            
         </tbody>
         
      </table>
      </c:if>
   </div>
</div>
</div>

<div style="height:20px;">
</div>
<%-- </c:forEach> --%>
</form>
</div>

</div>
<!-- 예약내역..////////////////////////////////////////////////////////////////////// -->

