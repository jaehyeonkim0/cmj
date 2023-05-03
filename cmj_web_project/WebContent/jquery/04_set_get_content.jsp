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
		
		//데이터 넣기 버튼 클릭 이벤트 처리
		$("#set_data").click(function(){
			//1. form 태그에 데이터 넣기(input태그): value => val() 로 바뀜
			//document.getElementById("name").value = "홍길동"; 이 코드가 $("#name").val();로 바뀜
			$("#name").val("홍길동");
			
			//2. innerHTML -> text()로 바뀜
			$("#addr").text("서울시 강남구 한남동");
			
			//3. text에 html태그를 추가하는 경우 = html()
			/* $("#hobby").text("<li>게임하기</li>"); */ //출력할 때 진짜 그대로 나옴 <li>게임하기</li>로 나옴; 원래는 * 게임하기 되있어야하는데
			/* $("#hobby").html("<li>게임하기</li>"); */
			
			//4. append(html태그)
			$("#hobby").append("<li>게임하기</li>").append("<li>게임하기</li>").append("<li>게임하기</li>").append("<li>게임하기</li>").append("<li>게임하기</li>");
			
			//a태그 링크 형태로 d1에 추가하기
			$("#d1").html("<a href='http://apple.kr'>애플</a>");
			/* $("#d1").append("<a href='http://apple.kr'>애플</a>"); */
			$("#d2").html("<img src='../images/h1_cgv.png'>");
			$("#d2 img").css("width","20%");
		});
		
		//데이터 가져오기 버튼
		$("#get_data").click(function(){
			//id가 name인 폼에서 값을 가져와서 id가 getName인 폼에 넣기
			//넣는 방법 : $(선택자).val("넣을 내용");
			//가져오는 방법: $(선택자).val(); 넣을 내용을 안쓰면 된다
			$("#getName").val($("#name").val());
			/* alert($("#d1 a").attr("href")); */
			$("#getAddr").text($("#d1 a").attr("href"));
			$("#getImg").text($("#d2 img").attr("src"));
		});
		
	});
</script>
</head>
<body>
	<h1>Set/Get Content</h1>
	이름: <input type="text" name="name" id="name"><br>
	주소: <p id="addr"></p>
	취미: <ul id="hobby"></ul>
	애플 주소: <div id="d1"></div>
	이미지 주소: <div id="d2"></div>
	<button type="button" id="set_data">데이터 넣기</button>
	<hr>
	Get Name : <input type="text" id="getName"><br>
	애플 주소 가져오기(href 속성만 가져오기) : <span id="getAddr"></span><br>
	이미지 주소 가져오기(src 속성만) : <span id="getImg"></span><br>
	<button type="button" id="get_data">데이터 가져오기</button>
</body>
</html>












































