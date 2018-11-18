<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package The_new_Idesign
 */

?>

    <footer>
      <div class="row">
        
        <div class="col-lg-8 col-sm-12 order-lg-12">
          <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-6">
              <h3>Tập luyện</h3>
              <ul class="nav flex-column">
                <li class="nav-item">
                  <a class="nav-link" href="#">Fitness</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Yoga</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-6">
              <h3>Ăn uống</h3>
              <ul class="nav flex-column">
                <li class="nav-item">
                  <a class="nav-link" href="#">Món chính</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Khai vị</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Tráng miệng</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-6">
              <h3>Khám phá</h3>
              <ul class="nav flex-column">
                <li class="nav-item">
                  <a class="nav-link" href="#">Ý tưởng mới</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Địa điểm mới</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Sự kiện mới</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-6">
              <h3>Cộng đồng tử tế</h3>
              <ul class="nav flex-column">
                <li class="nav-item">
                  <a class="nav-link hexlink-btm" href="#"><i class="ti-facebook"></i> Facebook</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link hexlink-btm" href="#"><i class="ti-instagram"></i> Instagram</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link hexlink-btm" href="#"><i class="ti-youtube"></i> Youtube</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-12 order-lg-1">
          <div class="hex-contain">
            <a href="#" class="footer-logo"></a>
            <p><a href="#">Email: suppport@songtute.vn</a></p>
            <p>Địa chỉ: 111A Lý Chính Thắng, Phường 6, Quận 3, TP. Hồ Chí Minh</p>
            <p>© 2018 Bản quyền bởi songtute.vn</p>
          </div>
        </div>
      </div>
    </footer>
    <a href="#0" class="cd-top js-cd-top"><i class="ti-angle-up"></i></a>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/snap.svg-min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/main.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/btt.js"></script>
    <script type="text/javascript">
      $(window).scroll(function() {    
        var scroll = $(window).scrollTop();

         //>=, not <=
        if (scroll >= 5) {
            //clearHeader, not clearheader - caps H
            $(".navbar-tute").removeClass("navbar-tute-index");
        }
        else {
          $(".navbar-tute").addClass("navbar-tute-index");
        }
    });
    </script>
	
	<?php wp_footer(); ?>
  </body>
</html>