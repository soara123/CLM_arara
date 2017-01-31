<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>CLM - 영화관</title>
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.datetimepicker.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css" />
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.datetimepicker.full.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.smooth-scroll.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/theater.js"></script>
</head>
<body>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="container" id="container-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home.do">C L M</a>
					<button class="btn btn-default navbar-btn visible-xs-inline-block loginBtn" style="margin-left:20px;">LOGIN</button>
				</div>
				<!-- /.navbar-header -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<div class="nav navbar-nav navbar-right hidden-xs">
						<button class="btn btn-default navbar-btn loginBtn">LOGIN</button>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="movie.do">영화 <span class="sr-only">(current)</span></a></li>
						<li class="active"><a href="theater.do">영화관</a></li>
						<li><a href="store.do">스토어</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
				<div id="loginPop">
					<div class="form-horizontal">
						<div class="form-group">
							<label class="sr-only" for="id">아이디</label>
							<div class="input-group">
								<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
								<input type="text" class="form-control" id="id" placeholder="아이디" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="sr-only" for="pwd">비밀번호</label>
							<div class="input-group">
								<div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
								<input type="password" class="form-control" id="pwd" placeholder="비밀번호" required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6" style="padding-right:5px;"><a href="javascript:" id="signinBtn" class="btn btn-primary btn-block">로그인</a></div>
								<div class="col-xs-6" style="padding-left:5px;"><a href="javascript:" class="btn btn-warning btn-block" id="loginCloseBtn">취소</a></div>
							</div>
						</div>
						<div class="form-group">
							<button class="btn btn-default btn-block" id="signupBtn" data-toggle="modal" data-target="#membershipForm">회원가입</button>
						</div>
						<div class="snsLogin">
							<p>--------------- SNS로 로그인하기 ---------------</p>
							<div class="row">
								<div class="col-xs-6">
									<a href="#" class="facebookLogin"><span class="sr-only">페이스북으로 로그인하기</span></a>
								</div>
								<div class="col-xs-6">
									<a href="#" class="twitterLogin"><span class="sr-only">트위터로 로그인하기</span></a>
								</div>
							</div>
						</div>
						<!-- /.snsLogin -->
					</div>
				</div>
				<!-- /#loginPop -->
			</div>
			<!-- /.container-->
		</div>
		<!-- /.navbar -->

		<div class="container-wrapper">
			<div class="theater">
				<div class="topBtn">
				   <div class="col">
				      <button style="border-radius: 40%; width: 50px; height: 50px;"><img src="${pageContext.request.contextPath }/resources/images/movie/top.png" style="width: 100%;"></button>
					</div>
				</div>
				<div class="bg" style="width:100%; padding: 0px 0px;">
					<!-- img-responsive 는 max width 100%가 들어있음-->
					<img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/theater/bg.png"/>
				</div>
				<div class="container">
					<div class="row">
					<div class="col-xs-12">
					<div id="one">
						<h3><img src="${pageContext.request.contextPath }/resources/images/common/sIcon.png"><span style="padding-left:10px; font-weight:bold; font-family:'Julius Sans One'">C L M</span></h3>
					<div class="info"></div>
					<div></div>
					<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
						<!-- 밑에 동그란거 -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" style="background-color:gray"></li>
							<li data-target="#myCarousel" data-slide-to="1" style="background-color:gray"></li>
							<li data-target="#myCarousel" data-slide-to="2" style="background-color:gray"></li>
							<li data-target="#myCarousel" data-slide-to="3" style="background-color:gray"></li>
							<li data-target="#myCarousel" data-slide-to="4" style="background-color:gray"></li>
							<li data-target="#myCarousel" data-slide-to="5" style="background-color:gray"></li>
							<li data-target="#myCarousel" data-slide-to="6" style="background-color:gray"></li>

						</ol>
						<div class="carousel-inner">
							<div class="item active">

								<img src="${pageContext.request.contextPath }/resources/images/theater/a1.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img src="${pageContext.request.contextPath }/resources/images/theater/a2.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img src="${pageContext.request.contextPath }/resources/images/theater/a3.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img src="${pageContext.request.contextPath }/resources/images/theater/a4.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img src="${pageContext.request.contextPath }/resources/images/theater/a5.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img src="${pageContext.request.contextPath }/resources/images/theater/a6.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img src="${pageContext.request.contextPath }/resources/images/theater/a7.jpg"/>
								<div class="carousel-caption">
								</div>
							</div>
						</div>
						<!-- 이전, 다음 control UI -->
						<a href="#myCarousel" class="left carousel-control" data-slide="prev" style="color:black">
							<span class="glyphicon glyphicon-chevron-left"></span>
							<span class="sr-only"></span>
						</a>
						<a href="#myCarousel" class="right carousel-control" data-slide="next" style="color:black">
							<span class="glyphicon glyphicon-chevron-right"></span>
							<span class="sr-only"></span>
						</a>
					</div>
						<!-- <div class="spacer"></div> -->
					</div>
					<div id="two">
						<h3><i class="glyphicon glyphicon-map-marker"></i>영화관 찾기</h3>
						<div class="find"></div>
				<div class="map_wrap">
				    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
						<div id="menu_wrap" class="bg_white">
				        <div class="option">
				            <div>
				                <form onsubmit="searchPlaces(); return false;">
				                    <input type="text" value="종로구 영화관" id="keyword" size="15"> <!-- placeholder-->
				                    <button type="submit">검색하기</button>
				                </form>
				            </div>
				        </div>

				        <ul id="placesList"></ul>
				        <div id="pagination"></div>
				    </div>
				</div>
				<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=691f8c6ff7b4424b9f01d2cc7f44e016&libraries=services"></script>
					<script>
					var markers = [];

					var mapContainer = document.getElementById('map'), // 지도를 표시할 div
					    mapOption = {
					        center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };

					// 지도를 생성합니다
					var map = new daum.maps.Map(mapContainer, mapOption);

					// 장소 검색 객체를 생성합니다
					var ps = new daum.maps.services.Places();

					// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
					var infowindow = new daum.maps.InfoWindow({zIndex:1});

					// 키워드로 장소를 검색합니다
					searchPlaces();

					// 키워드 검색을 요청하는 함수입니다
					function searchPlaces() {

					    var keyword = document.getElementById('keyword').value;

					    if (!keyword.replace(/^\s+|\s+$/g, '')) {
					        return false;
					    }

					    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
					    ps.keywordSearch( keyword, placesSearchCB);
					}

					// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
					function placesSearchCB(status, data, pagination) {
					    if (status === daum.maps.services.Status.OK) {

					        // 정상적으로 검색이 완료됐으면
					        // 검색 목록과 마커를 표출합니다
					        displayPlaces(data.places);

					        // 페이지 번호를 표출합니다
					        displayPagination(pagination);

					    } else if (status === daum.maps.services.Status.ZERO_RESULT) {

					        alert('검색 결과가 존재하지 않습니다.');
					        return;

					    } else if (status === daum.maps.services.Status.ERROR) {

					        alert('검색 결과 중 오류가 발생했습니다.');
					        return;

					    }
					}

					// 검색 결과 목록과 마커를 표출하는 함수입니다
					function displayPlaces(places) {

					    var listEl = document.getElementById('placesList'),
					    menuEl = document.getElementById('menu_wrap'),
					    fragment = document.createDocumentFragment(),
					    bounds = new daum.maps.LatLngBounds(),
					    listStr = '';

					    // 검색 결과 목록에 추가된 항목들을 제거합니다
					    removeAllChildNods(listEl);

					    // 지도에 표시되고 있는 마커를 제거합니다
					    removeMarker();

					    for ( var i=0; i<places.length; i++ ) {

					        // 마커를 생성하고 지도에 표시합니다
					        var placePosition = new daum.maps.LatLng(places[i].latitude, places[i].longitude),
					            marker = addMarker(placePosition, i),
					            itemEl = getListItem(i, places[i], marker); // 검색 결과 항목 Element를 생성합니다

					        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					        // LatLngBounds 객체에 좌표를 추가합니다
					        bounds.extend(placePosition);

					        // 마커와 검색결과 항목에 mouseover 했을때
					        // 해당 장소에 인포윈도우에 장소명을 표시합니다
					        // mouseout 했을 때는 인포윈도우를 닫습니다
					        (function(marker, title) {
					            daum.maps.event.addListener(marker, 'mouseover', function() {
					                displayInfowindow(marker, title);
					            });

					            daum.maps.event.addListener(marker, 'mouseout', function() {
					                infowindow.close();
					            });

					            itemEl.onmouseover =  function () {
					                displayInfowindow(marker, title);
					            };

					            itemEl.onmouseout =  function () {
					                infowindow.close();
					            };
					        })(marker, places[i].title);

					        fragment.appendChild(itemEl);
					    }

					    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
					    listEl.appendChild(fragment);
					    menuEl.scrollTop = 0;

					    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					    map.setBounds(bounds);
					}

					// 검색결과 항목을 Element로 반환하는 함수입니다
					function getListItem(index, places) {

					    var el = document.createElement('li'),
					    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
					                '<div class="info">' +
					                '   <h5>' + places.title + '</h5>';

					    if (places.newAddress) {
					        itemStr += '    <span>' + places.newAddress + '</span>' +
					                    '   <span class="jibun gray">' +  places.address  + '</span>';
					    } else {
					        itemStr += '    <span>' +  places.address  + '</span>';
					    }

					      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
					                '</div>';

					    el.innerHTML = itemStr;
					    el.className = 'item';

					    return el;
					}

					// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
					function addMarker(position, idx, title) {
					    var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
					        imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
					        imgOptions =  {
					            spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
					            spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					            offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
					        },
					        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
					            marker = new daum.maps.Marker({
					            position: position, // 마커의 위치
					            image: markerImage
					        });

					    marker.setMap(map); // 지도 위에 마커를 표출합니다
					    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

					    return marker;
					}

					// 지도 위에 표시되고 있는 마커를 모두 제거합니다
					function removeMarker() {
					    for ( var i = 0; i < markers.length; i++ ) {
					        markers[i].setMap(null);
					    }
					    markers = [];
					}

					// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
					function displayPagination(pagination) {
					    var paginationEl = document.getElementById('pagination'),
					        fragment = document.createDocumentFragment(),
					        i;

					    // 기존에 추가된 페이지번호를 삭제합니다
					    while (paginationEl.hasChildNodes()) {
					        paginationEl.removeChild (paginationEl.lastChild);
					    }

					    for (i=1; i<=pagination.last; i++) {
					        var el = document.createElement('a');
					        el.href = "#";
					        el.innerHTML = i;

					        if (i===pagination.current) {
					            el.className = 'on';
					        } else {
					            el.onclick = (function(i) {
					                return function() {
					                    pagination.gotoPage(i);
					                }
					            })(i);
					        }

					        fragment.appendChild(el);
					    }
					    paginationEl.appendChild(fragment);
					}

					// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
					// 인포윈도우에 장소명을 표시합니다
					function displayInfowindow(marker, title) {
					    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

					    infowindow.setContent(content);
					    infowindow.open(map, marker);
					}

					 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
					function removeAllChildNods(el) {
					    while (el.hasChildNodes()) {
					        el.removeChild (el.lastChild);
					    }
					}
					var navHeight=$(".nav").innerHeight();
						//플러그인 동작시키기
						$("#myNav a").smoothScroll({//밑에 옵션은 플러그인 제작자가 만들어놔야 사용 가능.
							offset: -navHeight,
							speed: 600,
							afterScroll: function(){
							$(this)
							.parent()
							.addClass("active")
							.siblings()
							.removeClass("active");
							}
						});
				</script>
				</div>
					<div id="three">
					<h3><i class="glyphicon glyphicon-road"></i> 교통정보</h3>
						<div style="border-bottom:1px solid black"></div>
						<table class="table table-hover">
						<!-- <thead></thead> -->
							<tbody>
								<tr>
									<td style="width:150px;height:150px;"><center><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/theater/icon_bus.png"/>버스 이용시</center></td>
									<td> · 간선버스 (B) : 103번, 143번, 151번, 152번, 163번, 261번, 262번, 500번, 701번, 105번, 300번, 401번, 406번, 501번</br>
										 · 지선버스 (G) : 0014번, 0015번, 7015번, 7017번, 7020번, 7021번, 7023 번</br>
										 · 광역버스 (R) : 9701번, 9705번, 9301번, 9400번, 9401번, 9402번, 9710번</br>
										 · 노란버스 (Y) : 01번, 02번
									</td>
								</tr>
								<tr>
									<td style="width:150px;height:150px;"><center><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/theater/icon_subway.png"/>지하철 이용시</center></td>
									<td> · 4호선 명동역 : 5번, 6번 출구</br>
										 · 2호선 을지로입구역 : 7번 출구 (도보 직진 250미터 > 우측 에스컬레이터 이용 후 엘리베이터 이용 9층)</td>
								</tr>
								<tr>
									<td style="width:150px;height:150px;"><center><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/theater/icon_car.png"/>자가용 이용시</td>
									<td> · 서울시 중구 OO동</td>

								</tr>
								<tr>
									<td style="width:150px;height:150px;"><center><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/theater/icon_pkLot.png"/>주차안내</td>
									<td>위치 : CLM백화점 본점 지하주차장 (주말 & 공휴일 : 임시주차장 포함)
										요금 (영화관람시)<br/>
										1. 평일 : 2시간 무료 주차권 제공 [매표소에서 당일 영화 티켓 제시시 주차권 지급]<br/>
										2. 주말 & 공휴일 : 주차 할인권 판매 (1시간/ 4,500원)
																						[매표소에서 최대 3매까지 구입 가능 / 무료 주차 제공 없음]<br/>
										3. 20시 이후 영화 관람시 3시간 무료 주차권 제공[매표소에서 당일 영화 티켓 제시시 주차권 지급]<br/>
										* 무료 주차권 및 할인권 미지참시 일반요금 적용<br/>
										- 일반요금 : 10분 1,000원 / 1시간 6,000원<br/>
										* 무료 및 할인 주차권과 DM쿠폰 합산시 최대 3시간까지
										무료주차 가능합니다.<br/>
										* 백화점 구매영수증과 합산하여 무료주차 시간 연장
										가능합니다.<br/>
										* 주말 및 공휴일에는 대중교통을 이용하여 주시면 보다 편리한 영화관람이 가능하오니, 고객님들의 적극적인
										참여 부탁드립니다.</td>
									</tr>
								</tbody>
							</table>

										<div style="border-bottom:1px solid black; margin-bottom: 20px"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
		<!-- /.container-wrapper -->

		<div id="footer">
			<div class="container text-center">
				<div class="row">
					<div class="col-xs-12 col-sm-6 copiright">
						Copyright 2016 by CLM. All rights reserved.
					</div>
					<div class="col-xs-12 col-sm-6 snsBtns">
						<a href="https://www.facebook.com/"><img src="${pageContext.request.contextPath }/resources/images/common/iconFacebook.png" alt="페이스북으로 바로가기" /></a>
						<a href="https://www.instagram.com/"><img src="${pageContext.request.contextPath }/resources/images/common/iconInstagram.png" alt="인스타그램으로 바로가기" /></a>
						<a href="https://twitter.com/"><img src="${pageContext.request.contextPath }/resources/images/common/iconTwitter.png" alt="트위터로 바로가기" /></a>
						<a href="https://www.youtube.com/?gl=KR"><img src="${pageContext.request.contextPath }/resources/images/common/iconYoutube.png" alt="유튜브로 바로가기" /></a>
					</div>
				</div>
			</div>
			<!-- /.container -->
		</div>
		<!-- /#footer -->
		<div id="membershipForm" class="modal modal-center fade" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel">
			<div class="modal-dialog modal-center" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
						<h3><span class="glyphicon glyphicon-pencil" style="padding:0 20px; font-size:20px;"></span>회원가입</h3>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12 col-sm-10 col-sm-offset-1">
								<div class="form-horizontal">
									<div class="row">
										<p class="help-block"><span id="important">*</span> 표시는 반드시 입력하세요</p>
										<div class="col-xs-6">
											<div class="form-group">
												<div class="col-xs-4">
													<span id="important">*</span><label for="name">성</label>
												</div>
												<div class="col-xs-8">
													<input class="form-control" type="text" id="lastName" name="lastName">
												</div>
											</div>
										</div>
										<div class="col-xs-6">
											<div class="form-group">
												<div class="col-xs-4">
													<span id="important">*</span><label for="name">이름</label>
												</div>
												<div class="col-xs-8">
													<input class="form-control" type="text" id="firstName" name="firstName">
													<p class="help-block">반드시 입력하세요</p>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-4">
											<span id="important">*</span><label for="email">이메일</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" type="text" id="email" name="email" placeholder="@email.com">
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-4">
											<span id="important">*</span><label for="pwd">비밀번호</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" type="password" id="pwd" name="pwd">
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-4">
											<span id="important">*</span><label for="pwd">비밀번호 확인</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" type="password" id="pwdconfirm" name="pwdconfirm">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12 col-sm-10 col-sm-offset-1">
								<div class="row">
									<div class="col-xs-12">
										<div class="col-xs-4">
											<label for="date">생년월일</label>
										</div>
										<div class="col-xs-8">
											<input type="text" id="date" name="birth" class="form-control">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-10 col-sm-offset-1">
								<div class="row">
									<div class="col-xs-12">
										<div class="col-xs-4">
											<label for="date">휴대전화</label>
										</div>
										<div class="col-xs-8">
											<input type="text" name="phoneNumder" placeholder="-(하이픈) 없이 입력" class="form-control">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-6 col-xs-offset-1">
							<div class="checkbox">
								<label>
									<input type="radio" name="gender" value="man" checked="checked">남&nbsp;&nbsp;&nbsp;
									<input type="radio" name="gender" value="man">여
								</label>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn" type="button" id="signupBtn2">가입</button>
						<button class="btn" type="reset" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /#membershipForm -->
		<div id="signinModal" class="modal fade" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title"><i class="glyphicon glyphicon-alert" style="margin-right:10px"></i>일치하는 회원 정보가 없습니다.</h4>
					</div>
					<div class="modal-body">
						<p>회원가입 후 이용해주세요.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- /#signinModal -->
		<div id="signupModal" class="modal fade" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title"><i class="glyphicon glyphicon-ok-sign" style="margin-right:10px"></i>회원가입이 완료 되었습니다.</h4>
					</div>
					<div class="modal-body">
						감사합니다.
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- /#signupModal -->
		<div id="idModal" class="modal fade" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<i class="glyphicon glyphicon-alert" style="margin-right:10px"></i>아이디를 입력해 주세요.
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- /#idModal -->
		<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<i class="glyphicon glyphicon-alert" style="margin-right:10px"></i>비밀번호를 입력해주세요.
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- /#pwdModal -->
	</div>
	<!-- /#wrapper -->
</body>
</html>