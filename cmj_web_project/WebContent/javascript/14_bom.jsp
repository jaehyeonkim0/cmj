<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - BOM(Browser Object Model) 객체</title>
<script>
	let w = window.innerWidth;
	let h = window.innerHeight;
	
	document.write("width=" + w + "<br>");
	document.write("height=" + h + "<br>");
	
	function locationPage(value) {
		
		if(value == "naver")
			open("about:blank").location.href="http://www.naver.com";
		else if(value.length == 6) //됨
			location.href="http://www.google.com";
	}
	
	function historyPage(value) {
		let hlength = window.history.length;
		alert(hlength);
		if(value == "prev") {
			window.history.back();
		}else if(value == "next") {
			window.history.forward();
		}else if(value == "go2")
			window.history.go(2);
		
	}
</script>
<style>
	button {
		width: 120px;
		padding: 10px 0;
		background: cyan;
		border: 1px solid cyan;
		border-radius: 4px;
		cursor: pointer;
	}
	
	button:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>
	<h1>Browser Object Model</h1>
	<button type="button" onclick="locationPage('naver')">네이버</button>
	<button type="button" onclick='locationPage("google")'>구글</button>
	<button type="button" onclick="historyPage('prev')">이전</button>
	<button type="button" onclick="historyPage('next')">다음</button>
	<button type="button" onclick="historyPage('go2')">두단계 다음</button>
	
</body>
</html>








