<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Smart Editor&#8482; WYSIWYG Mode</title>
<link href="../../css/compiled/open/ko_KR/smart_editor2_in.css" rel="stylesheet" type="text/css">
</head>
<body class="smartOutput se2_inputarea">
	<p>
		<b><u>������ ����:</u></b>
	</p>

	<div style="width:736px;">
	<?php
		$postMessage = $_POST["ir1"]; 
		echo $postMessage;
	?>
	</div>
	
	<hr>
	<p>
		<b><span style="color:#FF0000">����: </span>sample.php�� ���� ���Ϸ� ���� �������� ���� �� �ֽ��ϴ�. �� �� ���ǹٶ��ϴ�.</b>
	</p>
	
	<?php echo(htmlspecialchars_decode('&lt;img id="test" width="0" height="0"&gt;'))?>
	
<script>
	if(!document.getElementById("test")) {
		alert("PHP�� ������� �ʾҽ��ϴ�. ������ ���� ���Ϸ� ������ ���� �ƴ϶� ������ �����ߴ��� Ȯ�� �� �ֽʽÿ�.");
	}
</script>
</body>
</html>