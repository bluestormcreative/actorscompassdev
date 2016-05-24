<?php
/**
 * AClite functions and definitions.
 *
 * @link https://codex.wordpress.org/Functions_File_Explained
 *
 * @package AClite
 */

if ( ! function_exists( 'aclite_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function aclite_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on AClite, use a find and replace
	 * to change aclite to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'aclite', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary Menu', 'aclite' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See https://developer.wordpress.org/themes/functionality/post-formats/
	 */
	// add_theme_support( 'post-formats', array(
	// 	'aside',
	// 	'image',
	// 	'video',
	// 	'quote',
	// 	'link',
	// ) );

	// Set up the WordPress core custom background feature.
	// add_theme_support( 'custom-background', apply_filters( 'aclite_custom_background_args', array(
	// 	'default-color' => 'ffffff',
	// 	'default-image' => '',
	// ) ) );
}
endif; // aclite_setup
add_action( 'after_setup_theme', 'aclite_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function aclite_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'aclite_content_width', 640 );
}
add_action( 'after_setup_theme', 'aclite_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function aclite_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'aclite' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'aclite_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function aclite_scripts() {
	wp_enqueue_style( 'aclite-styles', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '3.3.5', 'all' );

	wp_enqueue_style( 'aclite-style', get_stylesheet_uri() );

	wp_enqueue_style( 'aclite-palettes', get_template_directory_uri() . '/css/palettes.css', array(), '', 'all' );

	wp_enqueue_style( 'aclite-fonts', get_template_directory_uri() . '/css/fonts.css', array(), '', 'all' );

	wp_enqueue_script( 'aclite-jquery', 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js', array(), '', false );

	wp_enqueue_script( 'aclite-typekit', get_template_directory_uri() . '/js/typekit.js', array(), false );


	wp_enqueue_style( 'font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css', array(), 'all' );

	wp_enqueue_script( 'aclite-fitvids', get_template_directory_uri() . '/js/jquery.fitvids.js', array('jquery'), true );

	wp_enqueue_script( 'aclite-scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery'), false );

	wp_enqueue_script( 'aclite-navigation', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), true );

	wp_enqueue_script( 'aclite-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'aclite_scripts' );

/**
 * Add Respond.js for IE
 */
if( !function_exists('ie_scripts')) {
	function ie_scripts() {
	 	echo '<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->';
	   	echo ' <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->';
	   	echo ' <!--[if lt IE 9]>';
	    echo ' <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>';
	    echo ' <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>';
	   	echo ' <![endif]-->';
   	}
   	add_action('wp_head', 'ie_scripts');
} // end if



/**
 * Implement the Custom Header feature.
 */
// require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';
/**
 * Load Bootstrap Menu.
 */
require get_template_directory() . '/inc/bootstrap-walker.php';



/**
* Load SNOWFLAKE
**/
require get_template_directory() . '/inc/snowflake.php';


/* =============== Filter Reel URL output =========================== */

function ac_regex_videos($url) {
	$video_html = "";
	if (strpos($url, 'yout')) {
		preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $url, $match);
      $id = $match[1];
		  $video_html = '<iframe width="640" height="360" src="http://www.youtube.com/embed/'.$id.'?rel=0&showinfo=0&controls=2" frameborder="0" allowfullscreen></iframe>';
	} elseif (strpos($url, 'vimeo')) {
		preg_match('/https?:\/\/(?:www\.)?vimeo.com\/(?:channels\/(?:\w+\/)?|groups\/([^\/]*)\/videos\/|album\/(\d+)\/video\/|)(\d+)(?:$|\/|\?)/', $url, $match);
    	$id = $match[3];
		  $video_html = '<iframe src="//player.vimeo.com/video/'.$id.'?portrait=0&title=0&byline=0&badge=0" width="500" height="300" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
	}

	return $video_html;

}


/* =============== Custom Login Logo =========================== */

function ac_loginlogo() {
	echo '<style type="text/css">
	h1 a {background-image: url(\'http://actorscompass.com/wp-content/themes/ActorsCompass/img/logo.png\') !important; background-size:200px!important; width:200px!important;}
	</style>';
	}
add_action('login_head', 'ac_loginlogo');
