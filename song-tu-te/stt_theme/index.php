<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Song_tu_te
 */

get_header();
?>
<?php  

      
      
   $home_bai_moi_nhat = sst_auto_posts_zone_co_thu_tu('stt_home_lastest' ,'stt_home_lastest_sub', stt_home_lastest, ['playlist', 'recipe', 'post'],  8);


          echo "<pre>";
    var_dump( $home_bai_moi_nhat);
    echo "<pre>";
     echo "<br>___________________________________________________________________";
  ?>
    
    <div id="search" class="fade">
      <a href="#" class="close-btn" id="close-search">
          <i class="ti-close"></i>
      </a>
      <input placeholder="nhập từ khóa tìm kiếm..." id="searchbox" type="search"/> <button type="submit"><i class="ti-search"></i></button>
    </div>
    <main>
      <div class="main-padding index">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div id="carouselIndex" class="carousel slide carousel-fade carousel-index" data-ride="carousel1">
                <ol class="carousel-indicators">
                  <li data-target="#carouselIndex" data-slide-to="0" class="active">1</li>
                  <li data-target="#carouselIndex" data-slide-to="1">2</li>
                  <li data-target="#carouselIndex" data-slide-to="2">3</li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="wrapper-slider">
                      <a href="#" class="btn-modal" data-id="xFjFGfTG-ao">

                        <i class="ti-control-play"></i>
                        <svg viewBox="0 0 694 788" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve">
                          <g id="ele_hexagon" stroke="white" stroke-width="30" fill="none" fill-rule="evenodd">
                            <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                          </g>
                        </svg>

                        <svg class="img-svg" viewBox="0 0 694 788" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve">
                          <g id="ele_hexagon_1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <defs>
                              <clipPath id="image-1">
                                <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                              </clipPath>
                            </defs>
                            <image clip-path="url(#image-1)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-slide-1.jpg"></image>
                          </g>
                        </svg>
                      </a>
                      <div class="video-slide">
                        <div class="video-169">
                          <iframe id="video-slide" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                      </div>
                      <button class="btn-close-video" type="button">
                        <span></span>
                        <span></span>
                      </button>
                    </div>
                    <div class="col-lg-6 col-sm-12 offset-xl-1">
                      <div class="carousel-index-content">
                        <div class="header-tag">
                          <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/female.jpg" alt="Ana Phạm" class="rounded-circle" style="width: 40px; height: 40px"></a>
                          <span class="border-right"><small>Dạy bởi</small><a href="#">Ana Phạm</a></span>
                          <span class="border-right"><small>Độ khó</small><a href="#">Intermediate</a></span>
                          <span><small>Thời lượng</small>20 giờ</span>
                        </div>
                        <h2 class="my-5">LỚP LIỆU PHÁP CĂNG CƠ THƯ GIÃN</h2>
                        <p>Use Class Finder to filter by duration, difficulty, and more. Drop-in to the perfect class for you, and get moving immediately.</p>
                        <a href="#" class="btn hexbox-btn my-5">Học ngay</a>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="wrapper-slider">
                      <a href="#" class="btn-modal" data-id="xFjFGfTG-ao">

                        <i class="ti-control-play"></i>
                        <svg viewBox="0 0 694 788" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve">
                          <g id="ele_hexagona" stroke="white" stroke-width="30" fill="none" fill-rule="evenodd">
                            <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                          </g>
                        </svg>

                        <svg class="img-svg" viewBox="0 0 694 788" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve">
                          <g id="ele_hexagon_1a" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <defs>
                              <clipPath id="image-1a">
                                <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                              </clipPath>
                            </defs>
                            <image clip-path="url(#image-1a)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-slide-1.jpg"></image>
                          </g>
                        </svg>
                      </a>
                      <div class="video-slide">
                        <div class="video-169">
                          <iframe id="video-slidea" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                      </div>
                      <button class="btn-close-video" type="button">
                        <span></span>
                        <span></span>
                      </button>
                    </div>
                    <div class="col-lg-6 col-sm-12 offset-xl-1">
                      <div class="carousel-index-content">
                        <div class="header-tag">
                          <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/female.jpg" alt="Ana Phạm" class="rounded-circle" style="width: 40px; height: 40px"></a>
                          <span class="border-right"><small>Dạy bởi</small><a href="#">Ana Phạm</a></span>
                          <span class="border-right"><small>Độ khó</small><a href="#">Intermediate</a></span>
                          <span><small>Thời lượng</small>20 giờ</span>
                        </div>
                        <h2 class="my-5">LỚP LIỆU PHÁP CĂNG CƠ THƯ GIÃN</h2>
                        <p>Use Class Finder to filter by duration, difficulty, and more. Drop-in to the perfect class for you, and get moving immediately.</p>
                        <a href="#" class="btn hexbox-btn my-5">Học ngay</a>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="wrapper-slider">
                      <a href="#" class="btn-modal" data-id="xFjFGfTG-ao">

                        <i class="ti-control-play"></i>
                        <svg viewBox="0 0 694 788" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve">
                          <g id="ele_hexagonb" stroke="white" stroke-width="30" fill="none" fill-rule="evenodd">
                            <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                          </g>
                        </svg>

                        <svg class="img-svg" viewBox="0 0 694 788" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve">
                          <g id="ele_hexagon_1b" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <defs>
                              <clipPath id="image-1b">
                                <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                              </clipPath>
                            </defs>
                            <image clip-path="url(#image-1b)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-slide-1.jpg"></image>
                          </g>
                        </svg>
                      </a>
                      <div class="video-slide">
                        <div class="video-169">
                          <iframe id="video-slideb" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                      </div>
                      <button class="btn-close-video" type="button">
                        <span></span>
                        <span></span>
                      </button>
                    </div>
                    <div class="col-lg-6 col-sm-12 offset-xl-1">
                      <div class="carousel-index-content">
                        <div class="header-tag">
                          <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/female.jpg" alt="Ana Phạm" class="rounded-circle" style="width: 40px; height: 40px"></a>
                          <span class="border-right"><small>Dạy bởi</small><a href="#">Ana Phạm</a></span>
                          <span class="border-right"><small>Độ khó</small><a href="#">Intermediate</a></span>
                          <span><small>Thời lượng</small>20 giờ</span>
                        </div>
                        <h2 class="my-5">LỚP LIỆU PHÁP CĂNG CƠ THƯ GIÃN</h2>
                        <p>Use Class Finder to filter by duration, difficulty, and more. Drop-in to the perfect class for you, and get moving immediately.</p>
                        <a href="#" class="btn hexbox-btn my-5">Học ngay</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>


            </div>
          </div>
        </div>
      </div>

      <div class="bg-triangle bg-gray">
        <div class="main-padding">
          <div class="container-fluid">
            <h2 class="text-center">Songtute.vn có gì HAY?</h2>
            <small class="px-5 text-center d-block"> Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English.</small>
            <div class="py-5 hex-grid">
              <ul class="grid4">
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-1">
                          <path id="grid4-path-1" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay01.png" clip-path="url(#grid4-1)" />
                      <use xlink:href="#grid4-path-1" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-1" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Fitness</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-2">
                          <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay02.png" clip-path="url(#grid4-2)" />
                      <use xlink:href="#grid4-path-2" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Yoga</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-3">
                          <path id="grid4-path-3" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay03.png" clip-path="url(#grid4-3)" />
                      <use xlink:href="#grid4-path-3" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-3" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Dinh dưỡng</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-4">
                          <path id="grid4-path-4" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay04.png" clip-path="url(#grid4-4)" />
                      <use xlink:href="#grid4-path-4" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-4" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Ẩm thực</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-5">
                          <path id="grid4-path-5" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay05.png" clip-path="url(#grid4-5)" />
                      <use xlink:href="#grid4-path-5" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-5" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Ý tưởng</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-6">
                          <path id="grid4-path-6" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay06.png" clip-path="url(#grid4-6)" />
                      <use xlink:href="#grid4-path-6" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-6" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Địa điểm</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                      <defs>
                        <clipPath id="grid4-7">
                          <path id="grid4-path-7" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                        </clipPath>
                        <linearGradient id="gradient">
                          <stop offset="0%" stop-color="#FAD961" />
                          <stop offset="100%" stop-color="#F76B1C" />
                        </linearGradient>
                        <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                          <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                          <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                        </linearGradient>
                      </defs>
                      <image xlink:href="<?php echo get_template_directory_uri(); ?>/img/hay07.png" clip-path="url(#grid4-7)" />
                      <use xlink:href="#grid4-path-7" fill="url(#gradient-black)"/>
                      <use xlink:href="#grid4-path-7" class="cover-color" fill="url(#gradient)"/>
                    </svg>
                    <span>Sự kiện</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="bg-triangle bg-white">
        <div class="main-padding pb-0">
          <div class="container-fluid">
            <h2 class="text-center">Mới nhất</h2>
            <div class="card-columns pt-5">
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              <div class="card">
                <a href="#">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <small class="namecate">Fitness</small>
                    <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                    <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </a>
              </div>
              
              
            </div>
          </div>
        </div>
      </div>

      <div style="background: url(<?php echo get_template_directory_uri(); ?>/img/hex-bg.png) top center no-repeat; background-size: cover;">
        <div class="bg-triangle bginve-white">
          <div class="main-padding">
            <div class="container-fluid">
              <h2 class="text-center">Cộng đồng tử tế</h2>
              <div>
                <div id="carouselUser" class="carousel slide user-carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <div class="hex-grid">
                        <ul class="grid6">
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                  <clipPath id="grid6-1">
                                    <path id="grid4-path-2" d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                  </clipPath>
                                  <linearGradient id="gradient">
                                    <stop offset="0%" stop-color="#FAD961" />
                                    <stop offset="100%" stop-color="#F76B1C" />
                                  </linearGradient>
                                </defs>
                                <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60" clip-path="url(#grid6-1)" />
                                <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)"/>
                              </svg>
                              <h5>Kevin Hoffer<small>Master Yoga</small></h5>
                            </a>
                          </li>
                        </ul>
                      </div>

                    </div>
                    <div class="carousel-item">
                      same
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselUser" role="button" data-slide="prev">
                    <span class="ti-angle-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselUser" role="button" data-slide="next">
                    <span class="ti-angle-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
                
              </div>
              <p class="small-text mx-auto text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta purus eget metus auctor consectetur. Vestibulum malesuada massa risus, eu laoreet quam efficitur at.</p>
              <p class="text-center"><a class="btn mx-auto btn-hex-lg" href="#">Tham gia ngay</a></p>
            </div>
          </div>
        </div>
      </div>

    </main>


<?php
//get_sidebar();
get_footer();