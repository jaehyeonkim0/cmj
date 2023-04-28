<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - For Loop</title>
<script>
	/* 
		for(초깃값;조건식;증가값) {
			실행코드
		}
	
		for(인덱스 변수 in 배열객체명) {
			실행코드 : 배열객체명[인덱스변수]
		}
		
		for(배열 안의 요소 of 배열객체명) {
			실행코드 : 요소
		}
	*/
	
		const subList = ['java','oracle','html','javascript','css'];
		
		//1. for
		document.write("<h1>1. for </h1>");
		for(i=0;i<subList.length;i++){
			document.write('subList['+i+'] : ' + subList[i] + '<br>');
		}
		
		//2. for in
		document.write("<h1>2. for in</h1>");
		for(idx in subList){
			document.write('subList['+idx+'] : ' + subList[idx] + '<br>');
		}
		
		//3. for of
		document.write("<h1>3. for of</h1>");
		for(subject of subList){
			document.write('subList : ' + subject + '<br>');
		}
		
		//4. forEach : arrow function
		document.write("<h1>4. forEach </h1>");
		subList.forEach((value, index, array) => {
			document.write('subList['+index+'] : ' + value + '<br>');		
		});
		
		
		
		
		
</script>
</head>
<body>

</body>
</html>