
<?php
$list_instructor = sst_auto_instructor_zone_co_thu_tu('stt_home_instructor', 'stt_home_instructor_sub', 155);
// var_dump(is_array($list_instructor));



?>


<div style="background: url(<?php echo template_directory;?>/img/hex-bg.png) top center no-repeat; background-size: cover;">
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
                                        <?php 
                                            foreach ($list_instructor as $instructor):
                                            
                                                $src_avatar = get_field('instr_avatar', $instructor);
                                                $title = get_field('instr_title', $instructor);
                                                $instr_name = $instructor->name;
                                        ?>
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
                                                    <image xlink:href="<?php echo $src_avatar; ?>" clip-path="url(#grid6-1)" />
                                                    <use xlink:href="#grid4-path-2" class="cover-color" fill="url(#gradient)" />
                                                </svg>
                                                <h5><?php echo $instr_name; ?><small><?php echo $title; ?></small></h5>
                                            </a>
                                        </li>
                                        <?php
                                            endforeach;
                                           
                                        ?>
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
                <p class="text-center py-0"><a class="btn mx-auto btn-hex-lg" href="#">Tham gia ngay</a></p>
            </div>
        </div>
    </div>
</div>