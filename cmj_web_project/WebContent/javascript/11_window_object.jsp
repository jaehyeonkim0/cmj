<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - window 객체</title>
<script>
	/* 1. window.alert("띄우려는 메세지") */
	//alert("window.alert 테스트");
	
	/* 2. window.confirm("메세지") */
	//let result = window.confirm("~~까?");
	
	/* document.write(result);
	확인 클릭 시: true, 취소 클릭 시: false
	
	
	if(result)
		document.write("확인입니다");
	else
		document.write("취소입니다");
	*/
	
	/* 3. window.prompt("입력창 위에 띄울 메세지") - 데이터 입력 받아 처리 */
	let name = window.prompt("이름을 입력해주세요(예: 홍길동)");
	
	document.write(name); //prompt에 입력한 값 출력
	
	
</script>
</head>
<body>

</body>
</html>