jQuery(document).ready(function($){
	var duration = ( $('.no-csstransitions').length > 0 ) ? 0 : 300;
	//define a svgClippedSlider object
	function svgClippedSlider(element) {
		this.element = element;
		this.slidesGallery = this.element.find('.gallery').children('li');
		this.slidesCaption = this.element.find('.caption').children('li');
		this.slidesNumber = this.slidesGallery.length;
		this.selectedSlide = this.slidesGallery.filter('.selected').index();
		this.arrowNext = this.element.find('.navigation').find('.next');
		this.arrowPrev = this.element.find('.navigation').find('.prev');

		this.visibleSlidePath = this.element.data('selected');
		this.lateralSlidePath = this.element.data('lateral');

		this.bindEvents();
	}

	svgClippedSlider.prototype.bindEvents = function() {
		var self = this;
		//detect click on one of the slides
		this.slidesGallery.on('click', function(event){
			if( !$(this).hasClass('selected') ) {
				//determine new slide index and show it
				var newSlideIndex = ( $(this).hasClass('left') )
					? self.showPrevSlide(self.selectedSlide - 1)
					: self.showNextSlide(self.selectedSlide + 1);
			}
		});
	}

	svgClippedSlider.prototype.showPrevSlide = function(index) {
		var self = this;
		this.selectedSlide = index;
		this.slidesGallery.eq(index + 1).add(this.slidesCaption.eq(index + 1)).removeClass('selected').addClass('right');
		this.slidesGallery.eq(index).add(this.slidesCaption.eq(index)).removeClass('left').addClass('selected');

		//morph the svg cliph path to reveal a different region of the image
		Snap("#cd-morphing-path-"+(index+1)).animate({'d': self.visibleSlidePath}, duration, mina.easeinout);
		Snap("#cd-morphing-path-"+(index+2)).animate({'d': self.lateralSlidePath}, duration, mina.easeinout);

		if( index - 1 >= 0  ) this.slidesGallery.eq(index - 1).add(this.slidesCaption.eq(index - 1)).removeClass('left-hide').addClass('left');
		if( index + 2 < this.slidesNumber ) this.slidesGallery.eq(index + 2).add(this.slidesCaption.eq(index + 2)).removeClass('right');
	
		( index <= 0 ) && this.element.addClass('prev-hidden');
		this.element.removeClass('next-hidden');

		//animate prev arrow on click
		this.arrowPrev.addClass('active').on('webkitAnimationEnd oanimationend msAnimationEnd animationend', function(){
			self.arrowPrev.removeClass('active');
		});
	}

	svgClippedSlider.prototype.showNextSlide = function(index) {
		var self = this;
		this.selectedSlide = index;
		this.slidesGallery.eq(index - 1).add(this.slidesCaption.eq(index - 1)).removeClass('selected').addClass('left');
		this.slidesGallery.eq(index).add(this.slidesCaption.eq(index)).removeClass('right').addClass('selected');

		//morph the svg cliph path to reveal a different region of the image
		Snap("#cd-morphing-path-"+(index+1)).animate({'d': self.visibleSlidePath}, duration, mina.easeinout);
		Snap("#cd-morphing-path-"+(index)).animate({'d': self.lateralSlidePath}, duration, mina.easeinout);

		if( index - 2 >= 0  ) this.slidesGallery.eq(index - 2).add(this.slidesCaption.eq(index - 2)).removeClass('left').addClass('left-hide');
		if( index + 1 < this.slidesNumber ) this.slidesGallery.eq(index + 1).add(this.slidesCaption.eq(index + 1)).addClass('right');
		
		( index + 1 >= this.slidesNumber ) && this.element.addClass('next-hidden');
		this.element.removeClass('prev-hidden');

		//animate next arrow on click
		this.arrowNext.addClass('active').on('webkitAnimationEnd oanimationend msAnimationEnd animationend', function(){
			self.arrowNext.removeClass('active');
		});
	}

	$('.cd-svg-clipped-slider').each(function(){
		//create a svgClippedSlider object for each .cd-svg-clipped-slider
		new svgClippedSlider($(this));
	});


	var svgRec = 'M718.02163,156 L1301.04326,156 C1310.98439,156 1319.04326,164.058875 1319.04326,174 L1319.04326,832 C1319.04326,841.941125 1310.98439,850 1301.04326,850 L135,850 C125.058875,850 117,841.941125 117,832 L117,174 C117,164.058875 125.058875,156 135,156 Z';
	var svgDefault = 'M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z';
	$('.btn-modal').click(function(event) {
		event.preventDefault();
		var currenID = ($(this).data('id'));
		$(this).parent().addClass('bigplay');
		$(this).parent().find('i').addClass('d-none');
		$('.carousel-indicators').addClass('d-none');
		$('.carousel-index').addClass('carousel-index-show');
		$(this).parent().find('button').addClass('show');
		Snap("#ele_hexagon path").animate({'d': svgRec}, 1000, mina.easeinout);
			
		$('.img-svg').addClass('zoomOutImg');
		setTimeout(function(){ 
			$('.btn-modal').addClass('active-popup');
			$('body').addClass('no-scroll');
		}, 100);
		setTimeout(function(){
			$('.video-slide').addClass('show-video');
			$('#video-slide').attr('src', 'https://www.youtube.com/embed/' + currenID + '?autoplay=1');

		},500);
		return false;
	});
	$('.btn-close-video').click(function() {
		$(this).removeClass('show');
		$('body').removeClass('no-scroll');
		$('.video-slide').removeClass('show-video');
		Snap("#ele_hexagon path").animate({'d': svgDefault}, 1000, mina.easeinout);
		setTimeout(function(){
			$('#video-slide').attr('src', '');
			$('.img-svg').removeClass('zoomOutImg');
		},500);
		setTimeout(function(){
			$('.btn-modal').removeClass('active-popup');
			$('.wrapper-slider').removeClass('bigplay');
			$('i').removeClass('d-none');
			$('.carousel-indicators').removeClass('d-none');
			$('.carousel-index').removeClass('carousel-index-show');
		},1000);
		
		

	});
	$(window).scroll(function() {    
        var scrollFilter = $(window).scrollTop();

         //>=, not <=
        if (scrollFilter >= 250) {
            //clearHeader, not clearheader - caps H
            $(".filter-row").addClass("filter-fixed");
        }
        else {
          $(".filter-row").removeClass("filter-fixed");
        }
    });

});













