<?php
    $list_category = sst_auto_category_zone_co_thu_tu('stt_home_cate' , 'stt_home_cate_sub', stt_home_cate);
?>
<div class="bg-triangle bg-gray">
    <div class="main-padding">
        <div class="container-fluid">
            <h2 class="text-center">Songtute.vn có gì HAY?</h2>
            <p class="px-5 text-center"> Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English.</p>
            <div class="py-5 hex-grid">
                <ul class="grid4">
                    <?php 
                        foreach ($list_category as $category):
                    ?>
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
                                        <stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0" />
                                        <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:0.7" />
                                    </linearGradient>
                                </defs>
                                <image xlink:href="<?php echo get_field('cate_thumbnail', $category); ?>" clip-path="url(#grid4-1)" />
                                <use xlink:href="#grid4-path-1" fill="url(#gradient-black)" />
                                <use xlink:href="#grid4-path-1" class="cover-color" fill="url(#gradient)" />
                            </svg>
                            <span><?php echo $category->name; ?></span>
                        </a>
                    </li>
                    <?php
                        endforeach;
                    ?>
                 
                </ul>
            </div>
        </div>
    </div>
</div>