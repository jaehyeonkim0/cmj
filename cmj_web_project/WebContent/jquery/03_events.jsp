<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/cmj_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$("document").ready(function(){
		/* 이벤트 주는 형식 : $(선택자).이벤트 핸들러 메소드(); */
		/* 이벤트 주는 형식 : $(선택자).on(이벤트 핸들러 메소드(),함수정의); */
		/* 이벤트 주는 형식 : $(선택자).on({
			"이벤트 핸들러 메소드": 함수정의,
			"이벤트 핸들러 메소드": 함수정의,
			"이벤트 핸들러 메소드": 함수정의
			...
		}); */
		
		$("#btn1").click(function() {
			window.open("http://www.naver.com");
		});
		
		$("#btn2").on("click",function() {
			location.href="http://apple.kr";
		});
		
		$("#btn3").on({
			click : function() { 
				alert("1");
			},
			mouseenter : function() {
				$(this).css("background","powderblue");
			},
			mouseleave : function() {
				$("#btn2").css("background","tomato");
			}
		});
	});
</script>
</head>
<body>
	<h1>Events</h1>
	<button type="button" id="btn1">버튼1</button>
	<button type="button" id="btn2">버튼2</button>
	<button type="button" id="btn3">버튼3</button>
</body>
</html>