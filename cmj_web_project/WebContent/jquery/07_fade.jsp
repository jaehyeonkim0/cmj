<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		width: 200px;
		height: 200px;
		margin: 20px;
		float: left;
		display: none;
	}
	
	div#d1 {
		background: tomato;
	}
	div#d2 {
		background: powderblue;
	}
	div#d3 {
		background: mediumseagreen;
	}
	
	hr {
		clear: left;
	}
</style>
<script src="http://localhost:9000/cmj_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function() {
		
		$("#in").click(function() {
			$("#d1").fadeIn();
			$("#d2").fadeIn(1000);
			$("#d3").fadeIn("slow", function(){ alert("d3 fadeIn 완료"); });
		});
		
		$("#out").click(function() {
			$("#d1").fadeOut();
			$("#d2").fadeOut(1000);
			$("#d3").fadeOut("slow");
		});
		
		$("#toggle").click(function() {
			$("#d1").fadeToggle();
			$("#d2").fadeToggle(1000);
			$("#d3").fadeToggle("slow");
		});
		
		$("#to").click(function() {
			$("#d1").fadeTo("slow",0.3);
			$("#d2").fadeTo(1000, 0.5);
			$("#d3").fadeTo("slow", 0.7);
		});
	});
	
</script>
</head>
<body>
<h1>Fade In/Out/Toggle/To</h1>
<div id="d1"></div>
<div id="d2"></div>
<div id="d3"></div>
<hr>
<button type="button" id="in">Fade in</button>
<button type="button" id="out">Fade out</button>
<button type="button" id="toggle">Fade toggle</button>
<button type="button" id="to">Fade to</button>
</body>
</html>