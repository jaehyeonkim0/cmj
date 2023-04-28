<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Variables</title>
	<script>
		//변수 선언 -변수의 타입은 저장되는 값에 따라 결정된다
		var x=100; //x 정수형 변수
		var y=10.234; //y 실수형 변수
		var str = "JS"; //str 문자형 변수
		var str2 = 'JS'; //'' 사용해도 똑같이 인식
		
		x=123.456;  //100(정수형) -> 123.456(실수형) : 데이터 타입 변경 가능하다(재할당하면서 타입 변경 가능)
		x = 'hello'; //123.456(실수형) -> 'hello'(문자형) : 데이터 변경 됨 : 맨 나중에 작성된 값으로 변경됨
		
		var x = 'x변수 재정의'; //문자형 변수로 재정의 가능하네;
		//alert(x);
		
		//let 키워드로 변수 정의
		let x2=100;
		let y2=123.123;
		x2='hello'; //let 역시 재할당 가능하고 재할당 시 데이터타입 변경 가능
		x2=123.123;
		
		//let x2 = 'x2 변수 재정의'; 
		//재정의는 불가능; 
		//f12 console 에 caught SyntaxError: Identifier 'x2' has already been declared 뜸
		
		//alert('x2='+x2);
		
		//const : 객체를 만들어서 사용하지만 실제로 객체를 만드는건 아니다; 재정의,재할당 불가능
		const x3=100;
		const y3=200;
		
		x3=200;
		
		alert('x3+y3='+(x3+y3));
	</script>
</head>
<body>

</body>
</html>