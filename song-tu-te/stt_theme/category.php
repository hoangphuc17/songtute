<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package The_new_Idesign
 */

get_header(); ?>

<?php
// $current_page = get_current_page();
// $categories = get_the_category();
// $category_name = single_cat_title("", false);
?>
  <div id="search" class="fade">
      <a href="#" class="close-btn" id="close-search">
          <i class="ti-close"></i>
      </a>
      <input placeholder="nhập từ khóa tìm kiếm..." id="searchbox" type="search"/> <button type="submit"><i class="ti-search"></i></button>
    </div>
<main>
      <div class="py-60" style="background: #f7f7f7 url(<?php echo get_template_directory_uri(); ?>/img/hex-bg.png) top center no-repeat; background-size: cover;">
        <div class="main-padding">
          <h2 class="main-title">Tập luyện<small>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero magna, auctor vitae risus sed, fermentum sollicitudin sem. Quisque vel lorem id est malesuada rhoncus quis dapibus mi. Duis fringilla nunc nec mi pharetra tincidunt. </small></h2>
          <div class="cd-svg-clipped-slider" data-selected="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" data-lateral="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z">

            <div class="gallery-wrapper">
              <ul class="gallery">
                <li class="left">
                  <div class="svg-wrapper">
                    <svg viewBox="0 0 694 788">
                      <a href="#">
                        <title>Animated SVG</title>
                        <defs>
                          <clipPath id="cd-image-1">
                            <path id="cd-morphing-path-1" d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z"/>
                          </clipPath>
                          <linearGradient id="gradient-black" x1="0%" y1="60%" x2="0%" y2="100%">
                            <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"/>
                            <stop offset="50%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                          </linearGradient>
                        </defs>
                        
                        <image height='788px' width="694px" clip-path="url(#cd-image-1)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-01.jpg"></image>
                        <use xlink:href="#cd-morphing-path-1" class="cover-layer" />
                        <use xlink:href="#cd-morphing-path-1" class="cover-layer-black" fill="url(#gradient-black)"/>
                      </a>
                    </svg>
                  </div> <!-- .svg-wrapper -->
                </li>

                <li class="selected">
                  <div class="svg-wrapper">
                    <a href="#">
                      <svg viewBox="0 0 694 788">
                        <title>Animated SVG</title>
                        <defs>
                          <clipPath id="cd-image-2">
                            <path id="cd-morphing-path-2" d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z"/>
                          </clipPath>
                        </defs>
                        
                        <image height='788px' width="694px" clip-path="url(#cd-image-2)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-02.jpg"></image>
                        <use xlink:href="#cd-morphing-path-2" class="cover-layer" />
                        <use xlink:href="#cd-morphing-path-2" class="cover-layer-black" fill="url(#gradient-black)"/>
                      </svg>
                    </a>
                  </div> <!-- .svg-wrapper -->
                </li>

                <li class="right">
                  <div class="svg-wrapper">
                    <svg viewBox="0 0 694 788">
                      <title>Animated SVG</title>
                      <defs>
                        <clipPath id="cd-image-3">
                          <path id="cd-morphing-path-3" d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z"/>
                        </clipPath>
                      </defs>
                      
                      <image height='788px' width="694px" clip-path="url(#cd-image-3)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-03.jpg"></image>
                      <use xlink:href="#cd-morphing-path-3" class="cover-layer" />
                      <use xlink:href="#cd-morphing-path-3" class="cover-layer-black" fill="url(#gradient-black)"/>
                    </svg>
                  </div> <!-- .svg-wrapper -->
                </li>

                <li>
                  <div class="svg-wrapper">
                    <svg viewBox="0 0 694 788">
                      <title>Animated SVG</title>
                      <defs>
                        <clipPath id="cd-image-4">
                          <path id="cd-morphing-path-4" d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z"/>
                        </clipPath>
                      </defs>
                      
                      <image height='788px' width="694px" clip-path="url(#cd-image-4)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-04.jpg"></image>
                      <use xlink:href="#cd-morphing-path-4" class="cover-layer" />
                      <use xlink:href="#cd-morphing-path-4" class="cover-layer-black" fill="url(#gradient-black)"/>
                    </svg>
                  </div> <!-- .svg-wrapper -->
                </li>

                <li>
                  <div class="svg-wrapper">
                    <svg viewBox="0 0 694 788">
                      <title>Animated SVG</title>
                      <defs>
                        <clipPath id="cd-image-5">
                          <path id="cd-morphing-path-5" d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z"/>
                        </clipPath>
                      </defs>
                      
                      <image height='788px' width="694px" clip-path="url(#cd-image-5)" xlink:href="<?php echo get_template_directory_uri(); ?>/img/img-05.jpg"></image>
                      <use xlink:href="#cd-morphing-path-5" class="cover-layer" />
                      <use xlink:href="#cd-morphing-path-5" class="cover-layer-black" fill="url(#gradient-black)"/>
                    </svg>
                  </div> <!-- .svg-wrapper -->
                </li>
              </ul>
              
              <nav>
                <ul class="navigation">
                  <li><a href="#0" class="prev">Prev</a></li>
                  <li><a href="#0" class="next">Next</a></li>
                </ul>
              </nav>
            </div> <!-- .gallery-wrapper -->

            <ul class="caption">
              <li class="left">Lorem ipsum dolor<small>Yoga <span class="mx-2">|</span> <i class="ti-user"></i> Jonash Kesh</small></li>
              <li class="selected">Consectetur adipisicing elit<small>Yoga <span class="mx-2">|</span> <i class="ti-user"></i> Jonash Kesh</small></li>
              <li class="right">Dolorem inventore voluptates tenetur<small>Yoga <span class="mx-2">|</span> <i class="ti-user"></i> Jonash Kesh</small></li>
              <li>Error officiis quae<small>Yoga <span class="mx-2">|</span> <i class="ti-user"></i> Jonash Kesh</small></li>
              <li>Provident repellendus eveniet<small>Yoga <span class="mx-2">|</span> <i class="ti-user"></i> Jonash Kesh</small></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="bg-triangle bgadd-white after-featured">
        <div class="main-padding">
          <div class="container-fluid">
            <div class="side-title">
              <h2>Yoga</h2>
              <div><a href="#"><i class="ti-arrow-circle-right"></i> Xem thêm</a></div>
            </div>
            <div class="py-5 scroll-sm-x">
              <div class="card-deck flex-row flex-nowrap" style="min-width: 1024px">
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
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
            <div class="side-title">
              <h2>Fitness</h2>
              <div><a href="#"><i class="ti-arrow-circle-right"></i> Xem thêm</a></div>
            </div>
            <div class="py-5 scroll-sm-x">
              <div class="card-deck flex-row flex-nowrap" style="min-width: 1024px">
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch. Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="<?php echo get_template_directory_uri(); ?>/img/samp01.png">
                  <div class="card-body">
                    <a href="#">
                      <small class="namecate">Fitness</small>
                      <h5 class="card-title">Tập luyện làm tăng kích thước vòng một</h5>
                      <p class="card-text">Dạy bởi thầy Patrick Beach đến từ Đan Mạch.</p>
                    </a>
                  </div>
                  <div class="card-footer">
                    <span class="badge badge-pill badge-tute">Beginner</span>
                    <span class="badge badge-pill badge-tute">2 tuần</span>
                  </div>
                </div>

              </div>
            </div>
            <div class="pt-4 pb-120"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/ads-sample.png" class="img-fluid"></a></div>
          </div>
        </div>
      </div>
      <div class="bg-triangle bg-white">
        <div class="main-padding">
          <div class="container-fluid">
            <h2 class="text-center">Huấn luyện viên</h2>
            <div id="carouselUser" class="carousel slide user-carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="hex-grid">
                    <ul class="grid5">
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
        </div>
      </div>
    </main>


<?php
get_footer();
