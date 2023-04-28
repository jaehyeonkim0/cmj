<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - const:Object</title>
<script>
	/* let x=100;
	let y=100; */
	
	//Array
	const x_arr = ["java","oracle"];
	const y_arr = ["javascript","oracle"]; // {} 사용하면 안됨;
	
	
	//JSON 타입
	const json1 = {"subject1":"oracle","subject2":"java"}; //REST
	const score = {name:"홍길동", kor:90, eng:100, math:100, tot: 290.0, avg: 145.0};
	//{}은 JSON타입 : {name:value, name:value, ...}, object 타입(?)
	//name 자리에는 "" 안써도됨
	//출력방법 변수명.name
	
	//JSON + Array
	/* const scoreList = {hong:["홍길동",10,10,10], test:["테스트",20,20,20]}; */
	const scoreList = {hong:[{name:"홍길동"},10,10,10], test:["테스트",20,20,20]};
	
	
	
	document.write('Array <br>');
	document.write("x_arr="+x_arr +'<br>');
	document.write("x_arr="+x_arr[0] +'<br>');
	document.write("y_arr="+y_arr +'<br>');
	document.write("y_arr="+y_arr[1] +'<br><br><hr>');
	
	document.write("JSON <br>");
	document.write("json1="+json1 +'<br>');
	document.write("score="+score.math +'<br><br><hr>');
	
	document.write("JSON Array <br>");
	/* document.write("scoreList.hong="+scoreList.hong[0]+"<br>"); */
	document.write("scoreList.hong="+scoreList.hong[1]+"<br>");
	document.write("scoreList.hong="+scoreList.hong[2]+"<br>");
	document.write("scoreList.hong="+scoreList.hong[3]+"<br><br>");
	document.write("scoreList.hong[0].name="+scoreList.hong[0].name+"<br><br>");
	document.write("scoreList.test="+scoreList.test[0]+"<br>");
	document.write("scoreList.test="+scoreList.test[1]+"<br>");
	document.write("scoreList.test="+scoreList.test[2]+"<br>");
	document.write("scoreList.test="+scoreList.test[3]+"<br>");
	
</script>
</head>
<body>

</body>
</html>