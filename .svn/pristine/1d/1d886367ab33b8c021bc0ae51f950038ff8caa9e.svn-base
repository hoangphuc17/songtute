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

function stt_get_posts_by_posttype($array_posttype, $ppp, $restricts)
{
	return get_posts(['post_type'=> $array_posttype, 'posts_per_page' =>  $ppp, 'post__not_in' => $restricts]);
} 
// Lấy bài từ set zone nếu không đủ auto lấy thêm bài
function stt_auto_zone_posts($field_name, $subfieldname, $id_zone, $array_posttype , $need)
{
	$posts = [];
	$posts_zone = stt_zone_get_items($field_name, $subfieldname, $id_zone);
	$posts = $posts_zone['zone_items'];

	if($posts_zone['total_items'] < $need):
		
		$posts = array_merge($posts, stt_get_posts_by_posttype($array_posttype , $need - $posts_zone['total_items'], array_column($posts, 'ID')));
	endif;

	return $posts ;

}


// Lấy bài từ set zone nếu không đủ auto lấy thêm bài theo thứ tự
function sst_auto_posts_zone_co_thu_tu ($field_name, $subfieldname, $id_zone, $array_posttype , $need)
{
  $rows = get_field($field_name, $id_zone);
  $total_items = 0 ;
  $data['id'] = [];
  $data['zone_items'] =[];
  if($rows)
  {
    foreach($rows as $row)
    {  
      if ($row[$subfieldname] != false) {
          $data['id'] []=  $row[$subfieldname]->ID;
          $data['zone_items']  [] = $row[$subfieldname] ;
          $total_items ++ ;
          
          
      }
      else {
        $data['id'] []= 0;
        $data['zone_items'] [] = 0; 


      }
     
    }
  
  }

  $post = get_posts(['post_type'=> $array_posttype,'post__not_in' => $data["id"] ,'posts_per_page' =>  $need - $total_items ]);
  $y = 0 ;   
  for ($x = 0; $x <= count($data["id"])-1; $x++) {
    if  ($data["id"][$x] == 0 )
      {
        $data['zone_items']  [$x] = $post[$y];
        $y ++ ;
      }
  }
   
  return $data['zone_items'] ;
      
}

function sst_auto_category_zone_co_thu_tu($field_name, $subfieldname, $id_zone )
{
	$rows = get_field($field_name, $id_zone);

	$list_cate = [];
	$list_id_cate_restrict = [];
	$child_categories = [];
	$count = 0;


	//b1: danh sách category được chọn trong cms
	if ($rows) {
	    foreach ($rows as $row) {
	        $object_cate = $row[$subfieldname];
	        $id_cate = $row[$subfieldname]->term_taxonomy_id;

	        if ($id_cate == NULL) {
	            $list_cate[$count] = NULL;
	        } else {
	            $list_cate[$count] = $object_cate;
	            array_push($list_id_cate_restrict, $id_cate);
	        }
	        $count++;
	    }

	}


	//b2: tìm các cate con không được chọn
	$count = 0;
	$parent_categories = get_categories(array(
	    'hide_empty' => false,
	    'parent' => false
	));

	foreach ($parent_categories as $parent_category) {
	    $child_2 = get_categories(
	        array(
	            'hide_empty' => false,
	            'parent' => $parent_category->term_id,
	            'exclude' => $list_id_cate_restrict
	        )
	    );

	    foreach ($child_2 as $child) {
	        array_push($child_categories, $child);
	    }
	}

	//b3: đặt các cate con vào các vị trí không được pick
	foreach ($list_cate as $key => $cate) {
	    if ($cate == NULL) {
	        $list_cate[$key] = $child_categories[$count];
	        $count++;
	    }
	}
	return  $list_cate;

}

function sst_auto_instructor_zone_co_thu_tu ($field_name, $subfieldname, $id_zone)
{

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
return   $list_taxonomy;
}
?>