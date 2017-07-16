// JavaScript Document

//商品规格选择
$(function() {
	$(".theme-options").each(function() {
		var i = $(this);
		var p = i.find("#S");
		p.click(function() {
			$("#size_s").attr("name","");
			$("#size_m").attr("name","");
			$("#size_l").attr("name","");
			$("#size_xl").attr("name","");
			if ($(this).hasClass("selected")) {
				$(this).removeClass("selected");
					$("#size_s").attr("name","");
			} else {
				$(this).addClass("selected").siblings("li").removeClass("selected");
					$("#size_s").attr("name","size");
			}

		})
		var M = i.find("#M");
		M.click(function() {
			$("#size_s").attr("name","");
			$("#size_m").attr("name","");
			$("#size_l").attr("name","");
			$("#size_xl").attr("name","");
			if ($(this).hasClass("selected")) {
				$(this).removeClass("selected");
					$("#size_m").attr("name","");
			} else {
				$(this).addClass("selected").siblings("li").removeClass("selected");
					$("#size_m").attr("name","size");
			}

		})
		var L = i.find("#L");
		L.click(function() {
			$("#size_s").attr("name","");
			$("#size_m").attr("name","");
			$("#size_l").attr("name","");
			$("#size_xl").attr("name","");
			if ($(this).hasClass("selected")) {
				$(this).removeClass("selected");
					$("#size_l").attr("name","");
			} else {
				$(this).addClass("selected").siblings("li").removeClass("selected");
					$("#size_l").attr("name","size");
			}

		})
		var XL = i.find("#XL");
		XL.click(function() {
			$("#size_s").attr("name","");
			$("#size_m").attr("name","");
			$("#size_l").attr("name","");
			$("#size_xl").attr("name","");
			if ($(this).hasClass("selected")) {
				$(this).removeClass("selected");
					$("#size_xl").attr("name","");
			} else {
				$(this).addClass("selected").siblings("li").removeClass("selected");
					$("#size_xl").attr("name","size");
			}
		})
		var XL = i.find("#black");
		XL.click(function() {
			$("#color_black").attr("name","");
			$("#color_white").attr("name","");
			if ($(this).hasClass("selected")) {
				$(this).removeClass("selected");
					$("#color_black").attr("name","");
			} else {
				$(this).addClass("selected").siblings("li").removeClass("selected");
					$("#color_black").attr("name","color");
			}
		})
		var XL = i.find("#white");
		XL.click(function() {
			$("#color_black").attr("name","");
			$("#color_white").attr("name","");
			if ($(this).hasClass("selected")) {
				$(this).removeClass("selected");
					$("#color_white").attr("name","");
			} else {
				$(this).addClass("selected").siblings("li").removeClass("selected");
					$("#color_white").attr("name","color");
			}
		})
	})
})


//弹出规格选择
$(document).ready(function() {
	var $ww = $(window).width();
	if ($ww <1025) {
		$('.theme-login').click(function() {
			$(document.body).css("position", "fixed");
			$('.theme-popover-mask').show();
			$('.theme-popover').slideDown(200);

		})

		$('.theme-poptit .close,.btn-op .close').click(function() {
			$(document.body).css("position", "static");
			//					滚动条复位
			$('.theme-signin-left').scrollTop(0);

			$('.theme-popover-mask').hide();
			$('.theme-popover').slideUp(200);
		})

	}
})

//导航固定
$(document).ready(function() {
	var $ww = $(window).width();
	var dv = $('ul.am-tabs-nav.am-nav.am-nav-tabs'),
		st;

	if ($ww < 623) {

				var tp =$ww+363;
				$(window).scroll(function() {
					st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
					if (st >= tp) {
						if (dv.css('position') != 'fixed') dv.css({
							'position': 'fixed',
							top: 53,
							'z-index': 1000009
						});

					} else if (dv.css('position') != 'static') dv.css({
						'position': 'static'
					});
				});
				//滚动条复位（需要减去固定导航的高度）

				$('.introduceMain ul li').click(function() {
					sts = tp;
					$(document).scrollTop(sts);
				});
       } else {

		dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
		var tp = parseInt(dv.attr('otop'))+36;
		$(window).scroll(function() {
			st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
			if (st >= tp) {
             
					if (dv.css('position') != 'fixed') dv.css({
						'position': 'fixed',
						top: 0,
						'z-index': 998
					});

				//滚动条复位	
				$('.introduceMain ul li').click(function() {
					sts = tp-35;
					$(document).scrollTop(sts);
				});

			} else if (dv.css('position') != 'static') dv.css({
				'position': 'static'
			});
		});



	}
});



$(document).ready(function() {
	//优惠券
	$(".hot span").click(function() {
		$(".shopPromotion.gold .coupon").toggle();
	})




	//获得文本框对象
	var t = $("#text_box");
	//初始化数量为1,并失效减
	$('#min').attr('disabled', true);
	//数量增加操作
	$("#add").click(function() {
			t.val(parseInt(t.val()) + 1)
			if (parseInt(t.val()) != 1) {
				$('#min').attr('disabled', false);
			}

		})
		//数量减少操作
	$("#min").click(function() {
		t.val(parseInt(t.val()) - 1);
		if (parseInt(t.val()) == 1) {
			$('#min').attr('disabled', true);
		}

	})

})