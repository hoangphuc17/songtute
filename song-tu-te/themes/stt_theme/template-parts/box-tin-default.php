<?php if ( $posts ) {
    foreach ( $posts as $post ) :
        setup_postdata( $post );
        $level = get_the_terms($post, 'level');
        $post_type = get_post_type( $post->id );
        $thoiluong = get_field('pl_thoi_luong');
        if($thoiluong != false)
        {
            $thoiluong = secondtoHMS($thoiluong);
        }
        else
        {
             $thoiluong ='';
        }
    
        ?>


             <div class="col-lg-3 col-sm-6 col-xs-12 py-3">
                        <div class="card">
                            <img class="card-img-top" src="<?php echo get_the_post_thumbnail_url(); ?>">
                            <span class="post-type"><i class="<?php if ($post_type == "post") {echo 'ti-book';} else {echo 'ti-blackboard'; }  ?>"></i></span>
                            <div class="card-body">
                                <a href="<?php the_permalink(); ?>">
                                    <small class="namecate"><?php echo get_primary_category($post->id)->name; ?></small>
                                    <h5 class="card-title"><?php the_title(); ?></h5>
                                    <p class="card-text"><?php the_excerpt(); ?></p>
                                </a>
                            </div>
                            <div class="card-footer">
                                <?php if ($level): ?>
                                    <span class="badge badge-pill badge-tute"><?php echo $level[0]->name; ?></span>
                                <?php endif; ?>
                              
                                    <span class="badge badge-pill badge-tute"><?php echo $thoiluong; ?></span>
                              
                            </div>
                        </div>
              </div>
    <?php
    endforeach; 
    wp_reset_postdata();
}


?>