<?php get_header(); ?>
<?php

$post_id = $post->ID;

$categories = get_the_category($post_id);

//$level = get_the_terms($post, 'level')[0]->name;

$instructor = get_field('instructor_field', $post_id);

$instructor_name = $instructor->name;

$post_date = get_the_date('Y/m/d');

$sapo = get_the_excerpt();


?>
<main>
    <div class="bg-detail-header">
        <img src="<?php echo get_template_directory_uri(); ?>/img/photo01.jpeg">
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
            <div class="header-main header-main-article"
                 style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);">

            </div>
            <div class="mt-3 after-header-main">
                <div class="header-tag">
                    <span class="border-right"><small>Tác giả</small><?php echo $instructor_name; ?></span>
                    <span class="border-right"><small>Ngày đăng</small><?php echo $post_date; ?></span>
                </div>
                <div class="header-tag">
                    <span><small>Chia sẻ</small><a href="#" class="fs-18" style="color: #4267b2"><i
                                    class="ti-facebook"></i></a> <a href="#" class="fs-18" style="color: #1da1f2"><i
                                    class="ti-twitter-alt"></i></a> <a href="#" class="fs-18" style="color: #bd081c"><i
                                    class="ti-pinterest-alt"></i></a> </span>
                </div>
            </div>
            <div class="tag-container my-3">
                <a href="#" class="badge badge-pill">Beginner</a>
                <a href="#" class="badge badge-pill">Primary</a>
                <a href="#" class="badge badge-pill">yoga</a>
            </div>
            <div class="article-content">
                <h4><?php echo $sapo; ?></h4>
                <ul class="hex-list">
                    <?php
                    $related_posts = get_field('post_related_items', $post_id);
                    foreach ($related_posts as $pos) {
                        $echo = '<li>' .
                            '<a href="' . get_permalink($pos->ID) . '">' . $pos->post_title . '</a>' .
                            '</li>';


                        echo $echo;
                    }
                    ?>

                </ul>
                <?php echo get_post_field('post_content', $post_id); ?>
            </div>

        </div>
    </div>
    <div class="bg-triangle bg-white" style="margin-top: -60px;">
        <div class="main-padding">
            <div class="container-fluid">
                <h2 class="text-center">CÁC TIN LIÊN QUAN</h2>
                <div class="row">

                    <?php

                    $listPostRelated = getPostRelated($post_id, 'post_related_items', 'playlist', 4);

                    foreach ($listPostRelated as $post):
                        setup_postdata($post);
                        $level = get_the_terms($post, 'level');
                        $time = get_field("pl_thoiluong");
                        ?>
                        <div class="col-lg-3 col-sm-6 col-xs-12 py-3">
                            <div class="card">
                                <img class="card-img-top" src="<?php echo get_the_post_thumbnail_url(); ?>">
                                <span class="post-type"><i class="ti-book"></i></span>
                                <div class="card-body">
                                    <a href="<?php the_permalink(); ?>">
                                        <small class="namecate"><?php echo get_primary_category($post_id)->name; ?></small>
                                        <h5 class="card-title"><?php the_title(); ?></h5>
                                        <p class="card-text"><?php echo get_the_excerpt(); ?></p>
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
