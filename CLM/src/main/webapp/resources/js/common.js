$(function(){
	// 로그인 버튼 이벤트
	$(".loginBtn").click(function(){
		$("#loginPop").slideDown(300);
	});
	$("#loginCloseBtn").click(function(){
		$("#loginPop").slideUp(300);
		$("#id").val("");
		$("#pwd").val("");
	});
	$("#signupBtn").click(function(){
		$("#loginPop").hide();
	});
	
	// 로그인 시 모든 정보 확인 후 signin.do 요청 진행
	$("#signinBtn").click(function(){
		var val1 = $("#signid").val();
		var val2 = $("#signpwd").val();
		if( val1 && val2){
			$("#loginDiv").addClass("hide");
			$("#signinAction").submit();
		}else if(!val1){
			$("#idModal").modal();
		}else if(!val2){
			$("#pwdModal").modal();
		}
	});
	
	
	// 회원가입 모달------------------------------------------------------------------- 
	
	// 회원 가입폼 작성시 모두 작성이 잘 되었는지 확인 후 signup.do 요청 진행하는 스크립트
	$("#signupBtn2").click(function(){
		var val1 = $("#id").val();
		var val2 = $("#pwd").val();
		var val3 = $("#pwdconfirm").val();
		if( val1 && val2 && val3){
			if(val2 != val3){
				$("#pwdModal").modal();
				return false;
			}else{
				$("#signupAction").submit();
				$("#signupModal").modal();
			}
		}else if(!val1){
			$("#idModal").modal();
			return false;
		}else if(!val2){
			$("#pwdModal").modal();
			return false;
		}else if(!val3){
			$("#pwdModal").modal();
			return false;
		}
	});
    
	
	// 사용가능한 id 인지 확인하는 스크립트
	//아이디 입력란에 keyup 이벤트가 발생했을 때 실행할 함수 등록
	   $("#id").on("keyup", function(){
	      // 입력한 아이디 읽어오기
	      var inputId=$("#id").val();
	      // ajax 요청을 이용해서 서버에 전송
	      $.ajax({
	         url:"checkid.do",
	         method:"get",
	         data:{inputId:inputId},
	         success:function(data){
	            console.log(data);
	            $("#id")
	            .parent()
	            .removeClass("has-success has-error");
	            if(data.canUse){
	               $("#id")
	               .parent()
	               .addClass("has-success")
	               .find(".help-block")
	               .hide()
	               .parent()
	               .find(".glyphicon")
	               .removeClass("glyphicon-remove")
	               .addClass("glyphicon-ok");
	            }else{
	               $("#id")
	               .parent()
	               .addClass("has-error")
	               .find(".help-block")
	               .show()
	               .parent()
	               .find(".glyphicon")
	               .removeClass("glyphicon-ok")
	               .addClass("glyphicon-remove");
	            }
	         }
	      });
	   });
	
	
	   
	   
	   
	
	// logoutBtn 클릭시 처리
	$(".logoutBtn").click(function(){
		$("#logoutModal").modal();
	});
	   
	   
	   
	   
	
	// topBtn
	$(".topBtn").click(function()
	{
		$("html, body").scrollTop(0);
	});
	
});