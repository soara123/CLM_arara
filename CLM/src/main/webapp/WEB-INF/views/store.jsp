<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>CLM - 스토어</title>
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.datetimepicker.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css" />
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.datetimepicker.full.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/store.js"></script>

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
						<li><a href="theater.do">영화관</a></li>
						<li class="active"><a href="store.do">스토어</a></li>
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
			<div class="store" style="width:100%; padding:0px 0px;">
			
				<div class="topBtn">
				   <div class="col">
				      <button style="border-radius: 40%; width: 50px; height: 50px;"><img src="${pageContext.request.contextPath }/resources/images/movie/top.png" style="width: 100%;"></button>
				   </div>
				</div>
				<!-- 상단 이미지 -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12" style="padding:0px 0px;">
							<img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/top3.jpg">
						</div>
					</div>
				</div>
				<!-- 중간 이름 -->
				<div class="container">
				<div class="row">
					<div class="col-xs-12" style="padding-top:15px;">
						<span><h2 style="font-weight:bold"><img src="${pageContext.request.contextPath }/resources/images/common/sIcon.png"><span style="padding-left:10px; font-family:'Julius Sans One'">C L M</span> 티켓</h2></span>
					</div>
				</div>
				<!-- 여백 -->
				<div class="row">
					<div class="col-xs-12 hideMenu" style="height:30px;"></div>
				</div>
				<!-- 첫번째 열 -->
				<div class="row" style="margin: 0 auto">
					<!-- 첫번째 행 -->
					<div class="container">
					<div style="border-top:3px solid black; height:25px;"></div>
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/pack1.png" data-toggle="modal" data-target="#storeMenu1">
						<div id="storeMenu1" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>싱글 패키지</h3>
												<p>관람권 1매, 팝콘(R), 탄산음료(R)</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/pack1.png"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><del>15,500원</del><span>&nbsp;&nbsp;&nbsp;14,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus1">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount1" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus1">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal1" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn1" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12"">
								<h4>싱글패키지</h4>
									<div class="row">
										<div class="col-xs-10">관람권 1매, 팝콘(R), 탄산음료(R)
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del>15,500원</del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>14,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>

					<!-- 두번째 행 -->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/pack2.jpg" data-toggle="modal" data-target="#storeMenu2">
						<div id="storeMenu2" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>러브콤보 패키지</h3>
												<p>관람권 2매, 러브콤보(팝콘 L1, 탄산음료 R2)</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/pack2.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><del>26,500원</del><span>&nbsp;&nbsp;&nbsp;25,500원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus2">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount2" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus2">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal2" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn2" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>러브콤보 패키지</h4>
									<div class="row">
										<div class="col-xs-12" style="height:40px;">관람권 2매, 러브콤보(팝콘 L1, 탄산음료 R2)
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 " style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del>26,500원</del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>25,500원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>

					<!-- 세번째 행-->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/pack3.jpg" data-toggle="modal" data-target="#storeMenu3">
						<div id="storeMenu3" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>패밀리 패키지</h3>
												<p>관람권 3매, 팝콘 R2, 탄산음료 R2)</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/pack3.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><del>37,000원</del><span>&nbsp;&nbsp;&nbsp;34,500원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus3">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount3" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus3">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal3" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn3" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>패밀리 패키지</h4>
									<div class="row">
										<div class="col-xs-12">관람권 3매, 팝콘 R2, 탄산음료 R2)
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del>37,000원</del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>34,500원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 hideMenu" style="height: 30px;"></div>
				</div>
				<!-- 두번째 row -->
				<div class="row" style="margin: 0 auto">
					<!-- 첫번째 행 -->
					<div class="container">
					<div class="col-xs-18 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/pack4.jpg" data-toggle="modal" data-target="#storeMenu4">
						<div id="storeMenu4" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>패밀리 패키지</h3>
												<p>관람권 4매, 팝콘(R)2, 음료(R)2, 나쵸1, 팩오징어 1</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/pack4.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><del>50,000원</del><span>&nbsp;&nbsp;&nbsp;46,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus4">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount4" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus4">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal4" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn4" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>패밀리 패키지</h4>
									<div class="row">
										<div class="col-xs-12" style="height:40px;">관람권 4매,팝콘(R)2,음료(R)2,나쵸1,팩오징어1
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del>50,000원</del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>46,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>

					<!-- 두번째 행 -->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/newticket3.jpg" data-toggle="modal" data-target="#storeMenu5">
						<div id="storeMenu5" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>일반관람권</h3>
												<p>2D 일반관람권</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/newticket3.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><span>&nbsp;&nbsp;&nbsp;9,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus5">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount5" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus5">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal5" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn5" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>일반관람권</h4>
									<div class="row">
										<div class="col-xs-12">2D 일반관람권
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>9,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>
					<!-- 세번째 행 -->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/ticket2.jpg" data-toggle="modal" data-target="#storeMenu6">
						<div id="storeMenu6" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>[특별관] MX/M2관 관람권</h3>
												<p>세계 최고의 마이어사운드 체험!</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/ticket2.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><span>&nbsp;&nbsp;&nbsp;11,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus6">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount6" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus6">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal6" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn6" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>[특별관] MX/M2관 관람권</h4>
									<div class="row">
										<div class="col-xs-12">세계 최고의 마이어사운드 체험!
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del></del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>11,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 hideMenu" style="height: 30px;"></div>
				</div>

				<!-- 세번째 row -->
				<div class="row" style="margin: 0 auto">
					<!-- 첫번째 행 -->
					<div class="container">
					<div class="col-xs-18 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/newticket3.jpg" data-toggle="modal" data-target="#storeMenu7">
						<div id="storeMenu7" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>3D 관람권</h3>
												<p>3D 일반관람권</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/newticket3.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><span>&nbsp;&nbsp;&nbsp;12,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus7">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount7" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus7">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal7" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn7" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>3D관람권</h4>
									<div class="row">
										<div class="col-xs-12">3D 일반관람권
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del></del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>12,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>

					<!-- 두번째 행 -->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/ticket4.jpg" data-toggle="modal" data-target="#storeMenu8">
						<div id="storeMenu8" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>[특별관] 컴포트룸 관람권</h3>
												<p>프리미엄 시네마</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/ticket4.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><span>&nbsp;&nbsp;&nbsp;11,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus8">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount8" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus8">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal8" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn8" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>[특별관] 컴포트룸 관람권</h4>
									<div class="row">
										<div class="col-xs-12">프리미엄 시네마
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del></del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>11,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>
					<!-- 세번째 행 -->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/ticket3.jpg" data-toggle="modal" data-target="#storeMenu9">
						<div id="storeMenu9" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 티켓</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 text-center"  style="border-right:1px solid lightgray"><br><br>판매기간 : 2016-06-01 ~</div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
												<h3>[특별관] 스위트룸 관람권</h3>
												<p>웰컴패키지가 제공되는 프리미엄 시네마</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/ticket3.jpg"></div>
											<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7"><br><br> ·유효기간 :예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.
											·판매수량 :1회 8개 구매가능
											·구매 후 취소 :구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><span>&nbsp;&nbsp;&nbsp;30,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="minus9">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount9" value="0" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="plus9">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal9" class="col-xs-4" style="font-weight:bold; font-size:23px;">0</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn9" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold"><i>구매 전 유의 사항!
													하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다.</i></p><br>
													<p>본 상품은 일부 지점에서 사용이 불가합니다.</p>
													<p>본 상품은 MMS를 통해 전송 되며 전송된 MMS는 CLM 홈페이지 및 모바일에서만 예매 가능합니다.</p>
													<p>어플 및 홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 - PIN번호입력 - 결제</p>
													<p>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)</p>
													<p>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. (모바일 관람권에서는 매점쿠폰 확인 불가)</p>
													<p>구매내역은 CLM 홈페이지 및 모바일 앱의 구매내역에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다.</p>
													<p>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</p>
													<p>본 관람권으로 관람 시 1매 당 900점의 멤버십 포인트가 적립됩니다.(ex. 2인패키지로 관람 시 1,800점 / 3인패키지 관람 시 2,700점 적립)</p>
													<p>본 상품은 일부 지점에서 사용하실 수 없습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>[특별관] 스위트룸 관람권</h4>
									<div class="row">
										<div class="col-xs-12">웰컴패키지가 제공되는 프리미엄 시네마
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del></del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>30,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>
					</div>
				</div>


				<!-- 메가 찬스 -->
				<!-- 여백 -->
				<div class="row" style="height:70px;"></div>
				<!-- 중간 메뉴 -->
				<div class="row">
					<div class="col-xs-12">
						<span><h2 style="font-weight:bold"><img src="${pageContext.request.contextPath }/resources/images/common/sIcon.png"><span style="padding-left:10px; font-family:'Julius Sans One'">C L M</span> 찬스</h2></span>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12" style="height:30px;"></div>
				</div>
				<!-- 첫번째 열 -->
				<div class="row" style="margin: 0 auto">
					<!-- 첫번째 행 -->
					<div class="container">
					<div style="border-top:3px solid black; height:25px;"></div>
					<div class="col-xs-18 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/beatles.jpg" data-toggle="modal" data-target="#storeChance1">
						<div id="storeChance1" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 찬스</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 text-center">
												<h3>[비틀스 에잇데이즈어위크] 1+1 관람권</h3>
												<p>[비틀스 에잇데이즈어위크] 1+1 관람권</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-5" style="border-right:1px solid lightgray;"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/store/beatles.jpg"></div>
											<div class="col-xs-7"><br><br> ·유효기간 :~2016.10.24까지 ＜주말/공휴일 사용가능, 종영시 사용 불가＞
											·판매수량 :657/1000개 한정1회 1개 구매가능 ·구매 후 취소 :구매 후 10일 이내 취소 가능합니다. ＜10일 이후 취소 불가＞</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><del>10,000원</del><span>&nbsp;&nbsp;&nbsp;9,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="chanceMinus1" disabled="diabled">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount1" value="1" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="chancePlus1" disabled="diabled">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal1" class="col-xs-4" style="font-weight:bold; font-size:23px;">9000</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn10" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold; color:red;">
													관람권 유효기간과 상관없이 영화는 조기종영될 수 있으며, 영화관에 따라 상영되지 않을 수 있습니다.</p>
													<p>구매 시 해당 영화관에 <비틀스 에잇데이즈어위크> 상영시간표를 먼저 확인 후에 구매해주세요.</p>
													<p><비틀스 에잇데이즈어위크> 영화에 한 해 관람 가능하며, 영화 종영 시 사용이 불가합니다.</p>
													<p>해당 관람권은 선착순 판매 제품으로 구매 후 10일이내  취소 가능합니다. (유효기간 내 예매 취소 시 재예매 가능)</p>
													<p>본 관람권은 <비틀스 에잇데이즈어위크> 일반 디지털(2D) 상영관에만 적용 됩니다. (특별관 제외)</p>
													<p>해당 관람권은 1인 1회로 구매가 제한됩니다.</p>
													<p>해당 관람권은 온라인 전용 상품으로 CLM 홈페이지와 어플에서만 사용이 가능합니다. (모바일 PC 버전에서는 구매 불가)</p>
													<p>구매하신 관람권은 예매창에서 [스토어 관람권] 선택 후 결제 가능합니다.</p>
													<p>발송된 쿠폰번호 1개로 2인 일괄 사용 됩니다. (분리 사용 불가)</p>
													<p>구매하신 관람권은 특별 할인 상품으로 멤버십 포인트는 관람 익일 장당 500점 (총 1,000점) 으로 적립 됩니다. *멤버십 포인트 외 타 적립 불가</p>
													<p>구매하신 관람권은 마이페이지 → 스토어 구매내역에서 확인 가능합니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>[비틀스 에잇데이즈어위크] 1+1 관람권</h4>
									<div class="row">
										<div class="col-xs-10">[비틀스 에잇데이즈어위크] 1+1 관람권
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del>10,000원</del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>9,000원</h3>
										</div>
									</div>
							</div>
						</div>
					</div>

					<!-- 두번째 행 -->
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="border:1px solid lightgray; margin:0 auto;">
						<img class="img-responsive pointer" src="${pageContext.request.contextPath }/resources/images/store/inferno.jpg" data-toggle="modal" data-target="#storeChance2">
						<div id="storeChance2" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" style="font-size:50px;">&times;</button>
										<h3>CLM 찬스</h3>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 text-center">
												<h3>[인페르노] 1+1 관람권</h3>
												<p>[인페르노] 1+1 관람권</p>
											</div>
										</div>
										<div class="row" style="border-top:1px solid lightgray">
											<div class="col-xs-5" style="border-right:1px solid lightgray;"><img class="${pageContext.request.contextPath }/resources/img-responsive" src="${pageContext.request.contextPath }/resources/images/store/inferno.jpg"></div>
											<div class="col-xs-7"><br><br> ·유효기간 :~2016.10.24까지 ＜주말/공휴일 사용가능, 종영시 사용 불가＞
											·판매수량 :541/1000개 한정1회 1개 구매가능 ·구매 후 취소 :구매 후 10일 이내 취소 가능합니다. ＜10일 이후 취소 불가＞</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 스토어 판매가</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><del>10,000원</del><span>&nbsp;&nbsp;&nbsp;9,000원</span></div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">· 수량</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												<button class="btn btn-xs" id="chanceMinus2" disabled="disabled">
													<i class="glyphicon glyphicon-minus"></i>
												</button>
													<input id="storeAmount2" value="1" style="width:25px; text-align:center;">
												<button class="btn btn-xs" id="chancePlus2" disabled="disabled">
													<i class="glyphicon glyphicon-plus"></i>
												</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">· 총 상품금액 :</div>
											<div id="storeTotal2" class="col-xs-4" style="font-weight:bold; font-size:23px;">9000</div>
										</div>
										<div class="row">
											<div class="col-xs-5 hideP" style="height:30px; border-right:1px solid lightgray;"></div>
											<div class="col-xs-3"></div>
											<div class="col-xs-4">
												<button id="buyBtn11" class="btn btn-primary" style="background-color:yellowgreen; color:black; ">구매하기</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<div class="row">
											<h4 class="pull-left" style="font-weight:bold">&nbsp;&nbsp;상품이용안내</h4>
										</div>
										<div class="row">
											<div class="storeInfo">
												<div class="infoDetail">
													<p style="font-weight:bold; color:red;">
													관람권 유효기간과 상관없이 영화는 조기종영될 수 있으며, 영화관에 따라 상영되지 않을 수 있습니다.</p>
													<p>구매 시 해당 영화관에 <인페르노> 상영시간표를 먼저 확인 후에 구매해주세요.</p>
													<p><인페르노> 영화에 한 해 관람 가능하며, 영화 종영 시 사용이 불가합니다.</p>
													<p>해당 관람권은 선착순 판매 제품으로 구매 후 10일이내  취소 가능합니다. (유효기간 내 예매 취소 시 재예매 가능)</p>
													<p>본 관람권은 <인페르노> 일반 디지털(2D) 상영관에만 적용 됩니다. (특별관 제외)</p>
													<p>해당 관람권은 1인 1회로 구매가 제한됩니다.</p>
													<p>해당 관람권은 온라인 전용 상품으로 CLM 홈페이지와 어플에서만 사용이 가능합니다. (모바일 PC 버전에서는 구매 불가)</p>
													<p>구매하신 관람권은 예매창에서 [스토어 관람권] 선택 후 결제 가능합니다.</p>
													<p>발송된 쿠폰번호 1개로 2인 일괄 사용 됩니다. (분리 사용 불가)</p>
													<p>구매하신 관람권은 특별 할인 상품으로 멤버십 포인트는 관람 익일 장당 500점 (총 1,000점) 으로 적립 됩니다. *멤버십 포인트 외 타 적립 불가</p>
													<p>구매하신 관람권은 마이페이지 → 스토어 구매내역에서 확인 가능합니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h4>[인페르노] 1+1 관람권</h4>
									<div class="row">
										<div class="col-xs-12">[인페르노] 1+1 관람권
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12" style="height:15px;"></div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="height:15px;">
											<h4><del>10,000원</del></h4>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right">
											<h3>9,000원</h3>
										</div>
									</div>
							</div>
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