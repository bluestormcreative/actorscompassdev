<?php
/*
Name: AC Dashboard
Description: Build our custom AC dashboard
Author: Actors Compass
Version: 1.0.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) { exit; }


/* =============== CREATE & ADD CUSTOM AC DASHBOARD =========================== */

class AC_Dashboard_Wizard {


    /* =============== Add our custom scripts / styles =========================== */
    // function killadmin_style() {
    //     wp_enqueue_style('killadmin-bootstrap', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css' );
    //     wp_enqueue_style('killadmin', plugins_url('wp-admin.css', __FILE__));
    //     wp_enqueue_script('killadmin-blockui', plugins_url('js/jquery.blockui.js', __FILE__), array('jquery'));
    //     wp_enqueue_script('killadmin-scripts', plugins_url('js/scripts.js', __FILE__), array('jquery', 'killadmin-blockui'));
    // }
    // add_action('admin_enqueue_scripts', 'killadmin_style');
    //add_action('login_enqueue_scripts', 'killadmin_style');

    /* =============== Add our custom admin page =========================== */

    public function __construct() {
        add_action( 'admin_menu', array( $this, 'ac_admin_menus' ) );
        add_action( 'admin_init', array( $this, 'ac_wizard' ) );
        add_filter( 'load-index.php', array( $this, 'redirect_admin_pages' ) );
    }

    public function ac_admin_menus() {
      add_dashboard_page( 'ActorsCompass Dashboard', 'AC Dashboard', 'read', 'ac-dashboard', '' );
    }

    public function ac_wizard() {
		if ( empty( $_GET['page'] ) || 'ac-dashboard' !== $_GET['page'] ) {
			return;
		}

    wp_enqueue_style('acdashpackage-bootstrap', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css' );
    wp_enqueue_style('acdashpackage', plugins_url('wp-admin.css', __FILE__));
    wp_enqueue_script('acdashpackage-typekit', plugins_url('js/typekit.js', __FILE__), array(), false );
    wp_enqueue_style( 'font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css', array(), 'all' );
    wp_enqueue_script('acdashpackage-blockui', plugins_url('js/jquery.blockui.js', __FILE__), array('jquery'));
    wp_enqueue_script('acdashpackage-scripts', plugins_url('js/scripts.js', __FILE__), array('jquery', 'killadmin-blockui'));


		ob_start();
		$this->setup_ac_dashboard();
		exit;

	}


  public function setup_ac_dashboard() {

      ?>
      <!DOCTYPE html>
      <html xmlns="http://www.w3.org/1999/xhtml" <?php language_attributes(); ?>>
      <head>
        <meta name="viewport" content="width=device-width" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><?php _e( 'ActorsCompass Dashboard', 'actorscompass' ); ?></title>
        <?php do_action( 'admin_print_styles' ); ?>
        <?php do_action( 'admin_head' ); ?>
        <?php global $redux_builder_ac ; ?>
        <script src="https://use.typekit.net/agj8iho.js"></script>
        <script>try{Typekit.load({ async: true });}catch(e){}</script>
      </head>
      <body class="ac-setup">

        <header id="masthead" class="site-header" role="banner">
          <nav role="navigation">
            <div class="navbar navbar-static-top navbar-default">
              <div class="container-fluid">
                <div class="navbar-header">

                  <div class="col-lg-6 col-md-6  col-sm-6 col-xs-6 brand">
                    <i class="icon-ActorsCompass fa-2x"></i>
                  </div>

                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 logout">
                    <a href="<?php echo wp_logout_url( home_url()); ?>" class="btn">
                        <i class="fa fa-sign-out fa-2x"></i> <p>Log Out</p>
                    </a>
                  </div>


                </div>

              </div>

            </div>
          </nav><!-- #site-navigation -->
        </header><!-- #masthead -->



        <div class="wrap ac-dash">

            <div class="container">

              <div class="headshot" style="background-image:url('<?php echo $redux_builder_ac['headshot-options']['url']; ?>');">
              </div>
              <h2 class="dash-greeting">
                <?php
                echo 'Hi ';
                if ($redux_builder_ac['name-options'] != '') {
                  echo $redux_builder_ac['name-options'];
                } else {
                  echo 'there';
                }
                echo '. Let\'s do this.';
                ?>
                </h2>

              <div class="row row-eq-height no-gutter">
                <a href="customize.php" class="col-sm-6 col-xs-12 button-block">
                  <div class="col-xs-1 no-gutter">
                    <i class="fa fa-wrench fa-2x"></i>
                  </div>
                  <div class="col-xs-10">
                    <h3>Customize Your Site</h3>
                    <p>Add/edit your info, upload your resume, and change colors and fonts.</p>
                  </div>
                  <div class="col-xs-1 no-gutter arrow">
                    <i class="fa fa-angle-right fa-3x"></i>
                  </div>
                </a>
                <a href="/" class="col-sm-6 col-xs-12 button-block">
                  <div class="col-xs-1 no-gutter">
                    <i class="fa fa-eye fa-2x"></i>
                  </div>
                  <div class="col-xs-10">
                    <h3>View Your Site</h3>
                    <p>See what your website looks like in the real world right now.</p>
                  </div>
                  <div class="col-xs-1 no-gutter arrow">
                    <i class="fa fa-angle-right fa-3x"></i>
                  </div>
                </a>
              </div>
              <div class="row row-eq-height no-gutter">
                <a href="profile.php" target="blank" class="col-sm-6 col-xs-12 button-block">
                  <div class="col-xs-1 no-gutter">
                    <i class="fa fa-user fa-2x"></i>
                  </div>
                  <div class="col-xs-10">
                    <h3>Manage Your Account</h3>
                    <p>Change your email or password.</p>
                  </div>
                  <div class="col-xs-1 no-gutter arrow">
                    <i class="fa fa-angle-right fa-3x"></i>
                  </div>
                </a>
                <a href="http://actorscompass.com/contact" target="blank" class="col-sm-6 col-xs-12 button-block">
                  <div class="col-xs-1 no-gutter">
                    <i class="fa fa-life-ring fa-2x"></i>
                  </div>
                  <div class="col-xs-10">
                    <h3>Help</h3>
                    <p>Got questions?</p>
                  </div>
                  <div class="col-xs-1 no-gutter arrow">
                    <i class="fa fa-angle-right fa-3x"></i>
                  </div>
                </a>
              </div>
              <div class="row row-eq-height no-gutter">
                <div class="col-sm-6 col-xs-12 button-block tips">
                  <div class="col-xs-1 no-gutter">
                    <i class="fa fa-thumbs-up fa-2x"></i>
                  </div>
                  <div class="col-xs-11">
                    <h3>Pro Tips</h3>

                    <?php
                      global $switched;
                      switch_to_blog(1); //switched to blog id 1

                      // Get latest Post
                      $latest_posts = get_posts('category=8&numberposts=5&orderby=post_date&order=DESC');
                      $cnt =0;
                    ?>
                    <ul>
                    <?php foreach($latest_posts as $post) : setup_postdata($post);?>
                       <a href="<?php echo get_page_link($post->ID); ?>" title="<?php echo $post->post_title; ?>">

                        <li class="tint" style="background-image:url('<?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'index-post-thumbnail-large' ); echo $image[0]; ?>');">
                        </li>
                        <h4><?php echo $post->post_title; ?></h4>
                      </a>
                    <?php endforeach ; ?>
                    <?php restore_current_blog(); //switched back to main site ?>


                  </div>
                </div>
                <div class="col-sm-6 col-xs-12 button-block updates">
                  <div class="col-xs-1 no-gutter">
                    <i class="fa fa-newspaper-o fa-2x"></i>
                  </div>
                  <div class="col-xs-11">
                    <h3>Product Updates</h3>

                    <?php
                      global $switched;
                      switch_to_blog(1); //switched to blog id 1

                      // Get latest Post
                      $latest_posts = get_posts('category=13&numberposts=3&orderby=post_date&order=DESC');
                      $cnt =0;
                    ?>
                    <ul>
                    <?php foreach($latest_posts as $post) : setup_postdata($post);?>
                        <li>
                            <h4><a href="<?php echo get_page_link($post->ID); ?>" title="<?php echo $post->post_title; ?>"><?php echo mysql2date('m/j/Y', $post->post_date ) . ': &nbsp;' . $post->post_title; ?></a></h4>
                            <p><?php the_content(); ?></p>
                        </li>
                    <?php endforeach ; ?>
                    <?php restore_current_blog(); //switched back to main site ?>

                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid full-width footer">
              <a href="http://actorscompass.com" target="blank"" target="blank" class="btn"><i class="icon-ActorsCompass fa-2x"></i> <p>About Actors Compass</p></a>
            </div>
        </div>
      </body>
      </html>
       <?php
     }


     public function redirect_admin_pages(){

        wp_safe_redirect(admin_url('admin.php?page=ac-dashboard'));
        exit;

       }
}

add_action('after_setup_theme', 'switch_dashboards');
function switch_dashboards(){
  if (!is_super_admin()) {
    new AC_Dashboard_Wizard();
  }
}

/* =============== Add script to profile.php page =========================== */

function ac_profile_enqueue($hook) {
    if ( 'profile.php' != $hook ) {
        return;
    }

    wp_enqueue_script( 'ac_profile_scripts', plugin_dir_url( __FILE__ ) . '/js/profile-scripts.js' );
}
add_action( 'admin_enqueue_scripts', 'ac_profile_enqueue' );


/* =============== Remove specific Customizer sections we don't need, add our resume section =========================== */

function ac_remove_sections(){
    global $wp_customize;

    $wp_customize->remove_section('title_tagline');
    $wp_customize->remove_section('header_image');
    $wp_customize->remove_section('colors');
    $wp_customize->remove_section('background_image');
    $wp_customize->remove_panel('nav_menus');
    $wp_customize->remove_panel('widgets');
    $wp_customize->remove_section('static_front_page');
    $wp_customize->remove_section('themes');
    $wp_customize->remove_section('customize-info');

    //add section for our link to the redux resume panel
    $wp_customize->add_section('credits_skills', array(
      'title'      => __('Credits &amp; Skills','killadmin'),
      'priority'   => 5
    ));

    $wp_customize->add_setting('ac_resume_link_section');

    $wp_customize->add_control('ac_resume_link_section', array(
      'section'   => 'credits_skills',
      'description'      => __('Go to the Resume Panel to add or edit your professional credits.<br><a class="button" href="/wp-admin/admin.php?page=redux_builder_ac_res_options">Go Now</a>','killadmin'),
      'type' => 'hidden'
    ));


}

// Priority 999 so that we remove options only once they've been added
add_action( 'customize_register', 'ac_remove_sections', 999 );




// add css file to remove "You are customizing: THEME NAME" section
function ac_customizer_css() {
      wp_enqueue_style( 'ac-customizer-css', plugins_url('customizer.css', __FILE__ ));
}

add_action( 'customize_controls_enqueue_scripts', 'ac_customizer_css' );
