$(document).ready(function(){
	
	//실행버튼 이벤트
	$("#btnKobis").click(function(){
		if($("#kselect").val() == "default") {
			alert("박스오피스를 선택해주세요");
			$("#kselect").focus();
			return false;
		}else if($("input[type='text']").val() == ""){
			alert("날짜를 입력해주세요");
			$("input[type='text']").focus();
			return false;
		}else {
			//1. 일별, 주말 박스오피스 데이터 처리 JSON 데이터 가져오기
			let kdate = $("input[type='text']").val();
			let ktype = $("#kselect").val();
			let url = ""; //일별인지 주말인지 모르니까
			if(ktype=="Daily") {//일별이면
				//일별 데이터 : searchDailyBoxOfficeList.json
				url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/" +
					"search"+ktype+"BoxOfficeList.json?" +
					"key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			}else {//주말이면
				//주말 데이터 : searchWeelyBoxOfficeList.json
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/" +
						"search"+ktype+"BoxOfficeList.json?" +
						"key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			}
			
			$.getJSON(url, function(kobis){
				
				//2. 출력 형식 생성
				
				let boxOffice = kobis.boxOfficeResult;
				let movie = "<div id='d2'>";
				movie += "<h1>"+boxOffice.boxofficeType+"</h1>";
				movie += "<h3>"+boxOffice.showRange+"</h3>";
				
				movie += "<table><tr><th>순위</th><th>제목</th><th>개봉날짜</th><th>금일 관객수</th><th>누적 관객수</th></tr>";
				
				let listName = null;
				
				if(ktype == "Daily"){
					listName = boxOffice.dailyBoxOfficeList;
				}
				else{ 
					listName = boxOffice.weeklyBoxOfficeList
				}
				
				for(cinema of listName) {
					movie += "<tr>";
					movie += "<td>"+cinema.rank+"</td>";
					movie += "<td>"+cinema.movieNm+"</td>";
					movie += "<td>"+cinema.openDt+"</td>";
					movie += "<td>"+cinema.audiCnt+"</td>";
					movie += "<td>"+cinema.audiAcc+"</td>";
					movie += "</tr>";
				}
				
				movie += "</table>";
				movie += "</div>";
				
				//이전 출력된 데이터를 삭제(계속 누적 출력되기 때문에)
				$("div#d2").remove();
				
				//3. 출력 위치 append
				//$("p#p1").before();
				$("#p1").css("background","tomato");
				$("#d1").after(movie);
				//$("body").append(movie);
			});
			
		}
	});//실행버튼 누를 시
	
	
	
});//ready