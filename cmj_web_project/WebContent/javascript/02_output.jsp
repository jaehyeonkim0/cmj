<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Output</title>
	<script>
		window.onload = function(){
			
			document.getElementById("d1").innerHTML = "1. javascript";
			document.write("2. javascript");
			window.alert("3. javascript");
			console.log("4. javasript");
		}
	</script>
</head>
<body>
	<h1>JS - Output</h1>
	<div id="d1"></div>
</body>
</html>