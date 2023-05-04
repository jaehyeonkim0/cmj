// [기존엔 json 데이터를 복붙했었다] => 여긴 브라우저에서 데이터 불러오기
$(document).ready(function(){
	//1.json data - $.getJson(url,function(JSON 데이터를 담고 있는 변수){});
	let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20190503";
	$.getJSON(url, function(kobis){
		
		//2.output(출력데이터) code 생성
		let boxOffice = kobis.boxOfficeResult;
		let movie = "<h1>"+boxOffice.boxofficeType+"</h1>";
		movie += "<h3>"+boxOffice.showRange+"</h3>";
		
		movie += "<table><tr><th>순위</th><th>제목</th><th>개봉날짜</th><th>금일 관객수</th><th>누적 관객수</th></tr>";
		
		for(cinema of boxOffice.dailyBoxOfficeList) {
			movie += "<tr>";
			movie += "<td>"+cinema.rank+"</td>";
			movie += "<td>"+cinema.movieNm+"</td>";
			movie += "<td>"+cinema.openDt+"</td>";
			movie += "<td>"+cinema.audiCnt+"</td>";
			movie += "<td>"+cinema.audiAcc+"</td>";
			movie += "</tr>";
		}
		
		movie += "</table>";
		
		//3.body 위치에 append
		$("body").append(movie);
		
	});
	
	
	
});