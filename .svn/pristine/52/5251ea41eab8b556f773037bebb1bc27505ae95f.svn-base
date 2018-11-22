<?php get_header(); ?>

<?php


$post_id = $post->ID;
$categories = get_the_category($post_id);

$instructor = get_field('instructor_field');
$instructor_cover = get_field('instr_cover', $instructor);
$instructor_title = get_field('instr_title', $instructor);
$instructor_name = $instructor->name;
$instructor_description = $instructor->description;

$post_date = get_the_date('Y/m/d');
$post_sapo = get_the_excerpt();

$thoi_gian_nau = get_field('rc_thoi_gian_nau');
$link_video = get_field('rc_link_youtube');
$so_luong_phuc_vu = get_field('rc_serving_size');


?>
<main>
    <div class="bg-detail-header">
        <img src="<?php echo get_the_post_thumbnail_url(); ?>">
        <div>
            <h2 class="main-detail-title"><?php echo the_title(); ?></h2>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>"><i class="ti-home"></i> Trang
                            chủ</a></li>

                    <?php
                    foreach ($categories as $category) {
                        echo "<li class='breadcrumb-item'><a href=" . $category->slug . ">" . $category->name . "</a></li>";
                    }
                    ?>
                </ol>
            </nav>
        </div>
    </div>

    <div class="bg-triangle bgadd-gray after-header">
        <div class="container t-90">
            <div class="header-main"
                 style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);">
                <a href="#" class="btn hexbox-btn">Xem hướng dẫn</a>
            </div>
            <div class="my-3 after-header-main">
                <div class="header-tag">
                    <span class="border-right"><small>Thời gian nấu</small><?php echo secondtoHMS($thoi_gian_nau); ?></span>
                    <span class="border-right"><small>Khẩu phần</small><?php echo $so_luong_phuc_vu; ?> NGƯỜI</span>
                    <span><small>Chia sẻ</small><a href="#" class="fs-18" style="color: #4267b2"><i
                                    class="ti-facebook"></i></a> <a href="#" class="fs-18" style="color: #1da1f2"><i
                                    class="ti-twitter-alt"></i></a> <a href="#" class="fs-18" style="color: #bd081c"><i
                                    class="ti-pinterest-alt"></i></a> </span>
                </div>
                <div><a href="#" class="btn hex-btn hex-btn-orange">Lưu lại</a></div>
            </div>
            <div class="tag-container mb-5">
                <a href="#" class="badge badge-pill">Beginner</a>
                <a href="#" class="badge badge-pill">Primary</a>
                <a href="#" class="badge badge-pill">yoga</a>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-12">
                    <div class="panel-white">
                        <div class="panel-author-header">
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 173.20508075688772 200">
                                <defs>
                                    <clipPath id="author-1">
                                        <path d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                    </clipPath>
                                </defs>
                                <image xlink:href="<?php echo $instructor_cover; ?>"
                                       clip-path="url(#author-1)"/>
                            </svg>
                            <h4>
                                <small><?php echo $instructor_title; ?></small>
                                <?php echo $instructor_name; ?>
                            </h4>
                        </div>
                        <p class="px-4 pt-3"><?php echo $instructor_description; ?></p>
                        <p class="text-center"><a href="#" class="btn hex-btn">Xem thêm</a></p>
                    </div>
                </div>
                <div class="col-lg-9 col-sm-12">
                    <h4 class="sub-title">Giới thiệu</h4>
                    <div class="row">
                        <div class="col-lg-6 col-sm-12">
                            <div class="row">
                                <?php
                                $images = get_field('rc_gallery');
                                foreach ($images as $image):
                                    $image_title = $image['title'];
                                    $image_link = $image['link'];

                                    ?>
                                    <div class="col-lg-4 col-sm-6">
                                        <a class="fancythumb"
                                           href="<?php echo $image_link; ?>"
                                           data-fancybox="images"
                                           data-caption="<?php echo $image_title; ?>">
                                            <img src="<?php echo $image_link; ?>" alt=""/>
                                        </a>

                                    </div>
                                <?php endforeach; ?>

                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <?php echo $post_sapo; ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row my-5 pb-5">
                <div class="col-lg-4 col-sm-12">
                    <div class="panel-white">
                        <h4 class="panel-title">Nguyên liệu</h4>
                        <ul class="material-list">
                            <?php
                            $rows = get_field('rc_nguyen_lieu', $post_id);

                            if ($rows) {
                                foreach ($rows as $row) {
                                    $ten_nguyen_lieu = $row['rc_ten_nguyen_lieu'];
                                    $don_vi = $row['rc_don_vi'];

                                    $echo = '<li><span class="material-name">' . $ten_nguyen_lieu . '</span><span>' . $don_vi . '</span></li>';
                                    echo $echo;

                                }

                            }
                            ?>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-8 col-sm-12">
                    <div class="panel-white">
                        <h4 class="panel-title">Cách thực hiện</h4>
                        <ul class="food-step">
                            <?php
                            $rows = get_field('rc_steps', $post_id);
                            $step_count = 1;

                            if ($rows) {
                                foreach ($rows as $row) {
                                    $step_time = $row['rc_time'];
                                    $step_des = $row['rc_description'];
                                    $echo =
                                        '<li>' .
                                        '<a href="#">' .
                                        '<div class="food-step-step"><h6>Bước ' . $step_count . '</h6>' .
                                        '<small>' . secondtoHMS($step_time) . '</small>' .
                                        '</div>' .
                                        '<div class="food-step-ct">' . $step_des . '</div>' .
                                        '</a>' .
                                        '</li>';
                                    $step_count++;

                                    echo $echo;

                                }

                            }
                            ?>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-triangle bg-white" style="margin-top: -60px;">
        <div class="main-padding">
            <div class="container-fluid">
                <h2 class="text-center">Các món liên quan</h2>
                <div class="row">
                    <?php
                    $posts = getPostRelated($post_id, 'recipe_related_items', 'recipe', 4);

                    //$mon_lien_quan = get_field('recipe_related_items');
                    foreach ($posts as $mon):
                        setup_postdata($mon);
                        $level = get_the_terms($post, 'level');
                        $time = get_field("pl_thoiluong");
                        $mon_id = $mon->ID;
                        ?>
                        <div class="col-lg-3 col-sm-6 col-xs-12 py-3">
                            <div class="card">
                                <img class="card-img-top" src="<?php echo get_the_post_thumbnail_url($mon_id); ?>">
                                <span class="post-type"><i class="ti-book"></i></span>
                                <div class="card-body">
                                    <a href="<?php the_permalink(); ?>">
                                        <small class="namecate"><?php echo get_primary_category($mon_id)->name; ?></small>
                                        <h5 class="card-title"><?php the_title($mon_id); ?></h5>
                                        <p class="card-text"><?php echo get_the_excerpt($mon_id); ?></p>
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <?php if ($level): ?>
                                        <span class="badge badge-pill badge-tute"><?php echo $level[0]->name; ?></span>
                                    <?php endif; ?>
                                    <?php if ($time): ?>
                                        <span class="badge badge-pill badge-tute"><?php echo secondtoHMS($time); ?></span>
                                    <?php endif; ?>
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
</main>
<?php get_footer(); ?>


