<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<script type="text/javascript" src="../smarteditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<link rel="stylesheet" href="../smarteditor/style/style-new.css"/>
<script type="text/javascript" src="../smarteditor/script/jquery.min.js" /></script>
<script type="text/javascript" src="../samrteditor/script/jssor.js" /></script>

</head>


<div class="boardWriteForm">
<form name="boardWriteForm" class="boardWriteForm-form" method="post" action="/SpringProject/qnaboard/boardWrite.do">
<span class="btn_big" onclick="location.href='/SpringProject/qnaboard/qnaboardAfter.do'"><span>목록</span></span>
		<div class="body">
			<div class="form_table" style="margin: auto">
				<table border="1" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요"
					style="width: 1220px;">
					<thead>
						<tr>
							<td colspan="2">Subject <input type="text" name="subject"
								size="50" /></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="padding: 0px; border: 0px;">
								<div id="label_t" class="item" style="margin-top: 10px;">
									<textarea name="ir1" id="ir1" rows="10" cols="100"
										style="width: 100%; height: 412px; min-width: 100%; display: none;"></textarea>
								</div>
							</td>
						</tr>
						<tr>
							<td style="border: 0px; padding-top: 30px;">
								<p
									style="font-weight: 800; color: #FF6559; font-size: 14px; margin-bottom: 15px;">
									Q&A 게시판 블라인드 원칙</p>
								<ul style="line-height: 180%;">
									<li>욕설이나 비속어가 포함된 글(타인 비방 포함)</li>
									<li>정확한 상황설명이 없는 단순 비방 글</li>
									<li>Q&A에 부합되지 않는다고 판단되는 글</li>
									<li>Q&A 게시글 삭제는 정보통신망 이용촉진 및 정보보호 등에 관한
										법률 '제 44조의 2항(정보 삭제요청 등)에 의거합니다.</li>
									<li style="font-size: 14px; font-weight: 800; padding-top: 20px;">
										<input type="checkbox" name="agree" id="tipAgree" value="1"
										style="position: absolute; margin-top: 4px; width: 17px; height: 17px;" />
											<label for="tipAgree" style="margin-left: 30px;">위
												블라인드 원칙에 동의합니다.</label>
									</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<p> 

			<input type="button" class="tipBtn" onclick="submitContents(this);" value="등록하기" /> 
			
		</p>
</form>
</div>
	<script type="text/javascript">
		//배열저장
		var oEditors = [];
		// 프레임 얻어오기
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "../smarteditor/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : false, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
				
			}, //boolean
		});

		//유효성 검사
		function submitContents(elClickedObj) {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.
		    var content = document.getElementById("ir1").value; 
			if(document.boardWriteForm.subject.value==""){
				alert("제목을 입력하세요."); 
				document.boardWriteForm.subject.focus(); //포커싱
				return false;
			}else if (content == "" || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>') { 
		    	alert("내용을 입력하세요."); 
		        oEditors.getById["ir1"].exec("FOCUS"); //포커싱 
		        return false; 
			}else if($("input[name='agree']").is(":checked")==false){
				alert('동의해 주세요')
				return false;
		    }else{ 
		    	document.getElementById("ir1").value = content;
				document.boardWriteForm.submit();

		    }

			// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

			
		}

	</script>






