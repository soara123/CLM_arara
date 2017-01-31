<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8" />
   <title>CLM - 메인</title>
   <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css" />
   <script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.js"></script>
   <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
   <script src="${pageContext.request.contextPath }/resources/js/jquery.lazyload.min.js"></script>
   <script src="${pageContext.request.contextPath }/resources/js/jquery.touchSwipe.min.js"></script>
   <script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
   <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
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
            
            
            <!-- id 값이 있으면 info, 없으면 login 버튼 보여주기 -->
            <c:choose>
            	<c:when test="${!empty id }">
	           		<div class="nav navbar-nav navbar-right hidden-xs" id="logoutDiv">
	                  <button class="btn btn-default navbar-btn logoutBtn">LOGOUT</button>
	                </div>
	                <div class="nav navbar-nav navbar-right hidden-xs" id="infoDiv">
	                  <a href="users/private/info.do"><button class="btn btn-default navbar-btn infoBtn">INFO</button></a>
	                </div>
           		</c:when>
           		<c:otherwise>
	                <div class="nav navbar-nav navbar-right hidden-xs" id="loginDiv">
	                  <button class="btn btn-default navbar-btn loginBtn">LOGIN</button>
	                </div>
	            </c:otherwise>
            </c:choose>
            <!-- id 값이 있으면 info, 없으면 login 버튼 보여주기 -->   
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="movie.do">영화 <span class="sr-only">(current)</span></a></li>
                  <li><a href="theater.do">영화관</a></li>
                  <li><a href="store.do">스토어</a></li>
               </ul>
            </div>
            <!-- /.navbar-collapse -->
            <div id="loginPop">
               <div class="form-horizontal">
               <form action="signin.do" method="post" id="signinAction">
                  <div class="form-group">
                     <label class="sr-only" for="id">아이디</label>
                     <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                        <input type="text" class="form-control" id="signid" name="signid" placeholder="아이디" required="required">
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="sr-only" for="pwd">비밀번호</label>
                     <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                        <input type="password" class="form-control" id="signpwd" name="signpwd" placeholder="비밀번호" required="required">
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
                  </form>
                  
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

      <div id="main">
         <div class="contents">
            <div class="touchCarousel">
               <div class="slide"><a href="javascript:" class="playBtn"><span class="sr-only">재생</span></a></div>
               <div class="slide"><a href="javascript:" class="playBtn"><span class="sr-only">재생</span></a></div>
               <div class="slide"><a href="javascript:" class="playBtn"><span class="sr-only">재생</span></a></div>
               <div class="slide"><a href="javascript:" class="playBtn"><span class="sr-only">재생</span></a></div>
               <div class="slide"><a href="javascript:" class="playBtn"><span class="sr-only">재생</span></a></div>
            </div>
            <!-- /.touchCarousel -->
            <div class="button-wrapper">
               <a href="javascript:" id="prevBtn"><span class="sr-only">이전</span></a>
               <a href="javascript:" id="nextBtn"><span class="sr-only">다음</span></a>
            </div>
            <!-- /.button-wrapper -->
            <div class="pager-wrapper">
               <ul class="pager">
                  <li class="on"></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
               </ul>
               <ul class="autoBtn">
                  <li class="autoStopBtn"></li>
               </ul>
            </div>
            <!-- /.pager-wrapper -->
         </div>
         <!-- /.contents -->
         <div class="video-wrapper">
            <div class="videoDiv">
               <video width="100%" height="100%" poster="${pageContext.request.contextPath }/resources/images/main/doctorStrange.jpg" preload="preload"  loop="1">
                  <source src="http://caching.lottecinema.co.kr//Media/MovieFile/MovieMedia/201610/10478_301_1.mp4" type="video/mp4">
               </video>
               <a href="javascript:" class="stopBtn"><span class="sr-only">정지</span></a>
            </div>
            <div class="videoDiv">
               <video width="100%" height="100%" poster="http://image2.megabox.co.kr/mop/home/ad/1600x600/161013_BastilleDay_1600x600.jpg" preload="preload" loop="1">
                  <source src="http://m.mvod.megabox.co.kr/encodeFile/3550/2016/10/13/43f1207ab590749431627489660108f8_I.mp4" type="video/mp4">
               </video>
               <a href="javascript:" class="stopBtn"><span class="sr-only">정지</span></a>
            </div>
            <div class="videoDiv">
               <video width="100%" height="100%" poster="http://image2.megabox.co.kr/mop/home/ad/1600x600/161006_bm_1600X600.jpg" preload="preload"  loop="1">
                  <source src="http://m.mvod.megabox.co.kr/encodeFile/3550/2016/10/05/65f7d305da73f9344a112f6d442d57ce_I.mp4" type="video/mp4">
               </video>
               <a href="javascript:" class="stopBtn"><span class="sr-only">정지</span></a>
            </div>
            <div class="videoDiv">
               <video width="100%" height="100%" poster="http://image2.megabox.co.kr/mop/home/ad/1600x600/161013_luck_1600x600.jpg" preload="preload"  loop="1">
                  <source src="http://m.mvod.megabox.co.kr/encodeFile/3550/2016/10/13/3907077a2aa1d5117483e5d6693b5da0_I.mp4" type="video/mp4">
               </video>
               <a href="javascript:" class="stopBtn"><span class="sr-only">정지</span></a>
            </div>
            <div class="videoDiv">
               <video width="100%" height="100%" poster="http://image2.megabox.co.kr/mop/home/ad/1600x600/161019_cat_1600x600.jpg" preload="preload"  loop="1">
                  <source src="http://m.mvod.megabox.co.kr/encodeFile/3550/2016/10/19/0c0edcef3da40ee6bef2d748e09bd577_I.mp4" type="video/mp4">
               </video>
               <a href="javascript:" class="stopBtn"><span class="sr-only">정지</span></a>
            </div>
         </div>
      </div>
      <!-- /#main -->

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
               
               
               <!-- 회원가입 부분 -->
               <form action="signup.do" method="post" id="signupAction">
               <div class="modal-body">
                  <div class="row">
                     <div class="col-xs-12 col-sm-10 col-sm-offset-1">
                        <div class="form-horizontal">
                           <div class="row">
                              <p class="help-block"><span id="important">*</span> 표시는 반드시 입력하세요</p>
                              
                              <div class="col-xs-6">
                                 <div class="form-group">
                                    <div class="col-xs-4">
                                       <span id="important">*</span><label for="id">아이디</label>
                                    </div>
                                    <div class="col-xs-8 has-success has-error">
                                       <input class="form-control" type="text" id="id" name="id">
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
               <div class="modal-footer">
                  <button class="btn" type="button" id="signupBtn2">가입</button>
                  <button class="btn" type="reset" data-dismiss="modal">취소</button>
               </div>
               </form>
                <!-- 회원가입 부분 끝 -->
                
            </div>
         </div>
      </div>
<!-- -------------------------여기까지 회원가입 modal----------------------------- -->
      
      
<!-- -------------------------여기서 부터 로그인 안됬을때 뜨는 modal----------------------------- -->
      <!-- /#membershipForm -->
      <div id="signinModal" class="modal fade" tabindex="-1" role="dialog">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title"><i class="glyphicon glyphicon-alert" style="margin-right:10px"></i>${dto.id } 회원님 안녕하세요.</h4>
               </div>
               <div class="modal-body">
                  <p>방문을 환영합니다!</p>
                  <p>CLM 에서 즐거운 영화 생활을 즐기세요!</p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
               </div>
            </div><!-- /.modal-content -->
         </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
<!-- -------------------------여기서 부터 로그인 안됬을때 뜨는 modal 끝----------------------------- -->

      
      
		<!-- 회원가입 확인 알림 모달 -->
		<div id="signupModal" class="modal fade" tabindex="-1" role="dialog">
		   <div class="modal-dialog" role="document">
		      <div class="modal-content">
		         <div class="modal-header">
		            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		            <h4 class="modal-title"><i class="glyphicon glyphicon-ok-sign" style="margin-right:10px"></i>회원님 가입 되었습니다. 감사합니다!</h4>
		         </div>
		         <div class="modal-body">
		           	 로그인 후 이용해 주세요~
		         </div>
		         <div class="modal-footer">
		            
		         </div>
		      </div><!-- /.modal-content -->
		   </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
      	<!-- 회원가입 확인 알림 모달 끝 -->
      
      
      
      <!-- logout 클릭시 확인 모달 -->
      <div id="logoutModal" class="modal fade" tabindex="-1" role="dialog">
		   <div class="modal-dialog" role="document">
		      <div class="modal-content">
		         <div class="modal-header">
		            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		            <h4 class="modal-title"><i class="glyphicon glyphicon-ok-sign" style="margin-right:10px"></i>로그아웃 하시겠습니까?</h4>
		         </div>
		         <div class="modal-body">
		           	 
		         </div>
		         <div class="modal-footer">
		            <a href="signout.do" class="btn btn-default" id="logoutConfirm">확인</a>
		            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		         </div>
		      </div><!-- /.modal-content -->
		   </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- logout 클릭시 확인 모달 끝 -->
      
      
      
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
                  <i class="glyphicon glyphicon-alert" style="margin-right:10px"></i>비밀번호를 확인해 주세요.
               </div>
            </div><!-- /.modal-content -->
         </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
      <!-- /#pwdModal -->
   </div>
   <!-- /#wrapper -->
   
   

</body>
</html>