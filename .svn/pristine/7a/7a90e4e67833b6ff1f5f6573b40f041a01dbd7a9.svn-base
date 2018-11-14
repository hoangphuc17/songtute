<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package _s
 */

get_header();
?>

<!-- Home Top 3 bài -->
<?php

	$home_top_3_bai = stt_auto_zone_posts('stt_home_top' ,'stt_home_top_sub', stt_home_top, ['playlist', 'recipe', 'post'],  3);
	//var_dump($home_top_3_bai);

?>

<!-- END Home Top 3 bài -->


<!--  Sống tử tế có gì hay  -->


<?php 
	
	$home_top_3_bai = stt_auto_zone_posts('stt_home_cate' ,'stt_home_cate_sub', stt_home_cate, ['playlist', 'recipe', 'post'],  3);

?>

<!-- End Sống tử tế có gì hay  -->



<?php
get_sidebar();
get_footer();
