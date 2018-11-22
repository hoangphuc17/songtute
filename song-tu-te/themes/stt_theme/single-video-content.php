<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/themify-icons.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/video-detail.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/resp.css">
    <title>Sống Tử Tế</title>
  </head>
  <body>
    <header>
      <a href="#"><span class="top-logo"></span> Quay lại</a>
      <a href="#">Báo lỗi <i class="ti-info-alt"></i></a>
    </header>
    <?php
        $watch_id =  get_query_var( 'watch');
        $video_current;
        $playlist = '';
    ?>
    <main class="video-detail">

      <input id="slide-sidebar" type="checkbox" role="button" class="toggle-sb-input"/>
      <label for="slide-sidebar" class="toggle-sb"></label>
      <div class="sidebar">
        <div>
          <div class="sb-content">
            <div class="sb-header"><h1><?php the_title(); ?></h1></div>
            <div class="bg-triangle">
              <h4>Chương trình học</h4>
              <ul class="learn-list">
                <?php 
                  global $post;
                  $post_id = $post->ID;
                  //var_dump($post);
                  $videos = get_field('pl_videos', $post_id);
                  $index = 0;
                  //var_dump($videos);
                  if($videos != false):
                  foreach ($videos as $video):
                    $playlist = $playlist == '' ? $video['pl_video_id'] : $playlist . ', '.$video['pl_video_id'];
                    // $completed = '';
                    $id = $video['pl_video_id'];
                    if($id == $watch_id) $video_current = $video;
                    $time = gmdate("i:s", $video['pl_video_length']);
                    $title = $video['pl_title'];

                ?>
                <li><a href="#" class="js-video-id" data-title="<?php echo $title; ?>"" data-video_id ='<?php echo $index; ?>' ><span class="learn-check"><i class="ti-control-record"></i></span><span class="learn-title"><?php echo $title; ?> <small>-<?php echo $time; ?></small></span></a></li>

                <?php
                    $index++;
                    endforeach;
                    endif;
                ?>
                
              </ul>
            </div>
          </div>
          <div class="play-setting">
            <label class="form-switch">
              <input type="checkbox" id="js-autoplay">
              Tự động chạy
              <i></i>
            </label>
          </div>
        </div>
      </div>
      <div class="main-content">
        <div>
          <div class="content">
            <div class="content-header">
              <?php 
                 $title = $video_current['pl_title'];
              ?>
              <span><h1 class="js-title"><i class="ti-control-play"></i><?php echo $title; ?></h1></span>
              <span><small>Chia sẻ:</small><a href="#" class="fs-18" style="color: #4267b2"><i class="ti-facebook"></i></a> <a href="#" class="fs-18" style="color: #1da1f2"><i class="ti-twitter-alt"></i></a> <a href="#" class="fs-18" style="color: #bd081c"><i class="ti-pinterest-alt"></i></a> </span>
            </div>
            <div class="content-video" >
                  <div id="player">
                    
                  </div>
            </div>

          </div>
          <a href="#" class="btn btn-play-list" id='js-prev'><i class="ti-arrow-left"></i> Bài học trước</a>
          <a href="#" class="btn btn-play-list btn-play-list-right" id='js-next'>Hoàn thành & Tiếp tục <i class="ti-arrow-right"></i></a>
        </div>
      </div>
      <script type="template" id="js-playlist-data" data-video_id = '<?php  echo $video_current["pl_video_id"]; ?>'><?php echo  $playlist; ?></script>
     
    </main>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/bootstrap.bundle.min.js"></script>

    <!-- <script src="https://www.youtube.com/iframe_api/"></script> -->
  <script>
      // 2. This code loads the IFrame Player API code asynchronously.
      var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // 3. This function creates an <iframe> (and YouTube player)
      //    after the API code downloads.
      var player;
      var video_id = $('#js-playlist-data').data('video_id');
      var playlist = $('#js-playlist-data').html();
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '390',
          width: '640',
          videoId: video_id,
    
          playerVars: {
            color: 'white',
            playlist: playlist,
            autoplay: 1,
            modestbranding: 1,
            rel: 0,

          },
          events: {
            'onStateChange': onPlayerStateChange
          }
        });
      }
      $('#js-next').click(function(event) {
            console.log("js-next");
           player.nextVideo();
      });
      $('#js-prev').click(function(event) {
           player.previousVideo();
      });
      $('.js-video-id').click(function(event) {
          var id = $(this).data('video_id');
          var title =  $(this).data('title');
          player.playVideoAt(id);
           player.playVideo();
          $('.js-title').html('<i class="ti-control-play"></i>' + title);
      });

      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.ENDED) {
          console.log("$('#js-autoplay').checked " + $('#js-autoplay')[0].checked);
          if( $('#js-autoplay')[0].checked)
          {
              player.stopVideo();
          }
          else
          {
              player.nextVideo();
          }
        }
      }

     
    </script>
  </body>
</html>