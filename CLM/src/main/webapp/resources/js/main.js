$(function(){
	// 로그인
	$(".loginBtn").click(function(){
		$("#loginPop").slideDown(400);
	});
	$("#loginCloseBtn").click(function(){
		$("#loginPop").slideUp(400);
	});

	/* 메인 비주얼 */
	// initCarousel()에 쓰일 변수
	var n, width, angle, tz;
	// rotateY 값을 저장할 변수
	var rY = 0;
	// swipe 시작 시점의 rY 값을 저장할 변수
	var startRY = 0;
	// .slide 인덱스
	var slideIndex = 0;
	// .slide 길이
	var slideLength = $(".slide").length;
	// 최초 slide 배치
	initCarousel();
	// 창의 크기가 바뀌었을 때 slide 재배치
	$(window).resize(function(){
		initCarousel();
	});
	// 자동 슬라이드 이벤트
	var clickTrigger = setInterval(function(){
		$("#nextBtn").trigger("click");
	}, 7000);
	$(".autoStopBtn").click(function(){
		$(this).attr("class","autoPlayBtn");
		clearInterval(clickTrigger);
		$(".autoPlayBtn").click(function(){
			$(this).attr("class","autoStopBtn");
			autoPlaySlide();
		});
	});
	// 버튼 클릭 이벤트
	$("#prevBtn").click(function(){
		rY += angle;
		rotate();
		slideIndex--;
		if(slideIndex < 0){
			slideIndex = slideLength - 1;
		}
		$(".pager li").eq(slideIndex).addClass("on").siblings("li").removeClass("on");
	});
	$("#nextBtn").click(function(){
		rY -= angle;
		rotate();
		slideIndex++;
		if(slideIndex > slideLength-1){
			slideIndex = 0
		}
		$(".pager li").eq(slideIndex).addClass("on").siblings("li").removeClass("on");
	});
	// .slide 에 마우스 들어갔을 때 이벤트
	$(".slide").mouseenter(function(){
		var index = $(this).index();
		// 비디오 재생 버튼 클릭 시 이벤트
		$(this).find(".playBtn").fadeIn(300).click(function(){
			clearInterval(clickTrigger);
			$(this).hide();
			$(".video-wrapper").fadeIn(350).find(".videoDiv").eq(index).show()
			.children("video")[0].play();
		});
		$(".videoDiv").mouseenter(function(){
			// 비디오 정지 버튼 클릭 시 이벤트
			$(this).find(".stopBtn").fadeIn(300).click(function(){
				autoPlaySlide();
				$(this).prev("video")[0].pause();
				$(this).hide().parent(".videoDiv").fadeOut(300)
				.parent(".video-wrapper").hide();
			});
		});
	});
	// touchSwipe 이벤트
	$(".touchCarousel").swipe({
		swipeStatus : function(e, phase, direction, distance){
			if (phase == "start") {
				startRY = rY;
			}else if (phase == "move") {
				if (direction == "left") {
					rY = startRY - (distance / 20);
				}else if (direction == "right") {
					rY = startRY + (distance / 20);
				}
			}else if (phase == "end") {
				if (direction == "left") {
					rY = startRY - angle;
				}else if (direction == "right") {
					rY = startRY + angle;
				}
			}else if (phase == "cancel") {
				rY = startRY;
			}
			rotate();
		}
	});
	// angle 과 translateZ 값 구하는 함수
	function getAngleNtz(n, width) {
		var angle = Math.round(360 / n);
		var tz = Math.round( (width / 2) / Math.tan( (angle * Math.PI) / (2 * 180) ) );
		var obj = {
			angle: angle,
			tz: tz
		};
		return obj;
	}
	// div 배치하는 함수
	function initCarousel(){
		n = $(".slide").length;
		width = $(".contents").width();
		angle = getAngleNtz(n, width).angle;
		tz = getAngleNtz(n, width).tz;
		// transtion 효과 없애기
		$(".touchCarousel").removeClass("transition");
		// .touchCarousel 밀어 넣기
		$(".touchCarousel").css("-webkit-transform", "translateZ(-"+tz+"px)");
		// .slide 배치하기
		$(".slide").each(function(index){
			var ang = angle * index;
			var value = "rotateY("+ang+"deg) translateZ("+tz+"px)";
			var video_poster = $(".videoDiv > video").eq(index).attr("poster");
			$(this).css({"-webkit-transform": value, "background":"url("+video_poster+") no-repeat 80% 50%", "background-size":"cover"});
		});
		// 원래 회전량 복구
		rotate2();
	}
	// carousel 회전시키는 함수
	function rotate(){
		var value = "translateZ(-"+tz+"px) rotateY("+rY+"deg)";
		$(".touchCarousel").addClass("transition").css("-webkit-transform", value);
	}
	function rotate2(){
		var value = "translateZ(-"+tz+"px) rotateY("+rY+"deg)";
		$(".touchCarousel").css("-webkit-transform", value);
	}
	// 자동 슬라이드 이벤트 함수
	function autoPlaySlide(){
		clickTrigger = setInterval(function(){
			$("#nextBtn").trigger("click");
		}, 7000);
	}
});