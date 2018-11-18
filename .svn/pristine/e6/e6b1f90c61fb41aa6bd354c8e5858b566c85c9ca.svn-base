<?php

    $posts = stt_auto_zone_posts('stt_home_top' ,'stt_home_top_sub', stt_home_top, ['playlist', 'recipe', 'post'],  3);
    $total_posts = count($posts);

?>


<div class="main-padding index">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div id="carouselIndex" class="carousel slide carousel-fade carousel-index" data-ride="carousel1">

                    <ol class="carousel-indicators">
                        <?php

                            for ($i = 1; $i <= $total_posts; $i++):
                           
                        ?>
                        <?php

                        ?>
                        <li data-target="#carouselIndex" data-slide-to="<?php echo $i -1; ?>" class="<?php if($i == 1) echo 'active' ?>"><?php  echo $i; ?></li>
            
                        <?php
                            endfor;
                        ?>
                    </ol>
                    <div class="carousel-inner">
                        <?php
                            
                            $i = 0;
                            foreach ($posts as $post):
                                setup_postdata( $post );
                                $i++;
                                $src_thumbnail = get_the_post_thumbnail_url($post,'thumbnail-zise-1');
                            
                                $instructor = get_field('instructor_field');
                                $level =  get_the_terms($post, 'level')[0];
                                $thoiluong = get_field( 'pl_thoi_luong');

                                

                        ?>
                        <div class="carousel-item <?php if($i == 1) {echo 'active';} ?>">
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
                                                <clipPath id="image-<?php echo $i;?>">
                                                    <path d="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" fill="#000000" transform="rotate(20,280,600)"></path>
                                                </clipPath>
                                            </defs>
                                            <image clip-path="url(#image-<?php echo $i;?>)" xlink:href="<?php echo $src_thumbnail;?>"></image>
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
                                        <?php
                                            if($instructor != false):
                                        ?>
                                        <a href="<?php echo get_term_link($instructor);?>"><img src="<?php echo get_field('instr_avatar', $instructor); ?>" alt="<?php $instructor->name ?>" class="rounded-circle" style="width: 40px; height: 40px"></a>
                                     
                                        <span class="border-right"><small>Dạy bởi</small><a href="<?php echo get_term_link($instructor);?>"><?php echo $instructor->name; ?></a></span>
                                        <?php 
                                            endif;
                                        ?>
                                        <?php
                                            if($level != false):
                                        ?>
                                        <span class="border-right"><small>Độ khó</small><a href="<?php echo get_term_link($level);?>"><?php echo $level->name ?></a></span>
                                        <?php
                                            endif;
                                        ?>

                                        <?php
                                            if($thoiluong != false):
                                        ?>

                                            <span><small>Thời lượng</small><?php echo $thoiluong;  ?></span>

                                        <?php 
                                            endif;
                                        ?>
                                    </div>
                                    <h2 class="my-5"><?php the_title(); ?></h2>
                                    <p><?php echo get_the_excerpt(); ?></p>
                                    <a href="<?php the_permalink() ?>" class="btn hexbox-btn my-5">Học ngay</a>
                                </div>
                            </div>
                        </div>
                        <?php
                            endforeach;
                            wp_reset_postdata();
                        ?>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>