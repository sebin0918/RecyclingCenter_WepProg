$(document).ready(function(){

	$(".manv").bxSlider({
		mode: "fade",
		auto: true,
		pause: 3000,
		autoControls: true,
	});
	

});

$(document).ready(function(){
	
	var anim = $(".anim");
	var anims = $(".anims");
	setTimeout(function(){
		$(window).scroll(function() {
			roll();
		  })
		  $(window).resize(function() {
			roll();
		  })
		  roll();
	},1);

	function roll() { 
		var oHeight = $(window).height();
		var ScrVal = $(window).scrollTop();
		anim.each(function(i) {
			if (ScrVal + oHeight > anim.eq(i).offset().top + 10 ){
				anim.eq(i).addClass("show-on");
			}
		});
		anims.each(function(i) {
			if (ScrVal + oHeight > anims.eq(i).offset().top + 10 ){
				anims.eq(i).addClass("show-on");
			}
		});
	};
	
	
	$(".mic_line > li").each(function(){
		var mich = $(this).width();
		$(this).css({height:mich});
	});

	$(".mvsl_sld").bxSlider({
		//mode: "fade",
		auto: true,
		pause: 3000,
		speed: 800,
		autoControls: true,
	});
	

	var sw=true;
	$('.footer_gs > a').click(function(){
		sw=!sw;

		if(sw==true){
			$('.footer_gs .family_list').hide();
		} else {
			$('.footer_gs .family_list').show();
			
		}
	});

	/*$(".pop_open").click(function(){
		$('.pop_bgg').fadeIn();
		$('.pop_boxx').fadeIn();
	});*/

	$(".pop_out").click(function(){
		$('.pop_bgg').fadeOut();
		$('.pop_boxx').fadeOut();
	});
	
	
});

/*
$( window ).scroll( function () {
	var scroll = $( window ).scrollTop();
	if($(window).width() >= "1024"){
		if ( scroll >= 200 ) {
			$( 'body' ).addClass( 'fixed' );
			
		} else {
			$( 'body' ).removeClass( 'fixed' );
			
		}
	}
});
*/
$(document).ready(function(){
	/*GMB메뉴 시작 */
	

	$(".menu > li > a").bind('focus mouseover',function(){
		if ($(window).width() > 1024 ){
			$(this).next(".mdp02").slideDown("fast");
			$(this).addClass("ac");
		}
	});
	$(".menu > li > ul.mdp02 > li > a").bind('focus mouseover',function(){
		if ($(window).width() > 1024 ){
			$(this).addClass("at");
		}
	});
	$(".menu > li").bind('focus mouseleave',function(){
		if ($(window).width() > 1024 ){
			$(".menu > li > a").removeClass("on");
			$(".mdp02").slideUp("fast");
		}
	});

	$(".menu").bind('focus mouseover',function(){
		if ($(window).width() > 1024 ){
			$(".pcbg").slideDown(5);
		}
	});
	$(".menu").bind('focus mouseleave',function(){
		if ($(window).width() > 1024 ){
			$(".pcbg").slideUp(5);
		}
	});


	$(".menu > li > a").click(function (e){
		if ($(window).width() <= 1024 ){
			if($(this).siblings().length > 0){
				e.preventDefault();
			}
			if ( $(this).hasClass('on') )
			{
				$(".menu > li > a").removeClass("on");
				$(".mdp02").slideUp("fast");
			}else{
				$(".menu > li > a").removeClass("on");
				$(".mdp02").slideUp("fast");
				$(this).next(".mdp02").slideDown("fast");
				$(this).addClass("on");
			}
		}
	});

	$(".mor_open").click(function(){
		if ($(window).width() <= 1024 ){
			
			$("body").css({"overflow-y":"hidden"});
			$(".menu_area").animate({
				left:'0'
			});
			$(".top_btnsm").css({"display":"block"});
			
			$(".menu_bg").fadeIn();
		}
	});

	$(".mor_out").click(function(){
		if ($(window).width() <= 1024 ){
			//alert("111")
			$("body").css({"overflow-y":"auto"});
			$(".menu_area").animate({
				left:'-300'
			});
			$(".top_btnsm").css({"display":"none"});
			$(".menu_bg").fadeOut();
		}
	});
	/*GMB메뉴 끝 */

	$('.mtabs_btn > li > a').click(function(){
		//alert("11")
		var index =  $(this).parent("li").index();
		$(this).parent("li").addClass('on').siblings().removeClass('on');
		$(".mgs_box").eq(index).addClass('on').siblings().removeClass('on');
		return false;
	});


	$(".qout").click(function(){
		$(".quick_box").fadeOut();
	});

	$(".snavi_all > li > a").click(function (){
		if ( $(this).hasClass('on') )
		{
			$(".snavi_all > li > a").removeClass("on");
			$(".sndp").slideUp("fast");
		}else{
			$(".snavi_all > li > a").removeClass("on");
			$(".sndp").slideUp("fast");
			$(this).next(".sndp").slideDown("fast");
			$(this).addClass("on");
		}
	});
	

	$(".faq_all > li > a").click(function(){
		if ( $(this).hasClass('on') )
		{
			$(".faq_all > li > a").removeClass("on");
			$(".faq_dp02").slideUp("fast");
		}else{
			$(".faq_all > li > a").removeClass("on");
			$(".faq_dp02").slideUp("fast");
			$(this).next(".faq_dp02").slideDown("fast");
			$(this).addClass("on");
		}
	});

	/*$(".cbn_line > li > a").click(function(){
		if ( $(this).parent("li").hasClass('on') )
		{
			$(this).parent("li").removeClass("on");
		}else{
			
			$(this).parent("li").addClass("on");
		}
	});*/
});








$(window).on("load resize", function(){

	$("body").removeAttr("style");
	$(".logo").removeAttr("style");
	$(".menu_area").removeAttr("style");
	$(".menu").removeAttr("style");
	$(".mdp02").removeAttr("style");
	$(".menu_bg").removeAttr("style");
	$(".menu > li > a").removeClass("on");
	$( 'body' ).removeClass( 'fixed' );
	$(".pop_area").removeAttr("style");

	$(".mic_line > li").each(function(){
		var mich = $(this).width();
		$(this).css({height:mich});
	});

});



