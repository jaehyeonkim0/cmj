/*
boxofficeType	문자열	박스오피스 종류를 출력합니다.0
showRange		문자열	박스오피스 조회 일자를 출력합니다.0-1
rnum			문자열	순번을 출력합니다.
rank			문자열	해당일자의 박스오피스 순위를 출력합니다.1
rankInten		문자열	전일대비 순위의 증감분을 출력합니다.
rankOldAndNew	문자열	랭킹에 신규진입여부를 출력합니다.
“OLD” : 기존 , “NEW” : 신규
movieCd			문자열	영화의 대표코드를 출력합니다.
movieNm			문자열	영화명(국문)을 출력합니다.
openDt			문자열	영화의 개봉일을 출력합니다.2
salesAmt		문자열	해당일의 매출액을 출력합니다.
salesShare		문자열	해당일자 상영작의 매출총액 대비 해당 영화의 매출비율을 출력합니다.
salesInten		문자열	전일 대비 매출액 증감분을 출력합니다.
salesChange		문자열	전일 대비 매출액 증감 비율을 출력합니다.
salesAcc		문자열	누적매출액을 출력합니다.
audiCnt			문자열	해당일의 관객수를 출력합니다.3
audiInten		문자열	전일 대비 관객수 증감분을 출력합니다.
audiChange		문자열	전일 대비 관객수 증감 비율을 출력합니다.
audiAcc			문자열	누적관객수를 출력합니다.4
scrnCnt			문자열	해당일자에 상영한 스크린수를 출력합니다.
showCnt			문자열	해당일자에 상영된 횟수를 출력합니다.
 */
$(document).ready(function() {
	const kobis = {
		"boxOfficeResult" : {
			"boxofficeType" : "일별 박스오피스",
			"showRange" : "20230502~20230502",
			"dailyBoxOfficeList" : [ {
				"rnum" : "1",
				"rank" : "1",
				"rankInten" : "0",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20227890",
				"movieNm" : "슈퍼 마리오 브라더스",
				"openDt" : "2023-04-26",
				"salesAmt" : "356316803",
				"salesShare" : "27.8",
				"salesInten" : "-1398392724",
				"salesChange" : "-79.7",
				"salesAcc" : "9832497138",
				"audiCnt" : "35066",
				"audiInten" : "-151261",
				"audiChange" : "-81.2",
				"audiAcc" : "990505",
				"scrnCnt" : "1201",
				"showCnt" : "4501"
			}, {
				"rnum" : "2",
				"rank" : "2",
				"rankInten" : "0",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20198482",
				"movieNm" : "드림",
				"openDt" : "2023-04-26",
				"salesAmt" : "319364559",
				"salesShare" : "24.9",
				"salesInten" : "-681636100",
				"salesChange" : "-68.1",
				"salesAcc" : "6505746070",
				"audiCnt" : "34237",
				"audiInten" : "-72409",
				"audiChange" : "-67.9",
				"audiAcc" : "679745",
				"scrnCnt" : "1188",
				"showCnt" : "4394"
			}, {
				"rnum" : "3",
				"rank" : "3",
				"rankInten" : "0",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20231089",
				"movieNm" : "존 윅 4",
				"openDt" : "2023-04-12",
				"salesAmt" : "191853325",
				"salesShare" : "15.0",
				"salesInten" : "-435532163",
				"salesChange" : "-69.4",
				"salesAcc" : "17444892660",
				"audiCnt" : "19220",
				"audiInten" : "-45799",
				"audiChange" : "-70.4",
				"audiAcc" : "1682867",
				"scrnCnt" : "894",
				"showCnt" : "2077"
			}, {
				"rnum" : "4",
				"rank" : "4",
				"rankInten" : "0",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20226270",
				"movieNm" : "스즈메의 문단속",
				"openDt" : "2023-03-08",
				"salesAmt" : "125553887",
				"salesShare" : "9.8",
				"salesInten" : "-237306924",
				"salesChange" : "-65.4",
				"salesAcc" : "53077042996",
				"audiCnt" : "12581",
				"audiInten" : "-25817",
				"audiChange" : "-67.2",
				"audiAcc" : "5169707",
				"scrnCnt" : "633",
				"showCnt" : "1302"
			}, {
				"rnum" : "5",
				"rank" : "5",
				"rankInten" : "1",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20225865",
				"movieNm" : "옥수역귀신",
				"openDt" : "2023-04-19",
				"salesAmt" : "68557500",
				"salesShare" : "5.3",
				"salesInten" : "-33773700",
				"salesChange" : "-33",
				"salesAcc" : "1801411100",
				"audiCnt" : "6422",
				"audiInten" : "-3134",
				"audiChange" : "-32.8",
				"audiAcc" : "170777",
				"scrnCnt" : "263",
				"showCnt" : "524"
			}, {
				"rnum" : "6",
				"rank" : "6",
				"rankInten" : "-1",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20226489",
				"movieNm" : "리바운드",
				"openDt" : "2023-04-05",
				"salesAmt" : "37857757",
				"salesShare" : "3.0",
				"salesInten" : "-53647824",
				"salesChange" : "-58.6",
				"salesAcc" : "6468793762",
				"audiCnt" : "3951",
				"audiInten" : "-6044",
				"audiChange" : "-60.5",
				"audiAcc" : "672999",
				"scrnCnt" : "350",
				"showCnt" : "474"
			}, {
				"rnum" : "7",
				"rank" : "7",
				"rankInten" : "0",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20228555",
				"movieNm" : "더 퍼스트 슬램덩크",
				"openDt" : "2023-01-04",
				"salesAmt" : "35651083",
				"salesShare" : "2.8",
				"salesInten" : "-34811140",
				"salesChange" : "-49.4",
				"salesAcc" : "47966113766",
				"audiCnt" : "3455",
				"audiInten" : "-3485",
				"audiChange" : "-50.2",
				"audiAcc" : "4600103",
				"scrnCnt" : "228",
				"showCnt" : "327"
			}, {
				"rnum" : "8",
				"rank" : "8",
				"rankInten" : "11",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20231244",
				"movieNm" : "렌필드",
				"openDt" : "2023-04-19",
				"salesAmt" : "12476199",
				"salesShare" : "1.0",
				"salesInten" : "10080876",
				"salesChange" : "420.9",
				"salesAcc" : "467534449",
				"audiCnt" : "1869",
				"audiInten" : "1623",
				"audiChange" : "659.8",
				"audiAcc" : "49672",
				"scrnCnt" : "59",
				"showCnt" : "62"
			}, {
				"rnum" : "9",
				"rank" : "9",
				"rankInten" : "-1",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20200154",
				"movieNm" : "킬링 로맨스",
				"openDt" : "2023-04-14",
				"salesAmt" : "16140706",
				"salesShare" : "1.3",
				"salesInten" : "-31919768",
				"salesChange" : "-66.4",
				"salesAcc" : "1702863922",
				"audiCnt" : "1778",
				"audiInten" : "-3225",
				"audiChange" : "-64.5",
				"audiAcc" : "177902",
				"scrnCnt" : "139",
				"showCnt" : "180"
			}, {
				"rnum" : "10",
				"rank" : "10",
				"rankInten" : "-1",
				"rankOldAndNew" : "OLD",
				"movieCd" : "20231164",
				"movieNm" : "무명",
				"openDt" : "2023-04-26",
				"salesAmt" : "11138275",
				"salesShare" : "0.9",
				"salesInten" : "-1264480",
				"salesChange" : "-10.2",
				"salesAcc" : "166066039",
				"audiCnt" : "1392",
				"audiInten" : "93",
				"audiChange" : "7.2",
				"audiAcc" : "18667",
				"scrnCnt" : "161",
				"showCnt" : "207"
			} ]
		}
	};
	let movie = "<h1>"+kobis.boxOfficeResult.showRange+"</h1>";
	movie += "<h1>"+kobis.boxOfficeResult.boxofficeType+"</h1>";
	
	movie += "<table><tr><th>순위</th><th>제목</th><th>개봉날짜</th><th>금일 관객수</th><th>누적 관객수</th></tr>";
	for(cinema of kobis.boxOfficeResult.dailyBoxOfficeList) {
		
		movie += "<tr>";
		movie += "<td>"+cinema.rank+"</td>";
		movie += "<td>"+cinema.movieNm+"</td>";
		movie += "<td>"+cinema.openDt+"</td>";
		movie += "<td>"+cinema.audiCnt+"</td>";
		movie += "<td>"+cinema.audiAcc+"</td>";
	}
	
	movie += "</table>";
	
	$("body").append(movie);
	
	
	
	
	
});