<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/cmj_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnJoin").click(function() {
			if($("#name").val() == "") {
				alert("이름은 필수 입력 항목입니다");
				$("#name").focus();
				return false;
			}else if($("input[name='gender']:checked").length == 0) {
				alert("성별을 선택해주세요");
				return false;
			}else if($("input[name='hobby']:checked").length == 0) {
				alert("취미를 선택해주세요");
				return false;
			}else {
				joinForm.submit();
			}
		});
	});
</script>
</head>
<body>
	<h1>Join Form</h1>
	<form action="#" name="joinForm" method="get">
		<ul>
			<li>
				<label>이름</label>
				<input type="text" name="name" id="name">
			</li>
			<li>
				<label>성별</label>
				<input type="radio" name="gender" value="M">남자
				<input type="radio" name="gender" value="F">여자
			</li>
			<li>
				<label>취미</label>
				<input type="checkbox" name="hobby" value="늦잠">늦잠
				<input type="checkbox" name="hobby" value="수면">수면
				<input type="checkbox" name="hobby" value="기절">기절
			</li>
			<li>
				<button type="button" id="btnJoin">회원가입</button>
				<button type="button" id="btnReset">다시쓰귀</button>
			</li>
		</ul>
	
	</form>
</body>
</html>