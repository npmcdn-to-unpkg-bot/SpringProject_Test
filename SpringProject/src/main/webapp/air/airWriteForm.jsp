<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="airWriteForm">
<form name="airWriteForm-form" class="airWriteForm-form" method="post" action="/FinalPro/air/airWrite.do">
<title>항공 글쓰기</title>
<table border="1">
<tr>
	<th width="70">항공사 이름</th>
	<td><input type="text" name="airname" size="50">
</tr>
<tr>
	<th>이미지</th>
	<td><textarea name="image" rows="15" cols="45"></textarea></td>
</tr>
<tr>
	<th>항공기편</th>
	<td><textarea name="explain" rows="15" cols="45"></textarea></td>
</tr>
<tr>
	<td colspan="2" align="center">
	<input type="submit" value="글쓰기" >
	<input type="reset" value="다시작성">
	</td>
</tr>
</table>
</form>
</div>