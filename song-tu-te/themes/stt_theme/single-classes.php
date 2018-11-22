<?php
get_header();
?>
<?php

$post_id = $post->ID;
$categories = get_the_category($post_id);

$level = get_the_terms($post, 'level')[0]->name;

?>


<div class="bg-detail-header">
    <img src="<?php echo get_template_directory_uri(); ?>/img/photo01.jpeg">
    <div>
        <h2 class="main-detail-title"><?php echo the_title(); ?></h2>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>"><i class="ti-home"></i> Trang chủ</a>
                </li>
                <?php
                foreach ($categories as $category) {
                    echo "<li class='breadcrumb-item'><a href=" . $category->slug . ">" . $category->name . "</a></li>";
                }
                ?>
            </ol>
        </nav>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function (event) {
        $('.bg-detail-header .breadcrumb-item:last-child').addClass('active');
    });

</script>

<div class="bg-triangle bgadd-gray after-header">
    <div class="container t-90">
        <div class="header-main" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);">
            <a href="#" class="btn hexbox-btn">Tiếp tục bài học</a>
        </div>
        <div class="mt-3 after-header-main">
            <div class="header-tag">
                <span class="border-right"><small>Độ khó</small><?php echo $level; ?></span>
                <span class="border-right"><small>Thời lượng</small><?php echo secondtoHMS(get_field('pl_thoi_luong')); ?></span>
                <span><small>Chia sẻ</small><a href="#" class="fs-18" style="color: #4267b2"><i class="ti-facebook"></i></a> <a
                            href="#" class="fs-18" style="color: #1da1f2"><i class="ti-twitter-alt"></i></a> <a href="#"
                                                                                                                class="fs-18"
                                                                                                                style="color: #bd081c"><i
                                class="ti-pinterest-alt"></i></a> </span>
            </div>
            <div><a href="#" class="btn hex-btn hex-btn-orange">Lưu lại</a></div>
        </div>
        <div class="tag-container">
            <a href="#" class="badge badge-pill">Beginner</a>
            <a href="#" class="badge badge-pill">Primary</a>
            <a href="#" class="badge badge-pill">yoga</a>
        </div>
        <div class="main-preview">
            <input id="slide-preview" type="checkbox" role="button"/>
            <label for="slide-preview"><i class="ti-arrow-circle-down"></i></label>
            <div class="main-preview-ct">
                <?php
                echo get_the_excerpt();
                ?>
            </div>
        </div>
        <div class="row my-5 pb-5">
            <div class="col-lg-9 col-sm-12">
                <div class="panel-white">
                    <h4 class="panel-title">Chương trình học</h4>
                    <ul class="learn-list">
                        <?php
                        $rows = get_field('pl_videos', $post_id);
                        if ($rows) {
                            foreach ($rows as $row) {
                                $title = $row['pl_title'];
                                $des = $row['pl_description'];
                                $video_length = secondtoHMS($row['pl_video_length']);
                                $echo = '<li class="completed">' .
                                    '<a href="#">' .
                                    '<span class="learn-check"><i class="ti-control-record"></i></span>' .
                                    '<span class="learn-title">' . $title . '<small>-' . $video_length . '</small></span>' .
                                    '<span class="learn-after"><span class="learn-hover"></span></span>' .
                                    '</a>' .
                                    '</li>';
                                echo $echo;
                            }
                        }

                        ?>
                    </ul>
                </div>
            </div>
            <?php

            $instructor = get_field('instructor_field', $post_id);
            $name = $instructor->name;
            $description = $instructor->description;

            ?>
            <div class="col-lg-3 col-sm-12">
                <div class="panel-white">
                    <div class="panel-author-header">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                            <defs>
                                <clipPath id="author-1">
                                    <path d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                </clipPath>
                            </defs>
                            <image xlink:href="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e89aa20603ea9fe62ddc6014276ca41&auto=format&fit=crop&w=800&q=60"
                                   clip-path="url(#author-1)"/>
                        </svg>
                        <h4>
                            <small>Huấn luyện viên</small>
                            <?php echo $name; ?>
                        </h4>
                    </div>
                    <p class="p-4"><?php echo $description; ?></p>
                    <p class="text-center"><a href="<?php ?>" class="btn hex-btn">Xem
                            thêm</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg-triangle bg-white" style="margin-top: -60px;">
    <div class="main-padding">
        <div class="container-fluid">
            <h2 class="text-center">Các lớp liên quan</h2>
            <div class="row">
                <?php
                $posts = getPostRelated($post_id, 'post_related_items', 'playlist', 4);
                include( 'template-parts/box-tin-default.php' );
                ?>

               

            


            </div>
        </div>
    </div>
</div>


<?php get_footer(); ?>


