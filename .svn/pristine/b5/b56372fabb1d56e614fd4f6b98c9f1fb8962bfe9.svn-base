<?php

// Cần biết: tổng bài được pick, post 
// 2 loại: 1 loại ra array liên tục, 1 loại array [1]



// output array của những items được pick và total bài item được pick

function stt_zone_get_items($field_name, $subfieldname, $id_zone)
{
	$data['zone_items'] = [];
	$data['total_items'] = 0;
	if(class_exists('acf')){
		$array_items = [];
		while( have_rows($field_name , $id_zone) ):
		the_row();
		$sub_item = get_sub_field($subfieldname);
		if($sub_item != false)
		{
			$array_items []= $sub_item;
		}
		endwhile;
		$data['zone_items'] = $array_items;
		$data['total_items'] = count($array_items);
		return $data;
	}
	else return $data;
	
}
// output array item của những  item được pick, những vị trí item không được pick  là 0
function stt_zone_fixed_items($field_name,  $subfieldname,  $id_zone)
{
	$data['zone_items'] = [];
	$data['total_items'] = 0;
	if(class_exists('acf')){
		$rows = get_field($field_name, $id_zone);
		if($rows)
		{
			foreach($rows as $row)
			{
				if($row[$subfieldname] == false)
				{
					$data['zone_items'] []= 0; 
				}
				else
				{
					$data['zone_items'] []= $row[$subfieldname]; 
					$data['total_items'] ++;
				}
			}
		
		}
		
	}
	else return $data;
	
}

// input post_type, post_per_page, output: array_post

function stt_get_posts_by_posttype($array_posttype, $ppp)
{
	return get_posts(['post_type'=> $array_posttype, 'posts_per_page' =>  $ppp]);
} 
// Lấy bài từ set zone nếu không đủ auto lấy thêm bài
function stt_auto_zone_posts($field_name, $subfieldname, $id_zone, $array_posttype , $need)
{
	$posts = [];
	$posts_zone = stt_zone_get_items($field_name, $subfieldname, $id_zone);
	$posts = $posts_zone['zone_items'];

	if($posts_zone['total_items'] < $need):
		
		$posts = array_merge($posts, stt_get_posts_by_posttype($array_posttype , $need - $posts_zone['total_items']));
		

	endif;

	return $posts ;

}






?>