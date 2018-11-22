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
// Lấy các giá trị sort
$sortby = isset($_REQUEST['sortby']) ? $_REQUEST['sortby'] : 'date' ;
$level = isset($_REQUEST['level']) ? $_REQUEST['level'] : 'all' ;
  
?>
<?php
//lấy thông tin cat con
$cat_id = get_query_var('cat');
$cat_object = get_category($cat_id);
$cat_name = get_cat_name($cat_id);
$cat_link = get_category_link($cat_id);
//lấy thông tin cat cha
$parent_cat_id = $cat_object->parent;
$parent_cat_name = get_cat_name($parent_cat_id);
$parent_cat_link = get_category_link($parent_cat_id);

//lấy posts theo giá trị sort
if ($level == 'all'){
$posts = get_posts([
    'post_type' => ['playlist', 'recipe', 'post'],
    'category' => $cat_id,
    'posts_per_page' => 12,
    'orderby' => $sortby,
    
]);
}
else{
 $posts = get_posts([
    'post_type' => ['playlist', 'recipe', 'post'],
    'cat' => $cat_id,
    'posts_per_page' => 12,
    'orderby' => $sortby,
    'tax_query' => array(
        array (
            'taxonomy' => 'level',
            'field' => 'slug',
            'terms' => $level,
        )
    ),
]); 
}

$cat_8_bai =  array_slice($posts, 0, 8);
$cat_4_bai =  array_slice($posts, 8);
?>
<script type="text/javascript">
  function doReload(sortby){
    document.location = <?php echo '"'.$cat_link.'"'; ?> +'/?sortby=' +sortby +'&level=' + <?php echo '"'.$level.'"'; ?>;
  }
   function doReloadLevel(level){
    document.location = <?php echo '"'.$cat_link.'"'; ?> +'/?sortby=' +<?php echo '"'.$sortby.'"'; ?> +'&level=' + level;
  }

</script>
<!-- END Cate Top 3 bài -->

 <div id="search" class="fade">
      <a href="#" class="close-btn" id="close-search">
          <i class="ti-close"></i>
      </a>
      <input placeholder="nhập từ khóa tìm kiếm..." id="searchbox" type="search"/> <button type="submit"><i class="ti-search"></i></button>
    </div>
    <main>
      <div class="bg-header">
        <div class="bg-header-yoga">
          <h2 class="main-title"><?php echo $cat_name; ?></h2>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/"><i class="ti-home"></i> Trang chủ</a></li>
              <li class="breadcrumb-item"><a href="<?php echo $parent_cat_link; ?>"><?php echo $parent_cat_name ?></a></li>
              <li class="breadcrumb-item active" aria-current="page"><?php echo $cat_name; ?></li>
            </ol>
          </nav>
        </div>
      </div>
      <div class="bg-triangle bgadd-white after-header">
        <div class="main-padding">
          <div class="container-fluid">
            <div class="filter-row">
              <div class="filter-ele" style="flex-grow: 1">
                <div>
                  <label>Cấp độ:</label>
                  <select class="form-control" onChange="doReloadLevel(this.value)">
                    <option value="all" <?php if ($level == "all"){echo 'selected="selected"';} ?>>Tất cả</option>
                    <option value="beginner" <?php if ($level == "beginner"){echo 'selected="selected"';} ?>>beginner</option>
                    <option value="intermediate"<?php if ($level == "intermediate"){echo 'selected="selected"';} ?>>Intermediate</option>
                    <option value="advanced"<?php if ($level == "advanced"){echo 'selected="selected"';} ?>>Advanced</option>
                  </select>
                </div>
                <div>
                  <label>Loại hình:</label>
                  <select class="form-control">
                    <option>Tất cả</option>
                    <option><a href="<?php echo $cat_link; ?>?c=<?php echo $numb ?>&d=<?php echo $display; ?>">Lớp học</a></option>
                    <option>Workshop</option>
                  </select>
                </div>
              </div>
              <div class="filter-ele">
                <div>
                  <label>Sắp xếp theo:</label>
                  <select class="form-control" name="sap-xep-theo"  onChange="doReload(this.value);">
                    <option value="date" <?php if ($sortby == "date"){echo 'selected="selected"';} ?>>Mới nhất</option>
                    <option value="popular" <?php if ($sortby == "popular"){echo 'selected="selected"';} ?>>Phổ biến nhất</option>
                    <option value="name" <?php if ($sortby == "name"){echo 'selected="selected"';} ?>>A-Z</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="row">           
              <?php
              $posts = $cat_8_bai ;
              include( 'template-parts/box-tin-default.php' );
              ?>
              <div class="col-12 py-3"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/ads-sample.png" class="img-fluid"></a></div>
              <?php
              $posts = $cat_4_bai ;
              include( 'template-parts/box-tin-default.php' );
              ?>
              
              <div class="col-12 py-5 text-center">
                <a href="#" class="btn hex-btn">Xem tiếp</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

<?php
get_footer();
