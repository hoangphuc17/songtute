<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package The_new_Idesign
 */

get_header(); ?>

<!-- Cate Top 3 bài -->
<?php

$cate_top_5_bai = stt_auto_zone_posts('stt_cate_train_top' ,'stt_cate_train_top_sub', stt_cate_train_top, ['playlist','post'],  5);
	
$cat_id = get_query_var('cat');
$cat_object = get_category($cat_id);
$cat_name = get_cat_name($cat_id);
$category_link = get_category_link($cat_id);

$child_categories = get_categories(array('hide_empty' => false, 'parent' => $cat_id));
?>

<!-- END Cate Top 3 bài -->

  <div id="search" class="fade">
      <a href="#" class="close-btn" id="close-search">
          <i class="ti-close"></i>
      </a>
      <input placeholder="nhập từ khóa tìm kiếm..." id="searchbox" type="search"/> <button type="submit"><i class="ti-search"></i></button>
    </div>
<main>
	<div class="py-60" style="background: #f7f7f7 url(<?php echo get_template_directory_uri(); ?>/img/hex-bg.png) top center no-repeat; background-size: cover;">
		<div class="main-padding">
			<h2 class="main-title"><?php echo $cat_name; ?><small><?php echo $cat_object->description; ?></small></h2>
			<div class="cd-svg-clipped-slider" data-selected="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z" data-lateral="M367,5.54700538 L673.410162,182.452995 C685.786205,189.598306 693.410162,202.803387 693.410162,217.094011 L693.410162,570.905989 C693.410162,585.196613 685.786205,598.401694 673.410162,605.547005 L367,782.452995 C354.623957,789.598306 339.376043,789.598306 327,782.452995 L20.5898385,605.547005 C8.21379542,598.401694 0.589838486,585.196613 0.589838486,570.905989 L0.589838486,217.094011 C0.589838486,202.803387 8.21379542,189.598306 20.5898385,182.452995 L327,5.54700538 C339.376043,-1.59830641 354.623957,-1.59830641 367,5.54700538 Z">
				<div class="gallery-wrapper">
					<ul class="gallery">
												
						<?php  $i = 0; foreach($cate_top_5_bai as $post) : setup_postdata($post); 
							
						switch ($i) {
						case 0:
						$i++; ?>
						<li class="left">
							<?php include( 'template-parts/category/box-video.php' ); ?>
							<?php break;
							case 1:
							$i++; ?>
							<li class="selected">
								<?php include( 'template-parts/category/box-video.php' ); ?>
								<?php break;
								case 2:
								$i++; ?>
								<li class="right">
									<?php include( 'template-parts/category/box-video.php' ); ?>
									<?php break;
									default: ?>
									<li>
										<?php
											$i++;
										include( 'template-parts/category/box-video.php' );
										
										}
										?>
										<?php endforeach; wp_reset_postdata(); ?>
										
										
									</ul>
									
									<nav>
										<ul class="navigation">
											<li><a href="#0" class="prev">Prev</a></li>
											<li><a href="#0" class="next">Next</a></li>
										</ul>
									</nav>
									</div> <!-- .gallery-wrapper -->
									<ul class="caption">
										<?php  $j = 0; foreach($cate_top_5_bai as $post) : setup_postdata($post);
											$title = get_the_title();
											$pid = get_the_ID();
													$cate = get_primary_category($pid);
											$instructor = get_field( 'instructor_field', $pid );
											//var_dump($cate);
										?>
										
										
										<?php
										switch ($j) {
										case 0:
										$j++; ?>
										<li class="left"><?php echo $title; ?><small><?php echo $cate->name; ?> <span class="mx-2">|</span> <i class="ti-user"></i> <?php echo $instructor->name ?></small></li>
										<?php break;
										case 1:
										$j++; ?>
										<li class="selected"><?php echo $title; ?><small><?php echo $cate->name; ?> <span class="mx-2">|</span> <i class="ti-user"></i> <?php echo $instructor->name ?></small></li>
										<?php break;
										case 2:
										$j++; ?>
										<li class="right"><?php echo $title; ?><small><?php echo $cate->name; ?> <span class="mx-2">|</span> <i class="ti-user"></i><?php echo $instructor->name ?></small></li>
										<?php break;
										default: ?>
										<?php $i++; ?>
										<li><?php echo $title; ?><small><?php echo $cate->name; ?> <span class="mx-2">|</span> <i class="ti-user"></i><?php echo $instructor->name ?></small></li>
										
										
										
										<?php  } endforeach; wp_reset_postdata(); ?>
										
										
										
										
										
										
									</ul>
								</div>
							</div>
						</div>


       <?php
		$i = 0;
		$class_for_child = '';
		foreach ($child_categories as $child_category) {

		$child_id = $child_category->term_id;
		$child_name = get_cat_name($child_id);
		$child_link = get_category_link($child_id);
		$posts = get_posts([
		'cat' => $child_id,
		'posts_per_page' => 4,
		'post_type' => ['playlist', 'recipe', 'post'],
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
		          
		            <div class="row">

		              <?php
		              
		              include( 'template-parts/box-tin-default.php' );
		              ?>
		            
		            </div>

		          
		            <div class="pt-4 pb-120"><a href="#"><img
		                            src="<?php echo get_template_directory_uri(); ?>/img/ads-sample.png"
		                            class="img-fluid"></a></div>
		        </div>
		    </div>
		</div>
		   

        <?php 
         }
       
        include('template-parts/category/cate_tap_luyen_instructor.php'); ?>
    </main>


<?php
get_footer();
