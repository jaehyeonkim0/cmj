$(document).ready(function() {
		
		const gangnam = {title:"강남고등학교", address:"서울시 강남구 강남대로123", 
				grade: {gtitle:"2학년 1반", 
				list:[
						{name:"홍길동",kor:100,eng:100,math:100}, 
						{name:"테스트",kor:90,eng:100,math:10}, 
						{name:"자바",kor:80,eng:70,math:11},
						{name:"오라클",kor:10,eng:30,math:13},
						{name:"스크립트",kor:20,eng:10,math:6}
					]
			}
		};
		
		/*json 객체인 gangnam 데이터를 테이블 형식으로 출력*/
		//title - h1, address, gtitle - h3, list - table
		
		let output = "<h1> 학교 : "+gangnam.title+"</h1>";
		output += "<h3> 위치 : "+gangnam.address+"</h3>";
		output += "<h3> 학년/반 : "+gangnam.grade.gtitle+"</h3>";
		
		let code = "<table><tr><th>번호</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th><th>총점</th><th>평균</th></tr>";
		
		for(index in gangnam.grade.list) {
			let num = parseInt(index)+1;
			let tot = gangnam.grade.list[index].kor + gangnam.grade.list[index].eng + gangnam.grade.list[index].math;
			let avg = Math.round(tot/3,2);
			code += "<tr>";
			code += "<td>"+num+"</td>";
			code += "<td>"+gangnam.grade.list[index].name+"</td>";
			code += "<td>"+gangnam.grade.list[index].kor+"</td>";
			code += "<td>"+gangnam.grade.list[index].eng+"</td>";
			code += "<td>"+gangnam.grade.list[index].math+"</td>";
			code += "<td>"+tot+"</td>";
			code += "<td>"+avg+"</td>";
			code += "</tr>";
		}
		code += "</table>";
		
		$("body").append(output);
		$("body").append(code);
	});