<?php
if(class_exists('acf'))
{

	function my_taxonomy_query( $args, $field, $post_id ) {
	    
	    // modify args

		$cate__not_in = [];
	    if($post_id == 153):
		    $categories = get_categories(["hide_empty" => 0, 'parent' => 0]);
		    $cate__not_in = array_column( $categories, 'cat_ID');
		  
	    endif;
	    $args["exclude"] = $cate__not_in;
	   
	    return $args;
	    
	}

	add_filter('acf/fields/taxonomy/query/name=stt_home_cate_sub', 'my_taxonomy_query', 10, 3);


	function my_acf_validate_value( $valid, $value, $field, $input ){
		if( !$valid ) {
			
			return $valid;
		}
		$key = $field['sub_fields'][0]['key'];
		$arr = [];
		foreach ($value as $val) {
			if($val[$key])
			{
				$arr []= $val[$key];
			}
		}

		if(count($arr) != count(array_unique($arr)))
		{
			$valid = json_encode().'Anh (Chị) vui lòng chọn những bài khác nhau!';
		}

		return $valid;
		
	}
	add_filter('acf/validate_value/name=stt_home_top', 'my_acf_validate_value', 10, 4);
	add_filter('acf/validate_value/name=stt_home_cate', 'my_acf_validate_value', 10, 4);
	add_filter('acf/validate_value/name=stt_home_lastest', 'my_acf_validate_value', 10, 4);
	add_filter('acf/validate_value/name=stt_home_instructor', 'my_acf_validate_value', 10, 4);


}







?>