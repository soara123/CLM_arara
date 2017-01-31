$(function(){
	//더보기 클릭 시 영화포스터 이미지출력
	$(".plus").click(function(){
		$(".cimg").removeClass("hide");
		$(".plus").hide();
	});
	//탭 이동시 더보기버튼 출력
	$(".nav>li").click(function(){
		$(".plus").show();
	});
	//탭 이동시 img5 부터 hide
	$(".nav>li").click(function(){
		$(".himg").each(function(){
			$(this).addClass("hide");
		});
	});
	//모달창의 상영시간표 버튼 클릭하면 모달창이 닫히고  상영시간표 탭으로이동
	$(".tBtn").click(function(){
		$(this).parents(".modal").modal("hide");
		$(".nav>li").removeClass("active").eq(2).addClass("active");
		$(".tab-pane").removeClass("active").eq(2).addClass("active");
	});


	//스틸컷 보기
	$(".showimg").click(function(){
		$(".fotorama").toggleClass("show");
	});
	// modal창이 닫히면 fotorma 숨기기
	$(".modal").on("hide.bs.modal",function(click){
		$(".fotorama").removeClass("show").addClass("hide");
	});

	// 최신 개봉작 모달창띄우기
	$("#img1").click(function(){
		$("#Inferno").modal("show");
	});
	$("#img2").click(function(){
		$("#Luck-key").modal("show");
	});
	$("#img3").click(function(){
		$("#Mintd").modal("show");
	});
	$("#img4").click(function(){
		$("#Missforchild").modal("show");
	});
	$("#img5").click(function(){
		$("#Bastilleday").modal("show");
	});
	$("#img6").click(function(){
		$("#Doctorstrange").modal("show");
	});
	$("#img7").click(function(){
		$("#Asura").modal("show");
	});
	$("#img8").click(function(){
		$("#Mrcat").modal("show");
	});
	$("#img9").click(function(){
		$("#BrideForRBW").modal("show");
	});
	$("#img10").click(function(){
		$("#Spy").modal("show");
	});
	$("#img11").click(function(){
		$("#Beatles").modal("show");
	});
	$("#img12").click(function(){
		$("#Accountant").modal("show");
	});

	// 별점주기
	$(".reBtn ,.sBtn").click(function(){
		alert("로그인 후 이용해주세요");
	});

	$( ".star_rating a" ).click(function() {
	     $(this).parent().children("a").removeClass("on");
	     $(this).addClass("on").prevAll("a").addClass("on");
	     return false;
	});

	//상영예정작 모달
	$(".CommMovi").click(function(){
		$("#CommModal").modal("show");
	});

	//보고싶은영화 탭 클릭시 로그인 안내창 출력
	$("#WantMovi").click(function(){
		$("#WantModal").modal("show");

	});

	// 포스터 하버시 움직임
	$(".row4img > a > img").mouseover(function()
     {
         $(this).css("-webkit-transform", "translateZ(7px)");
     });
	$(".row4img > a > img").mouseout(function()
     {
         $(this).css("-webkit-transform", "translateZ(0px)");
     });

	

});