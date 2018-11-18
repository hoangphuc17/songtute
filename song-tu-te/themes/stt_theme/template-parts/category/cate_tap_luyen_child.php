<?php

$child_id = $child_category->term_id;
$child_name = get_cat_name($child_id);
$child_link = get_category_link($child_id);

$posts = get_posts([
    'cat' => $child_id,
    'post_per_page' => 4
]);


if ($i == 0) {
    $class_for_child = 'bgadd-white after-featured';
} else {
    $class_for_child = 'bg-gray';
}
$i++;

?>


<div class="bg-triangle <?php echo($class_for_child); ?>">
    <div class="main-padding">
        <div class="container-fluid">
            <div class="side-title">
                <h2><?php echo($child_name); ?></h2>
                <div><a href="<?php echo($child_link); ?>"><i class="ti-arrow-circle-right"></i> Xem thêm</a></div>
            </div>
            <div class="py-5 scroll-sm-x">
                <div class="card-deck flex-row flex-nowrap" style="min-width: 1024px">

                    <?php
                    foreach ($posts as $post):

                        $level = get_the_terms($post, 'level')[0];
                        $thoiluong = get_field('pl_thoi_luong');


                        ?>
                        <div class="card">
                            <img class="card-img-top"
                                 src="<?php echo get_the_post_thumbnail_url(); ?>">
                            <div class="card-body">
                                <a href="<?php echo the_permalink(); ?>">
                                    <small class="namecate"><?php echo($child_name); ?></small>
                                    <h5 class="card-title"><?php echo the_title(); ?></h5>
                                    <p class="card-text"><?php echo the_excerpt(); ?></p>
                                </a>
                            </div>
                            <div class="card-footer">
                                <span class="badge badge-pill badge-tute"><?php echo($level); ?></span>
                                <span class="badge badge-pill badge-tute"><?php echo($thoiluong); ?></span>
                            </div>
                        </div>
                    <?php
                    endforeach;
                    ?>

                </div>
            </div>
            <div class="pt-4 pb-120"><a href="#"><img
                            src="<?php echo get_template_directory_uri(); ?>/img/ads-sample.png"
                            class="img-fluid"></a></div>
        </div>
    </div>
</div>