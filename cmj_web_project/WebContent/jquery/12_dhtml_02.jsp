<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/cmj_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		const employee = { list : [
									{"name":"홍길동", addr:'서울시 강남구', age:30},
									{"name":"손석구", addr:'서울시 강북구', age:31},
									{"name":"겅유", addr:'서울시 서초구', age:32}
								]
							};
		
		let code = "<table><tr><th>번호</th><th>성명</th><th>주소</th><th>나이</th></tr>";
		for(index in employee.list){
			let num = parseInt(index)+1;
			code += "<tr>";
			code += "<td>"+num+"</td>";
			code += "<td>"+employee.list[index].name+"</td>";
			code += "<td>"+employee.list[index].addr+"</td>";
			code += "<td>"+employee.list[index].age+"</td>";
			code += "</tr>";				
		}
	
		code += "</table>";
		
		$("body").append(code);
/* 		$("body").html(code); */
	});
</script>
<style>
	table,th,td {
		border: 5px solid powderblue;
		border-collapse: collapse;
	}
	
	th {
		background: powderblue;
	}
</style>
</head>
<body>

</body>
</html>