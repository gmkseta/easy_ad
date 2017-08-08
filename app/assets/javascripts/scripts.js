(function ($) {
    'use strict';

    jQuery(document).ready(function () {

        
       /* Preloader */
        $(window).on('load', function() {
          $('body').addClass('loaded');
        });
		
		
		
       /* Smooth Scroll */
        $('a.smoth-scroll').on("click", function (e) {
            var anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $(anchor.attr('href')).offset().top - 50
            }, 1000);
            e.preventDefault();
        });
		


       
       /* Scroll Naviagation Background Change with Sticky Navigation 이게 아마 특정 지점 아래로 내려가면 navbar 백그라운드가 바뀌는 것*/
        $(window).on('scroll', function () {
            if ($(window).scrollTop() > 100) {
                $('.header-top-area').addClass('navigation-background');
            } else {
                $('.header-top-area').removeClass('navigation-background');
            }
        });
		
		
       /* Mobile Navigation Hide or Collapse on Click navbar 모바일버전 (반응형 지원) */
        $(document).on('click', '.navbar-collapse.in', function (e) {
            if ($(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle') {
                $(this).collapse('hide');
            }
        });
        $('body').scrollspy({
            target: '.navbar-collapse',
            offset: 195
        
		 });
		
		
        /* Typed.js 글씨 샥샥 */
        
        $(window).load(function(){
        $(".typing").typed({
            strings: ["아싸 개이득-!", "찌라시 만들기 진짜 쉽다구요!", "헤헤 만들러가기!~.~"],    /* You can change the home section typing text from
	                                                                                            here and do not use "&" use "and" */
            typeSpeed: 50
          });
         });
        
		 
        /* Parallax Background */
        $(window).stellar({
            responsive: true,
            horizontalScrolling: false,
            hideDistantElements: false,
            horizontalOffset: 0,
            verticalOffset: 0,
        });

        
        /* Portfolio Filtering */
        $('.portfolio-inner').mixItUp();


       
        /* Magnific Popup 레이어팝업 형태 */
        $('.portfolio-popup').magnificPopup({
            type: 'image',
			
            gallery: { enabled: true },
			zoom: { enabled: true,
			        duration: 500
					
          },
		  
         image:{
               markup: '<div class="mfp-figure portfolio-pop-up">'+
               '<div class="mfp-close"></div>'+
               '<div class="mfp-img"></div>'+
               '<div class="mfp-bottom-bar portfolio_title">'+
               '<div class="mfp-title"></div>'+
               '<div class="mfp-counter"></div>'+
               '</div>'+
               '</div>',

               titleSrc:function(item){
                return item.el.attr('title');
              }
            }
		  
		  
          });
		   
              
		   
            });

   })(jQuery);