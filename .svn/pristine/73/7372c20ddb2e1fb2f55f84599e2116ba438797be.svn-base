<?php
$field_name = 'sst_cate_train_instructor';
$id_zone = 198;
$subfieldname = 'sst_cate_train_instructor_sub';
$rows = get_field($field_name, $id_zone);

$list_taxonomy = [];
$list_id_taxonomy_restrict = [];
$child_categories = [];
$count = 0;


//b1: danh sách category được chọn trong cms
if ($rows) {
    foreach ($rows as $row) {
        $object_taxonomy = $row[$subfieldname];
        $id_taxonomy = $row[$subfieldname]->term_taxonomy_id;

        if ($id_taxonomy == NULL) {
            $list_taxonomy[$count] = NULL;
        } else {
            $list_taxonomy[$count] = $object_taxonomy;
            array_push($list_id_taxonomy_restrict, $id_taxonomy);
        }
        $count++;
    }

}
$count = 0;
//$list_id_taxonomy_restrict = array_unique($list_id_taxonomy_restrict);

//var_dump(sizeof($list_taxonomy));
//var_dump($list_taxonomy);


//b2: tìm các instructor không được chọn
$terms = get_terms(array(
    'taxonomy' => 'instructor',
    'hide_empty' => false,
    'exclude' => $list_id_taxonomy_restrict
));

//b3: đặt các instructor vào các vị trí không được pick
foreach ($list_taxonomy as $key => $taxonomy) {
    if ($taxonomy == NULL) {
        $list_taxonomy[$key] = $terms[$count];
        $count++;
    }

}


?>
<div class="bg-triangle bg-white">
    <div class="main-padding">
        <div class="container-fluid">
            <h2 class="text-center">Huấn luyện viên</h2>
            <div id="carouselUser" class="carousel slide user-carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="hex-grid">
                            <ul class="grid5">
                                <?php
                                foreach ($list_taxonomy as $instructor):
                                    $cover = get_field('instr_cover', $instructor);
                                    $name = $instructor->name;
                                    $title = get_field('instr_title', $instructor);
                                    ?>
                                    <li>
                                        <a href="#">
                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                 viewbox="0 0 173.20508075688772 200">
                                                <defs>
                                                    <clipPath id="grid6-1">
                                                        <path id="grid4-path-2"
                                                              d="M77.94228634059948 4.999999999999999Q86.60254037844386 0 95.26279441628824 4.999999999999999L164.54482671904333 45Q173.20508075688772 50 173.20508075688772 60L173.20508075688772 140Q173.20508075688772 150 164.54482671904333 155L95.26279441628824 195Q86.60254037844386 200 77.94228634059948 195L8.660254037844387 155Q0 150 0 140L0 60Q0 50 8.660254037844387 45Z"></path>
                                                    </clipPath>
                                                    <linearGradient id="gradient">
                                                        <stop offset="0%" stop-color="#FAD961"/>
                                                        <stop offset="100%" stop-color="#F76B1C"/>
                                                    </linearGradient>
                                                </defs>
                                                <image xlink:href="<?php echo($cover); ?>"
                                                       clip-path="url(#grid6-1)"/>
                                                <use xlink:href="#grid4-path-2" class="cover-color"
                                                     fill="url(#gradient)"/>
                                            </svg>
                                            <h5><?php echo($name); ?>"
                                                <small><?php echo($title); ?>"</small>
                                            </h5>
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
    </div>
</div>