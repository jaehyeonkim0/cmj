<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/cmj_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$("document").ready(function() {
		
		$("#hide").click(function(){
			$("#target").hide(1000, function(){ alert("숨김 확인");});
		});
		
		$("#show").click(function(){
			$("#target").show(1000, function(){
				alert("show");
			});
		});
		
		$("#toggle").click(function(){
			$("#target").toggle();
		});
		
	});
</script>
<style>
	div#target {
	width: 500px; height: 100px; background: tomato; margin: 20px;
	}
</style>
</head>
<body>
	<h1>Hide/Show/Toggle Method</h1>
	<div id="target"></div>
	<button type="button" id="hide">Hide</button>
	<button type="button" id="show">Show</button>
	<button type="button" id="toggle">Toggle</button>
</body>
</html>