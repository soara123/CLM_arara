<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>CLM - 영화</title>
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.datetimepicker.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fotorama.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css" />
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.datetimepicker.full.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/fotorama.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/movie.js"></script>
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
						<li class="active"><a href="movie.do">영화 <span class="sr-only">(current)</span></a></li>
						<li><a href="theater.do">영화관</a></li>
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
			<div class="movie">
				<div class="topBtn">
					   <div class="col">
					      <button style="border-radius: 40%; width: 50px; height: 50px;"><img src="${pageContext.request.contextPath }/resources/images/movie/top.png" style="width: 100%;"></button>
					   </div>
					</div>
					<div>
					<div class="row1">
						<div><img src="${pageContext.request.contextPath }/resources/images/movie/et.jpg"/>

							<ul class="nav nav-tabs nav-justified  ">
							    <li class="active ">
							      <a href="#one" data-toggle="tab" id="NewMovi">최신개봉작</a>
							    </li>
							    <li>
							      <a href="#two" data-toggle="tab" id="CommMovi">상영예정작</a>
							    </li>

							    <li>
							      <a href="#three" data-toggle="tab" id="Time">상영시간표</a>
							    </li>
							    <li>
							      <a href="#four" data-toggle="tab" id="WantMovi">보고싶은 영화</a>
							    </li>
						    </ul>
						</div>
					</div>
				</div>


					<div class="tab-content container">
				<!-- 최신개봉작 -->
						<div id="one" class="tab-pane active ">
							<div class="row2">
								<div id="img1" class="cimg col-xs-4 col-md-3 col-lg-3 "><img src="${pageContext.request.contextPath }/resources/images/movie/a.jpg"></div>
								<div id="img2" class="cimg  col-xs-4 col-md-3 col-lg-3"><img src="${pageContext.request.contextPath }/resources/images/movie/d.jpg"/></div>
								<div id="img3" class="cimg  col-xs-4 col-md-3 col-lg-3"><img src="${pageContext.request.contextPath }/resources/images/movie/g.jpg"/></div>
								<div id="img4" class="cimg  col-xs-4 col-md-3 col-lg-3"><img src="${pageContext.request.contextPath }/resources/images/movie/lala.jpg"/>
								</div>
								<div id="img5" class="cimg  himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/love.jpg"/></div>
								<div id="img6" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide"><img src="${pageContext.request.contextPath }/resources/images/movie/m.jpg"/></div>
								<div id="img7" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/res.jpg"/></div>
								<div id="img8" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/sing.jpg"/></div>
								<div id="img9" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide"><img src="${pageContext.request.contextPath }/resources/images/movie/st.jpg"/></div>
								<div id="img10" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide"><img src="${pageContext.request.contextPath }/resources/images/movie/tk.jpg"/></div>
								<div id="img11" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide"><img src="${pageContext.request.contextPath }/resources/images/movie/yn.jpg"/></div>
								<div id="img12" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide"><img src="${pageContext.request.contextPath }/resources/images/movie/14.jpg"/></div>
							</div>
							<center><span class="glyphicon glyphicon-plus plus col-xs-12"> 더보기  </span></center>
						</div>

				<!-- 상영예정작 -->

						<div id="two" class="tab-pane  ">
							<div class="row3 CommMovi">
								<div id="new-1" class="cimg col-xs-4 col-md-3 col-lg-3 "><img src="${pageContext.request.contextPath }/resources/images/movie/new-1.jpg"/></div>
								<div id="new-2" class="cimg col-xs-4 col-md-3 col-lg-3 "><img src="${pageContext.request.contextPath }/resources/images/movie/new-2.jpg"/></div>
								<div id="new-3" class="cimg col-xs-4 col-md-3 col-lg-3 "><img src="${pageContext.request.contextPath }/resources/images/movie/new-3.jpg"/></div>
								<div id="new-4" class="cimg col-xs-4 col-md-3 col-lg-3 "><img src="${pageContext.request.contextPath }/resources/images/movie/new-4.jpg"/></div>
								<div id="new-5" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/new-5.jpg"/></div>
								<div id="new-6" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/new-6.jpg"/></div>
								<div id="new-7" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/new-7.jpg"/></div>
								<div id="new-8" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/new-8.jpg"/></div>
								<div id="new-9" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/new-9.jpg"/></div>
								<div id="new-10" class="cimg himg col-xs-4 col-md-3 col-lg-3 hide "><img src="${pageContext.request.contextPath }/resources/images/movie/new-10.jpg"/></div>

							</div>
							<center><span class="glyphicon glyphicon-plus plus col-xs-12"> 더보기  </span></center>
						</div>


				<!-- 상영시간표 -->
						<div id="three" class="tab-pane con">
							<div class="row4">
								<div class="TimeTitle" >
									<div class="row4img ">
										<a href="#in"><img src="${pageContext.request.contextPath }/resources/images/movie/a.jpg"/></a>
										<a href="#luc"><img src="${pageContext.request.contextPath }/resources/images/movie/d.jpg"/></a>
										<a href="#man"><img src="${pageContext.request.contextPath }/resources/images/movie/g.jpg"/></a>
										<a href="#mis"><img src="${pageContext.request.contextPath }/resources/images/movie/lala.jpg"/></a>
										<a href="#ba"><img src="${pageContext.request.contextPath }/resources/images/movie/love.jpg"/></a>
										<a href="#do"><img src="${pageContext.request.contextPath }/resources/images/movie/m.jpg"/></a>
										<a href="#a"><img src="${pageContext.request.contextPath }/resources/images/movie/res.jpg"/></a>
										<a href="#m"><img src="${pageContext.request.contextPath }/resources/images/movie/ru.jpg"/></a>
										<a href="#lib"><img src="${pageContext.request.contextPath }/resources/images/movie/sing.jpg"/></a>

									</div>
								</div>
								<!-- <center><img style="margin-top: 50px; margin-bottom: 30px;" src="images/movie/Time.png"/></center> -->
								<div style="border-top: 1px solid black; margin-top: 20px; margin-bottom: 20px; "></div>
								<div class="timetable" data-spy="scroll" data-offset="0" data-target="#tableScroll">
								<div id="tableScroll">
									<table class="table table-striped" id="in">
									<tr>
									<td colspan="6">
										<span style="font-size: 30px; font-weight: bold;">어쌔신 크리드</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/15.png"/>
										</td>
									</tr>

							     		<tbody>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>

											 </tr>
							            </tbody>
							        </table>
							        <table class="table table-striped" id="luc">
									<tbody>
							     			<tr>
							     				<td colspan="6">
							     					<span style="font-size: 30px; font-weight: bold;">딥워터 호라이즌</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/15.png"/>
							     				</td>
							     			</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>

											 </tr>
							            </tbody>
							        </table>
							        <table class="table table-striped" id="man">
									<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">공조</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/청불.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>
											</tr>
							            </tbody>
							        </table>
							        <table class="table table-striped" id="mis">
										<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">미스 페레그린과 이상한 아이들의 집</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/12.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>

											 </tr>
							            </tbody>
							        </table>
							          <table class="table table-striped" id="ba">
									<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">바스티유 데이</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/15.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>
											</tr>
							            </tbody>
							        </table>
							          <table class="table table-striped" id="do">
									<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">닥터 스트레인지</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/12.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>
											</tr>
							            </tbody>
							        </table>
							          <table class="table table-striped" id="a">
									<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">아수라<span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/청불.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>
											</tr>
							            </tbody>
							        </table>
							          <table class="table table-striped" id="m">
									<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">미스터 캣</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/청불.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>
											</tr>
							            </tbody>
							        </table>
							          <table class="table table-striped" id="lib">
									<tbody>
							     		<tr>
							     			<td colspan="6">
							     				<span style="font-size: 30px; font-weight: bold;">립반윙클의 신부</span><img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath }/resources/images/movie/청불.png"/>
							     			</td>
							     		</tr>
							                <tr>
							                    <td></br>보미관</td>
							                    <td></br>09:00</td>
							                    <td></br>11:30</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>아라관</td>
							                    <td></br>10:00</td>
							                    <td></br>12:30</td>
							                    <td></br>17:30</td>
							                    <td></br>20:00</td>
							                    <td></br>22:150</td>

							                </tr>
							                <tr>
							                    <td></br>우진관</td>
							                    <td></br>12:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:00</td>
							                    <td></br>22:40</td>

							                </tr>
							                <tr>
							                    <td></br>태영관</td>
							                    <td></br>08:00</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>18:45</td>
							                    <td></br>21:00</td>

							                </tr>
							                <tr>
							                    <td></br>???관</td>
							                    <td></br>11:00</td>
							                    <td></br>14:30</td>
							                    <td></br>17:00</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>팝콘관</td>
							                    <td></br>09:00</td>
							                    <td></br>15:30</td>
							                    <td></br>18:00</td>
							                    <td></br>21:30</td>
							                    <td></br>23:20</td>

											 </tr>
											    <tr>
							                    <td></br>라면관</td>
							                    <td></br>10:45</td>
							                    <td></br>14:30</td>
							                    <td></br>17:50</td>
							                    <td></br>20:30</td>
							                    <td></br>23:30(심야)</td>

											 </tr>
											    <tr>
							                    <td></br>사과관</td>
							                    <td></br>11:00</td>
							                    <td></br>13:30</td>
							                    <td></br>16:30</td>
							                    <td></br>20:30</td>
							                    <td></br>22:30</td>
											</tr>
							            </tbody>
							        </table>
								</div>
							</div>
									<div style="border-top: 1px solid black; margin-top: 20px; margin-bottom: 20px; "></div>
							</div>
						</div>
				<!-- 보고싶은영화 -->
						<div id="four">

						</div>
					</div>


				<!-- 보고싶은영화 모달 -->
				<div id="WantModal"   class="modal fade ">
					<div class="modal-dialog" >
						<div class="modal-content">
							<!-- <div class="modal-header" style="background-color: skyblue;">
								<button class="close" data-dismiss="modal" style="font-size: 30px;">&times;</button>
								<center><h6 style="font-size: large; font-weight: bold; ">알림</h6></center>
							 </div> -->
							<div class="modal-body">
							<button class="close" data-dismiss="modal" style="font-size: 30px;">&times;</button>

								<center><p style="font-weight: bold;">로그인 후 이용해주세요 </p></center>
							</div>
							<!-- <div class="modal-footer">
								 <button class="btn btn-primary" data-dismiss="modal">확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -
							</div>  -->
						</div>
					</div>
				</div>



				<!-- 상영예정작 모달창 -->
				<div id="CommModal" class="modal fade"  >
					<div class="modal-dialog" >
						<div class="modal-content">
							<div class="modal-header ">
								<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h4>상영예정작 입니다</h4>
							</div>
							<div class="modal-body">
								<p>상영시작  후 영화 정보 보기가 가능합니다</p>
							</div>
							<div class="modal-footer">
								 <button class="btn btn-primary" data-dismiss="modal">확인</button>
								<!--<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>


				<!-- 최신 개봉작 모달창 -->
				<!-- 인페르노 -->
				<div id="Inferno" class="modal fade">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3>인페르노 </h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/1.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6>미스터리,스릴러 | 미국,일본,터키,헝가리 | 121분 | 2016.10.19개봉</h6></p>
								<p ><h5>감독</h5><h6>론 하워드</h6></p>
								<p ><h5>출연</h5><h6>톰 행크스(로버트 랭던), 펠리시티 존스 (시에나 브룩스), 벤 …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=129461" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 15세 관람가</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#three"  class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<p><h4>암호를 풀지 못하면 지옥의 문이 열린다!</h4></p>
								<p><h5>전세계 인구를 절반으로 줄일 것을 주장한 천재 생물학자 ‘조브리스트’의 갑작스러운 자살 이후 하버드대 기호학자 ‘로버트 랭던’은 기억을 잃은 채 피렌체의 한 병원에서 눈을 뜬다.<br/>
								 담당 의사 ‘시에나 브룩스’의 도움으로 병원을 탈출한 랭던은 사고 전 자신의 옷에서 의문의 실린더를 발견하고, 단테의 신곡 [지옥편]을 묘사한 보티첼리의 ‘지옥의 지도’가 숨겨져 있음을 알게 된다. 하지만, 원본과 달리 지옥의 지도에는 조작된 암호들이 새겨져 있고, 랭던은 이 모든 것이 전 인류를 위협할 거대한 계획과 얽혀져 있다는 것을 직감하게 되는데…</h5>

								</p>
								<br/>

								<p><h5>거대한 음모를 밝혀낼 유일한 단서</h5></p>
								<br/>
								<p><h5>단테의 지옥은 소설이 아니라 예언이다!</h5></p>
								<br/>

								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="i-img" src="${pageContext.request.contextPath }/resources/images/movie/i-1.jpg" />
									<img class="i-img" src="${pageContext.request.contextPath }/resources/images/movie/i-2.jpg"/>
									<img class="i-img" src="${pageContext.request.contextPath }/resources/images/movie/i-3.jpg"/>
									<img class="i-img" src="${pageContext.request.contextPath }/resources/images/movie/i-4.jpg"/>
									<img class="i-img" src="${pageContext.request.contextPath }/resources/images/movie/i-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
							<h3>상세 글 내용 페이지</h3>
					<c:if test="${id eq dto.writer }">
						<a href="private/updateform.do?num=${dto.num }">수정</a>
						<a href="javascript:deleteCheck()">삭제</a>
					</c:if>
					<table>
						<tr>
							<th>글번호</th>
							<td>${dto.num }</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${dto.writer }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${dto.title }</td>
						</tr>
					</table>
					<div class="content">${dto.content }</div>
					<div class="comments">
						<c:forEach var="tmp" items="${commentList }">
							<div class="comment" <c:if test="${tmp.num ne tmp.comment_group }">style="margin-left:100px"</c:if> >
								<c:if test="${tmp.num ne tmp.comment_group }">
									<div class="reply_icon"></div>
								</c:if>
								<div>
									<strong>from. ${tmp.writer }</strong>
									${tmp.regdate }<br/>
									<strong>to. ${tmp.target_id }</strong>
									<a href="javascript:" class="reple">답글</a>
									
									<!-- 고친 부분 -->
									<a href="comment_delete.do?num=${dto.num }">삭제</a>
									<a class="update" href="javascript: commUpdateform()">수정</a>
								</div>
								<textarea rows="5" disabled="disabled">${tmp.content }</textarea>
								<form action="comment_insert.do" method="post">
									 <!-- 덧글 작성자  -->
							      	 <input type="hidden" name="writer" value="${id }" />
							      	 <!-- 덧글 그룹 -->
							      	 <input type="hidden" name="ref_group" value="${dto.num }" />
							      	 <!-- 덧글 대상 -->
							      	 <input type="hidden" name="target_id" value="${tmp.writer }" />
							      	 <input type="hidden" name="comment_group" value="${tmp.comment_group }" />
							         <textarea name="content"></textarea>
							         <button type="submit">등록</button>
								</form>
							</div>
						</c:forEach>
						
					   <div class="comment_form">
					      <form action="comment_insert.do" method="post">
					      	 <!-- 덧글 작성자  -->
					      	 <input type="hidden" name="writer" value="${id }" />
					      	 <!-- 덧글 그룹 -->
					      	 <input type="hidden" name="ref_group" value="${dto.num }" />
					      	 <!-- 덧글 대상 -->
					      	 <input type="hidden" name="target_id" value="${dto.writer }" />
					         <textarea name="content"></textarea>
					         <button type="submit">등록</button>
					      </form>
					   </div>
					</div>
					<script src="${pageContext.request.contextPath }/resource/js/jquery-3.1.1.js"></script>
					<script>
						var isLogin=${isLogin};
						// 덧글 전송 이벤트가 일어 났을때 실행할 함수 등록
						$(".comment_form > form, .comment_form").submit(function(){
							if(!isLogin){// 만일 로그인 하지 않았다면(isLogin 이 false 라면)
								alert("로그인이 필요합니다.");
								// 로그인 페이지로 이동시키면서 다시 돌아올 위치를 uri 파라미터로 가져간다
								location.href="${pageContext.request.contextPath}"+"/users/signin_form.do"+
				         "?uri=${pageContext.request.contextPath}"+"/cafe/detail.do?num=${dto.num}";
								return false; // 폼전송 막기
							}
							
						});
						
						 $(".comment .reple").click(function(){
						      if($(this).text() == "답글"){
						         $(this)
						         .text("취소")
						         .parent()
						         .parent()
						         .find("form")
						         .slideToggle();
						      } else{
						         $(this)
						         .text("답글")
						         .parent()
						         .parent()
						         .find("form")
						         .slideToggle();
						      }
						   });
						 
						function commUpdateform(){
								window.open("private/commUpdateform.do?num=${dto.num}","팝업","width=800,height=400");
						}
						
						function deleteCheck(){
							var isDelete=confirm("글을 삭제 하시겠습니까?");
							if(isDelete){
								location.href="private/delete.do?num=${dto.num}";
							}
						}
					</script>
						</div>
					</div>
				</div>

				<!-- 럭키 -->
				<div id="Luck-key" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3>럭키 </h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/2.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 코미디 | 한국 | 112분 | 2016.10.13개봉</h6></p>
								<p ><h5>감독</h5><h6>이계벽</h6></p>
								<p ><h5>출연</h5><h6>유해진(형욱), 이준(재성), 조윤희(리나) …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=140695" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 15세 관람가</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>성공률 100% 완벽한 킬러!</h4>
								<h4>목욕탕 Key 때문에 무명배우로 삶이 뒤바뀌다?!</h4></p>
								<p><h5>냉혹한 킬러 형욱(유해진)은 사건 처리 후 우연히 들른
								목욕탕에서 비누를 밟고 넘어져 과거의 기억을 잃게 된다.<br/>
								인기도, 삶의 의욕도 없어 죽기로 결심한 무명배우 재성 (이준)은 신변 정리를 위해 들른 목욕탕에서
								그런 형욱을 보게 되고, 자신과 그의 목욕탕 키를 바꿔 도망친다. </h5>
								<h5>이후 형욱은 자신이 재성이라고 생각한 채, 배우로 성공하기 위해 노력하는데…</h5>

								</p>
								<br/>

								<p><h5>인생에 단 한번 찾아온 초대형 기회! 초특급 반전!</h5></p>
								<br/>
								<p><h5>이것이 LUCK.KEY다!</h5></p>
								<br/>

								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="k-img" src="${pageContext.request.contextPath }/resources/images/movie/k-2.jpg"/>
									<img class="k-img" src="${pageContext.request.contextPath }/resources/images/movie/k-1.jpg" />
									<img class="k-img" src="${pageContext.request.contextPath }/resources/images/movie/k-3.jpg"/>
									<img class="k-img" src="${pageContext.request.contextPath }/resources/images/movie/k-4.jpg"/>
									<img class="k-img" src="${pageContext.request.contextPath }/resources/images/movie/k-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>


				<!-- 맨 인 더 다크 -->
				<div id="Mintd" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 맨 인 더 다크 </h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/3.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 공포, 스릴러 | 미국 | 88분 | 2016.10.05개봉</h6></p>
								<p ><h5>감독</h5><h6>페데 알바레즈</h6></p>
								<p ><h5>출연</h5><h6>제인 레비(록키), 딜런 미네트(알렉스), 스티븐 랭(눈 먼 노인) …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=144944" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 청소년 관람불가</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>불이 꺼지면 모든 것이 반전된다!</h4></p>
								<p><h5>10대 빈집털이범 록키, 알렉스, 머니는 밑바닥 삶을 청산하기 위해
							 	눈 먼 노인을 겨냥한 마지막 한 탕을 준비한다.<br/>
							 	노인이 잠 든 사이 거액의 현금을 쟁취하려던 순간
							 	마침내 그가 깨어나게 되고,
							 	이들의 치밀한 계획은 아무것도 보이지 않는 암전 속에서 모두 역전되기 시작하는데…</h5>

								</p>
								<br/>

								<p><h5>살고싶다면 숨도 쉬지마라!</h5></p>
								<br/>


								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="m-img" src="${pageContext.request.contextPath }/resources/images/movie/m-3.jpg"/>
									<img class="m-img" src="${pageContext.request.contextPath }/resources/images/movie/m-2.jpg" />
									<img class="m-img" src="${pageContext.request.contextPath }/resources/images/movie/m-1.jpg"/>
									<img class="m-img" src="${pageContext.request.contextPath }/resources/images/movie/m-4.jpg"/>
									<img class="m-img" src="${pageContext.request.contextPath }/resources/images/movie/m-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 미스 페레그린과 이상한 아이들의 집  -->
				<div id="Missforchild" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 미스 페레그린과 이상한 아이들의 집 </h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/4.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 판타지, 미스터리 | 미국 | 127분 | 2016.09.28개봉</h6></p>
								<p ><h5>감독</h5><h6>팀 버튼</h6></p>
								<p ><h5>출연</h5><h6>에바 그린(페레그린), 에이사 버터필드(제이크), 사무엘 L.잭 …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=129383" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 12세 관람가</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>올 가을, 세상에 없던 유일한 미스터리 판타지!</h4>
								</p>
								<p><h5>할아버지의 죽음의 단서를 쫒던 ‘제이크’ 는 시간의 문을 통과해 놀라운 비밀과 마주한다.<br/>
								시간을 조정하는 능력을 가진 ‘미스 페레그린’ 과 그녀의 보호아래 무한 반복되는 하루를 사는 ‘특별한 능력의 아이들’,
								그리고 그들을 사냥하는 보이지 않는 무서운 적 ‘할로게스트’
								미스 페레그린과 제이크를 비롯한 아이들은 살아남기 위해 ‘할로게스트’ 에 맞서야 한다</h5>

								</p>
								<br/>

								<p><h5>시간과 공간을 넘나들며 펼쳐지는 이들의 대결이 팀버튼의 마법같은 상상력으로 펼쳐진다.</h5></p>
								<br/>


								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >				
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-1.jpg"/>
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-2.jpg" />
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-3.jpg"/>
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-4.jpg"/>
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 바스티유 데이  -->
				<div id="Bastilleday" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 바스티유 데이 </h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/5.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 액션 | 미국, 프랑스 | 92분 | 2016.10.13개봉</h6></p>
								<p ><h5>감독</h5><h6>제임스 왓킨스</h6></p>
								<p ><h5>출연</h5><h6>이드리스 엘바(션 브라이어), 리차드 매든(마이클 메이슨), …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=137921" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 15세 관람가 [해외]R</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>

								<p><h5>최악의 테러 발생 1년, 다시 시작된 테러 경고
				 				베테랑 CIA 요원과 천재 소매치기에게 주어진 36시간 </h5>

								</p>
								<br/>

								<p><h5>디데이는 혁명기념일, 위험에 빠진 도시를 구하라!</h5></p>
								<br/>


								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-1.jpg"/>
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-2.jpg" />
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-3.jpg"/>
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-4.jpg"/>
									<img class="b-img" src="${pageContext.request.contextPath }/resources/images/movie/b-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 닥터 스트레인지  -->
				<div id="Doctorstrange" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 닥터 스트레인지 </h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/6.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 액션, 모험, 판타지 | 미국 | 115분 | 2016.10.26개봉</h6></p>
								<p ><h5>감독</h5><h6>스콧 데릭슨</h6></p>
								<p ><h5>출연</h5><h6>베데딕트 컴버배치(닥터 스트레인지), 레이첼 맥아담스, …</h6> <a href=http://movie.naver.com/movie/bi/mi/detail.nhn?code=125459" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 12세 관람가</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>마블 히어로의 새로운 시작!</h4>
								</p>
								<p><h4>모든 것을 초월한, 역사상 가장 강력한 히어로가 온다!</h4></p>
								<p><h5>불의의 사고로 절망에 빠진 천재 외과의사 ‘닥터 스트레인지(베네딕트 컴버배치)’.<br/>
								 마지막 희망을 걸고 찾아 간 곳에서 ‘에인션트 원(틸다 스윈튼)’을 만나 세상을 구원할 강력한 능력을 얻게 되면서,
								 모든 것을 초월한 최강의 히어로로 거듭나는데...</h5>

								</p>
								<br/>




								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="d-img" src="${pageContext.request.contextPath }/resources/images/movie/d-1.jpg"/>
									<img class="d-img" src="${pageContext.request.contextPath }/resources/images/movie/d-2.jpg" />
									<img class="d-img" src="${pageContext.request.contextPath }/resources/images/movie/d-3.jpg"/>
									<img class="d-img" src="${pageContext.request.contextPath }/resources/images/movie/d-4.jpg"/>
									<img class="d-img" src="${pageContext.request.contextPath }/resources/images/movie/d-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 아수라  -->
				<div id="Asura" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 아수라</h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/7.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 범죄, 액션 | 한국 | 132분 | 2016.09.28개봉</h6></p>
								<p ><h5>감독</h5><h6>김성수</h6></p>
								<p ><h5>출연</h5><h6>정우성(한도경), 황정민(박정배), 주지훈(문선모) …</h6> <a href=http://movie.naver.com/movie/bi/mi/detail.nhn?code=44913" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 청소년 관람불가</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>지옥 같은 세상, 살아남기 위해 싸우는 악인들의 전쟁!</h4>
								</p>

								<p><h5>강력계 형사 한도경(정우성)은 이권과 성공을 위해 각종 범죄를 저지르는
								 악덕시장 박성배(황정민)의 뒷일을 처리해주는 대가로 돈을 받는다.<br/> 악에 계속 노출되는 사이,
								 말기 암 환자인 아내의 병원비를 핑계로 돈 되는 건 뭐든 하는 악인의 길로 들어서게 된 한도경. <br/>
								 그의 약점을 쥔 독종 검사 김차인(곽도원)과 검찰수사관 도창학(정만식)은
								 그를 협박하고 이용해 박성배의 비리와 범죄 혐의를 캐려 한다. <br/>
								 각자의 이익과 목적을 위해 한도경의 목을 짓누르는 검찰과 박성배. <br/>
								 그 사이 태풍의 눈처럼 되어 버린 한도경은, 자신을 친형처럼 따르는 후배 형사 문선모(주지훈)를
								 박성배의 수하로 들여보내고, 살아남기 위해 혈안이 된 나쁜 놈들 사이에서 서로 물지 않으면 물리는 지옥도가 펼쳐진다.</h5>

								</p>
								<br/>




								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >				
									<img class="a-img" src="${pageContext.request.contextPath }/resources/images/movie/a-1.jpg"/>
									<img class="a-img" src="${pageContext.request.contextPath }/resources/images/movie/a-2.jpg" />
									<img class="a-img" src="${pageContext.request.contextPath }/resources/images/movie/a-3.jpg"/>
									<img class="a-img" src="${pageContext.request.contextPath }/resources/images/movie/a-4.jpg"/>
									<img class="a-img" src="${pageContext.request.contextPath }/resources/images/movie/a-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>
				<!-- 미스터캣  -->
				<div id="Mrcat" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 아수라</h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/13.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 코미디, 가족, 판타지 | 미국 | 87분 | 2016.10.19개봉</h6></p>
								<p ><h5>감독</h5><h6>배리 소넨펠드</h6></p>
								<p ><h5>출연</h5><h6>케빈 스페이시(톰 브랜드), 제니퍼 가너(라라 브랜드),…</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=137972" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 전체 관람가 [해외]R</h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>눈 떠보니 야옹~!?</h4></p>
								<p><h4>억만장자 CEO, 얼떨결에 CAT 되다!</h4></p>


								<p><h5>연간 수입 1조, 북미 최고층 빌딩의 건물주, 예쁜 아내와 귀여운 	딸까지 모든 걸 가진 억만장자 CEO ‘톰 브랜드’! </h5></p>
								<p><h5> 가족보다 일이 우선인 워커홀릭 ‘톰’은 막내딸 ‘레베카’의 			생일선물로 고양이를 사주기 위해
				 					펫샵으로 향하게 되고, 심상치 않은 분위기 속 묘한 인상을 풍기는 가게 주인을 만난다.  </h5></p>
								<p><h5>그런데! 어느 순간 가게 주인의 수상한 주문과 함께 순식간에 암흑 	속에 갇힌 ‘톰’
				 					가까스로 정신을 차린 그의 입에서 나온 첫 마디는 ‘야옹~’?! </h5></p>
								<p><h5> 대.략.냥.감! 지금 내가 CAT됐냥?
									사고뭉치 고양이 ‘복실이’의 고군분투가 시작된다! </h5></p>
								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="c-img" src="${pageContext.request.contextPath }/resources/images/movie/c-1.jpg"/>
									<img class="c-img" src="${pageContext.request.contextPath }/resources/images/movie/c-2.jpg" />
									<img class="c-img" src="${pageContext.request.contextPath }/resources/images/movie/c-3.jpg"/>
									<img class="c-img" src="${pageContext.request.contextPath }/resources/images/movie/c-4.jpg"/>
									<img class="c-img" src="${pageContext.request.contextPath }/resources/images/movie/c-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>
				<!-- 립반윙클의 신부  -->
				<div id="BrideForRBW" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 립반윙클의 신부</h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/9.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 드라마, 멜로/로맨스 | 일본 | 119분 | 2016.09.28개봉</h6></p>
								<p ><h5>감독</h5><h6>이와이 슌지</h6></p>
								<p ><h5>출연</h5><h6>쿠로키 하루(미나가와 나나미), 아야노 고(아무로 마스유키), …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=150551" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 15세 관람가 </h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4><러브레터><하나와 앨리스> 이와이 슌지 감독</h4></p>
								<p><h4>너와 나를 이어줄 랜선 무비 <립반윙클의 신부></h4></p>


								<p><h5>“오늘도 난, 거짓말을 잔뜩 해버렸다”  </h5></p>
								<p><h5> SNS [플래닛]이 자신의 전부인 ‘나나미’는
							 	[플래닛]에서 만나 결혼한 남편에게 거짓말을 잔뜩 하게 되고
							 	자신도 모르는 사이 일생 최대의 위기를 맞이한다 </h5></p>
								<p><h5>“어쩌면, 세상은 행복으로 가득 차 있어”
								 다시 세상에 혼자 남게 된 ‘나나미’는
								 [플래닛]을 통해 프로 서비스 맨 ‘아무로’의 도움을 받고
								 ‘립반윙클’이라는 아이디를 가진 정체 모를 인물과도 친구가 되는데…. </h5></p>
								<p><h5> 과연, 그녀는 진짜 세상과 만날 수 있을까? </h5></p>
								<br/>
								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="bf-img" src="${pageContext.request.contextPath }/resources/images/movie/bf-1.jpg"/>
									<img class="bf-img" src="${pageContext.request.contextPath }/resources/images/movie/bf-2.jpg" />
									<img class="bf-img" src="${pageContext.request.contextPath }/resources/images/movie/bf-3.jpg"/>
									<img class="bf-img" src="${pageContext.request.contextPath }/resources/images/movie/bf-4.jpg"/>
									<img class="bf-img" src="${pageContext.request.contextPath }/resources/images/movie/bf-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 자백  -->
				<div id="Spy" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 자백</h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/10.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 다큐멘터리 | 한국 | 106분 | 2016.10.13개봉</h6></p>
								<p ><h5>감독</h5><h6>최승호</h6></p>
								<p ><h5>출연</h5><h6>최승호(본인), 김기춘(본인),원세훈(본인), …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=146534" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 15세 관람가 </h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>일어날 수 없는 일이 대한민국에서 일어났다!</h4></p>
								<p><h4>이것은 모두 실화다!</h4></p>


								<p><h5>2012년 탈북한 화교 출신의 서울시 공무원 유우성씨가 국정원에 의해 간첩으로 내몰린다.<br/> 국정원이 내놓은 명백한 증거는 동생의 증언 ‘자백’이었다. 북쪽 나라의 괴물과 싸워온 전사들, 대한민국 국가권력의 심장부 국정원.<br/> 그런데 만약 그들이 거짓말을 하고 있다면? 의심을 품은 한 언론인 ‘최승호’ 피디가 움직였고, 2015년 10월 대법원은 유우성씨의 국가보안법 위반 혐의에 대해 무죄를 선고한다.<br/> 이것이 바로 ‘서울시공무원간첩조작사건’이다. 하지만 단지 이 사건만이었을까? 한국, 중국, 일본, 태국을 넘나드는 40개월간의 추적 끝에 스파이 조작 사건의 실체가 드러나는데… 믿을 수 없겠지만, 이것은 모두, 대한민국에서 지금 일어나고 있는, 실화다! </h5></p>

								<br/>
								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="s-img" src="${pageContext.request.contextPath }/resources/images/movie/s-1.jpg"/>
									<img class="s-img" src="${pageContext.request.contextPath }/resources/images/movie/s-2.jpg" />
									<img class="s-img" src="${pageContext.request.contextPath }/resources/images/movie/s-3.jpg"/>
									<img class="s-img" src="${pageContext.request.contextPath }/resources/images/movie/s-4.jpg"/>
									<img class="s-img" src="${pageContext.request.contextPath }/resources/images/movie/s-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 비틀스: 에잇 데이즈 어 위크 -투어링 이어즈  -->
				<div id="Beatles" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 비틀스:에잇 데이즈 어 위크 - 투어링 이어즈</h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/11.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 드라마 | 영국, 미국 | 137분 | 2016.10.19개봉</h6></p>
								<p ><h5>감독</h5><h6>론 하워드</h6></p>
								<p ><h5>출연</h5><h6>존 레논(본인), 폴 매카트니(본인),조지 해리슨(본인), …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=152266" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 12세 관람가 </h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h5>1963년부터 1966년까지
								 그들을 무대에서 볼 수 있었던 유일한 4년,
								 일주일을 8일로 살았던 치열했던 공연의 기록과
								 아이돌에서 진정한 전설의 아티스트로 거듭나기까지……  </h5></p>
								 <p><h5> 그들을 바꾼 숨겨진 진짜 이야기가 이제 밝혀진다!</h6></p>

								<br/>
								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="be-img" src="${pageContext.request.contextPath }/resources/images/movie/be-1.jpg"/>
									<img class="be-img" src="${pageContext.request.contextPath }/resources/images/movie/be-2.jpg" />
									<img class="be-img" src="${pageContext.request.contextPath }/resources/images/movie/be-3.jpg"/>
									<img class="be-img" src="${pageContext.request.contextPath }/resources/images/movie/be-4.jpg"/>
									<img class="be-img" src="${pageContext.request.contextPath }/resources/images/movie/be-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>

				<!-- 어카운턴트  -->
				<div id="Accountant" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class=" modal-header ">
							<button class="close" data-dismiss="modal" style="font-size: 50px;">&times;</button>
								<h3> 어카운턴트</h3>
							</div>
							<div class=" modal-body col-xs-3" style="width:220px; height: 370px; border-right: 1px solid lightgray; margin-right: 20px;">
								<p><img src="${pageContext.request.contextPath }/resources/images/movie/14.jpg"  /></p>
							</div>
							<div class="modal-body index">
								<p ><h5>개요</h5><h6> 드라마, 액션, 스릴러 | 미국 | 127분 | 2016.10.13개봉</h6></p>
								<p ><h5>감독</h5><h6>게빈 오코너</h6></p>
								<p ><h5>출연</h5><h6>벤 애플렉(크리스찬 울프), 안나 켄드릭(다나 커밍스), …</h6> <a href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=134859" style="font-size: small;">자세히보기</a></p>
								<p ><h5>등급</h5><h6> [국내] 15세 관람가 [해외] R </h6></p>
								<span style="margin-left: 10px;">내 평점</span>
								<p class="star_rating" style="margin-left: 10px;">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#">★</a>
									<a href="#">★</a>
								</p>
								<button data-dismiss="alert" class="btn btn-default sBtn " style="margin-left: 10px;">별점주기</button>

								<button data-dismiss="alert" class="btn btn-info reBtn ">예매하기</button>
								<a href="#" class="btn btn-primary tBtn">상영시간표</a>
							</div>
							<div class="modal-body col-xs-12">
								<p><h3 style="margin-top: 10px;font-weight:bold; ">줄거리</h3></p>
								<br/>
								<p><h4>악당의 회계사! 그를 잘못 건드렸다!</h4></p>
								<p><h5>자폐아로 오해 받았지만 아인슈타인, 피카소, 모차르트와 비견될 정도로 숫자에 대한 탁월한 능력을 지닌 크리스찬(벤 애플렉).<br/> 수학천재인 그는 자신의 재능을 살려 마약 조직의 검은 돈을 봐주는 회계사로 살아간다.<br/> 그러던 중 그가 비밀리에 행했던 일로 인해 조직과 국가의 동시에 표적이 되고, 이제 그는 낮에는 회계사, 밤에는 킬러였던 자신의 본색을 드러내며 동시에 그들과 맞서는데… </h5></p>


								<br/>
								<p><h4>스틸컷</h4><a href="#" class="showimg">보기</a></p>
				<!-- 스틸컷 -->
								<div class="fotorama fotorama2" data-loop="true" >
									<img class="ac-img" src="${pageContext.request.contextPath }/resources/images/movie/ac-3.jpg"/>
									<img class="ac-img" src="${pageContext.request.contextPath }/resources/images/movie/ac-2.jpg" />
									<img class="ac-img" src="${pageContext.request.contextPath }/resources/images/movie/ac-1.jpg"/>
									<img class="ac-img" src="${pageContext.request.contextPath }/resources/images/movie/ac-4.jpg"/>
									<img class="ac-img" src="${pageContext.request.contextPath }/resources/images/movie/ac-5.jpg"/>
								</div>
							</div>
							<div class="modal-footer">
								<!-- <button class="btn btn-success" >확인</button>
								<button class="btn btn-danger" data-dismiss="modal">취소</button> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.movie -->
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