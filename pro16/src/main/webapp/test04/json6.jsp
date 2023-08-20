<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_process() {
		$.ajax({
			type:"post",
			async:false,
			dataType:"text",
			url:"http://localhost:8080/pro16/json2",
			success:function(data, textStatus){
				//서버에서 전송한 data를 파싱하여 JS객체로 변환하여 저장
				var jsonInfo = JSON.parse(data);
				//회원 정보를 HTML 형식으로 출력하기 위한 문자열
				var memberInfo = "회원 정보<br>";
				memberInfo += "=====================<br>";
				//jsonInfo.members 배열의 각 요소에 접근하여 name으로 value를 출력
				for(var i in jsonInfo.members){
					memberInfo += "이름 : " + jsonInfo.members[i].name + "<br>";
					memberInfo += "나이 : " + jsonInfo.members[i].age + "<br>";
					memberInfo += "성별 : " + jsonInfo.members[i].gender + "<br>";
					memberInfo += "별명 : " + jsonInfo.members[i].nickname + "<br><br><br>";
				}
				//id가 output인 div에 출력
				$("#output").html(memberInfo);
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
	<div id="output"></div>
</body>
</html>