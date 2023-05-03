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
		/* $(선택자).css("스타일 property값, "값").css("color","red").css().css().css(); css 넣겠다(누적 입력 가능) */
		$("h1").css("color","powderblue").css("border","3px solid tomato").css("width","30%").css("margin","auto").css("text-align","center");
		$("ul").css("list-style-type","none").css("padding","0px").css("margin","0px");
		$("li:last-child").css("color","tomato");
		$(".p1").css("color","green").css("font-size","20pt").css("font-weight","bold");
		$("#p2").css("color","cyan");
		$("a[target='_blank']").css("background","yellow");
	});
</script>


</head>
<body>
	<h1>jQuery - Selectors</h1>
	<p class="p1">class 선택자</p>
	<ul>
		<li>java</li>
		<li>oracle</li>
		<li>HTML</li>
		<li>CSS</li>
		<li>javascript</li>
		<li>jquery</li>
	</ul>
	<p id="p2">id selector</p>
	<a href="http://www.naver.com" target="_blank">네이버</a>
	<a href="http://www.google.com">구글</a>
	<a href="http://apple.kr">애플</a>
</body>
</html>