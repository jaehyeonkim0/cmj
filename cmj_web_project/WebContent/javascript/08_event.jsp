<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - event</title>
<script>
	function validationCheck() {
		/* let id = document.getElementById("id");
		alert(id); 
		[object HTMLInputElement] 출력; 아이디가 입력된 객체(input)까지만 가서 객체 주소를 가져온 것 */
		
		let id = document.getElementById("id");
		let pass = document.getElementById("pwd");
		
		if(id.value == "") {
			alert("아이디는 필수 정보입니다");
			id.focus();
			/* document.getElementById("id").focus(); */ 
			//id.focus() 하면 안됨; 값(id)에 커서를 가져다놓을 수 없다
		}else if(pass == ""){
			alert("비밀번호는 필수 정보입니다")
			pass.focus();
		}
		
	}
	
	
</script>
</head>
<body>

	<h1>Login Form</h1>
	<ul>
		<li>
			<label>아이디</label>
			<input type="text" name="id" id="id">
		</li>
		<li>
			<label>비밀번호</label>
			<input type="password" name="pwd" id="pwd">
		</li>
		<li>
			<button type="button" onclick="validationCheck()">로그인</button>
			<button type="reset">다시입력</button>
		</li>
	</ul>
</body>
</html>