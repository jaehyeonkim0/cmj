<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - DOM</title>
<style>
	div#menu {
		border: 1px solid red;
	}
	
	div.top_menu ul {
		list-style-type: none;
		padding: 0px;	
		margin: 0px;
		overflow: hidden;
		background: powderblue;
	}
	
	div.top_menu ul li {
		float: left;
	}
	
	div.top_menu ul li a {
		display: block;
		text-decoration: none;
		width: 80px;
		text-align: center;
		background: powderblue;
		border-right: 1px solid gray;
		color: #333;
		padding: 8px 0;
	}
	
	div#menu div.sub_menu {
		height: 400px;
		display: none;
		background: tomato;
	}
	
</style>
<script>
	window.onload = () => {
		//document.getElementsByTagName('h1')[0].innerHTML = "Head태그 안의 Script DOM TEST";
		const h1_list = document.getElementsByTagName("h1");
		//alert(h1_list.length); : h1 태그 갯수
		h1_list[0].innerHTML = "Head태그 안의 Script DOM TEST";
		h1_list[1].style.background = "gray";
		h1_list[1].style.textDecoration = "underline";
		
		const m_list = document.getElementsByClassName("m");
		
		m_list[0].style.textDecoration = "underline";
		m_list[1].style.fontWeight = "bold";
		
		document.getElementById("menu").style.border = "1px solid green";
	}
	
	function show() {
		//id값 가져오기(hide)
		let check = document.getElementsByClassName("sub_menu")[0].id;
		if(check=="hide"){
			document.getElementsByClassName("sub_menu")[0].style.display = "block";
			document.getElementsByClassName("sub_menu")[0].id = "anything";
		}else {
			document.getElementsByClassName("sub_menu")[0].style.display = "none";
			document.getElementsByClassName("sub_menu")[0].id = "hide";
		}
		
	}
	
	function test(){
		document.getElementsByClassName("sub_menu")[0].style.display = "none";
	}
	
	
</script>
</head>
<body>
	<h1>Document Object Model</h1>
	<h1>Document Object Model</h1>
	<div id="menu">
		<div class="top_menu" onclick="show()">
			<ul>
				<li>
					<a href="#" id="login">로그인</a>
				</li>
				<li>
					<a href="#" class="join">회원가입</a>
				</li>
				<li>
					<a href="#" class="m">고객센터</a>
				</li>
				<li>
					<a href="#" class="m">공지사항</a>
				</li>
				<li>
					<a href="#" class="m">게시판</a>
				</li>
			</ul>
		</div>
		<div class="sub_menu" id="hide"></div>
	</div>
</body>
</html>