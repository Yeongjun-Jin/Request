<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_process() {
		//전송할 회원 정보를 JSON 형식으로 만든다.
		var _jsonInfo = '{"name":"박지성", "age":25, "gender":"남자", "nickname":"날쎈돌이"}';
		$.ajax({
			type:"post",
			async:false,
			dataType:"text",
			url:"http://localhost:8080/pro16/json",
			//jsonInfo 이름으로 JSON 데이터를 ajax로 전송
			data:{jsonInfo : _jsonInfo},
			success:function(data, textStatus){
				alert("성공");
			},
			error:function(data, textStatus){
				alert("에러가 발생했습니다.");
			}
		});	
	}
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" value="전송하기" onclick="fn_process()"><br><br>
	<div id="message"></div>
</body>
</html>