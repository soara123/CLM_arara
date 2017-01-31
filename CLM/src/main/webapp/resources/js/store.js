$(function(){

	/** STORE  */
	// store 구매시 수량 및 가격 변경
	var Amount1 = $("#storeAmount1").attr("value");
	var price1 = $("#storeTotal1").text();
	var Amount2 = $("#storeAmount2").attr("value");
	var price2 = $("#storeTotal2").text();
	var Amount3 = $("#storeAmount3").attr("value");
	var price3 = $("#storeTotal3").text();
	var Amount4 = $("#storeAmount4").attr("value");
	var price4 = $("#storeTotal4").text();
	var Amount5 = $("#storeAmount5").attr("value");
	var price5 = $("#storeTotal5").text();
	var Amount6 = $("#storeAmount6").attr("value");
	var price6 = $("#storeTotal6").text();
	var Amount7 = $("#storeAmount7").attr("value");
	var price7 = $("#storeTotal7").text();
	var Amount8 = $("#storeAmount8").attr("value");
	var price8 = $("#storeTotal8").text();
	var Amount9 = $("#storeAmount9").attr("value");
	var price9 = $("#storeTotal9").text();
	var Amount10 = $("#storeAmount9").attr("value");
	var price10 = $("#storeTotal9").text();
	var Amount11 = $("#storeAmount9").attr("value");
	var price11 = $("#storeTotal9").text();

	$("#minus1").click(function()
	{
		if(Amount1==0)
		{
			return;
		}
		Amount1--;
		price1= price1-14000;
		$("#storeTotal1").text(14000*(Amount1+1)-14000)
		$("#storeAmount1").val(Amount1);
	});
	$("#plus1").click(function()
	{
		if(Amount1==8)
		{
			return;
		}
		Amount1++;
		$("#storeAmount1").val(Amount1)
		$("#storeTotal1").text(14000*Amount1);
	});

	$("#minus2").click(function()
	{
		if(Amount2==0)
		{
			return;
		}
		Amount2--;
		price2= price2-25500;
		$("#storeTotal2").text(25500*(Amount2+1)-25500)
		$("#storeAmount2").val(Amount2);
	});
	$("#plus2").click(function()
	{
		if(Amount2==8)
		{
			return;
		}
		Amount2++;
		$("#storeAmount2").val(Amount2)
		$("#storeTotal2").text(25500*Amount2);
	});

	$("#minus3").click(function()
	{
		if(Amount3==0)
		{
			return;
		}
		Amount3--;
		price3= price3-34500;
		$("#storeTotal3").text(34500*(Amount3+1)-34500)
		$("#storeAmount3").val(Amount3);
	});
	$("#plus3").click(function()
	{
		if(Amount3==8)
		{
			return;
		}
		Amount3++;
		$("#storeAmount3").val(Amount3)
		$("#storeTotal3").text(34500*Amount3);
	});

	$("#minus4").click(function()
	{
		if(Amount4==0)
		{
			return;
		}
		Amount4--;
		price4= price4-46000;
		$("#storeTotal4").text(46000*(Amount4+1)-46000)
		$("#storeAmount4").val(Amount4);
	});
	$("#plus4").click(function()
	{
		if(Amount4==8)
		{
			return;
		}
		Amount4++;
		$("#storeAmount4").val(Amount4)
		$("#storeTotal4").text(46000*Amount4);
	});

	$("#minus5").click(function()
	{
		if(Amount5==0)
		{
			return;
		}
		Amount5--;
		price5= price5-9000;
		$("#storeTotal5").text(9000*(Amount5+1)-9000)
		$("#storeAmount5").val(Amount5);
	});
	$("#plus5").click(function()
	{
		if(Amount5==8)
		{
			return;
		}
		Amount5++;
		$("#storeAmount5").val(Amount5)
		$("#storeTotal5").text(9000*Amount5);
	});

	$("#minus6").click(function()
	{
		if(Amount6==0)
		{
			return;
		}
		Amount6--;
		price6= price6-11000;
		$("#storeTotal6").text(11000*(Amount6+1)-11000)
		$("#storeAmount6").val(Amount6);
	});
	$("#plus6").click(function()
	{
		if(Amount6==8)
		{
			return;
		}
		Amount6++;
		$("#storeAmount6").val(Amount6)
		$("#storeTotal6").text(11000*Amount6);
	});

	$("#minus7").click(function()
	{
		if(Amount7==0)
		{
			return;
		}
		Amount7--;
		price7= price7-12000;
		$("#storeTotal7").text(12000*(Amount7+1)-12000)
		$("#storeAmount7").val(Amount7);
	});
	$("#plus7").click(function()
	{
		if(Amount7==8)
		{
			return;
		}
		Amount7++;
		$("#storeAmount7").val(Amount7)
		$("#storeTotal7").text(12000*Amount7);
	});

	$("#minus8").click(function()
	{
		if(Amount8==0)
		{
			return;
		}
		Amount8--;
		price8= price8-11000;
		$("#storeTotal8").text(11000*(Amount8+1)-11000)
		$("#storeAmount8").val(Amount8);
	});
	$("#plus8").click(function()
	{
		if(Amount8==8)
		{
			return;
		}
		Amount8++;
		$("#storeAmount8").val(Amount8)
		$("#storeTotal8").text(11000*Amount8);
	});

	$("#minus9").click(function()
	{
		if(Amount9==0)
		{
			return;
		}
		Amount9--;
		price9= price9-30000;
		$("#storeTotal9").text(30000*(Amount9+1)-30000)
		$("#storeAmount9").val(Amount9);
	});
	$("#plus9").click(function()
	{
		if(Amount9==8)
		{
			return;
		}
		Amount9++;
		$("#storeAmount9").val(Amount9)
		$("#storeTotal9").text(30000*Amount9);
	});

	// CLM 찬스 버튼
	$("#chanceMinus1").click(function()
	{
		if(Amount10==1)
		{
			return;
		}
		Amount10--;
		price10= price10-30000;
		$("#storeTotal9").text(30000*(Amount10+1)-30000)
		$("#storeAmount9").val(Amount10);
	});
	$("#chancePlus1").click(function()
	{
		if(Amount10==1)
		{
			return;
		}
		Amount10++;
		$("#storeAmount9").val(Amount10)
		$("#storeTotal9").text(30000*Amount10);
	});
	$("#chanceMinus2").click(function()
	{
		if(Amount11==1)
		{
			return;
		}
		Amount11--;
		price11= price11-30000;
		$("#storeTotal9").text(30000*(Amount11+1)-30000)
		$("#storeAmount9").val(Amount11);
	});
	$("#chancePlus2").click(function()
	{
		if(Amount11==1)
		{
			return;
		}
		Amount11++;
		$("#storeAmount9").val(Amount11)
		$("#storeTotal9").text(30000*Amount11);
	});


	// store 구매하기 버튼 누를때
	$("#buyBtn1").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn2").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn3").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn4").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn5").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn6").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn7").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn8").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn9").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn10").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
	$("#buyBtn11").click(function()
	{
		alert("로그인 후 이용해주세요.")
	});
});