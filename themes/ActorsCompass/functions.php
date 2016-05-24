<?php
/**
 * Strapped functions and definitions.
 *
 * @link https://codex.wordpress.org/Functions_File_Explained
 *
 * @package Strapped
 */

if ( ! function_exists( 'strapped_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function strapped_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on Strapped, use a find and replace
	 * to change 'strapped' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'strapped', get_template_directory() . '/languages' );

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

	add_image_size( 'blog-featured', 750, 250, true );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary Menu', 'strapped' ),
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
	add_theme_support( 'custom-background', apply_filters( 'strapped_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif; // strapped_setup
add_action( 'after_setup_theme', 'strapped_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function strapped_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'strapped_content_width', 640 );
}
add_action( 'after_setup_theme', 'strapped_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function strapped_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'strapped' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
}
add_action( 'widgets_init', 'strapped_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function strapped_scripts() {
	wp_enqueue_style( 'Strapped-styles', get_template_directory_uri() . '/css/bootstrap.min.css', array(), 'all' );

	wp_enqueue_style( 'Strapped-style', get_stylesheet_uri() .'?v=<?=time();' );

	wp_enqueue_script( 'Strapped-jquery', 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js', array(), false );

	wp_enqueue_script( 'Strapped-typekit', get_template_directory_uri() . '/js/typekit.js', array(), false );

	wp_enqueue_style( 'font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css', array(), 'all' );

	wp_enqueue_script( 'Strapped-scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery'), false );

	wp_enqueue_script( 'Strapped-navigation', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), true );

	wp_enqueue_script( 'Strapped-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'strapped_scripts' );

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
require get_template_directory() . '/inc/custom-header.php';

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




/**
 * Modify excerpts to show 'Read More', default to 100 words and retain paragraph tags
 */
function modified_trim_excerpt($text) {
	global $post;
	if ( '' == $text ) {
			$text = get_the_content('');
			$text = apply_filters('the_content', $text);
			$text = str_replace('\]\]\>', ']]&gt;', $text);
			$text = preg_replace('@<script[^>]*?>.*?</script>@si', '', $text);
			$text = strip_tags($text, '<p><a>');
			$excerpt_length = 150;
			$words = explode(' ', $text, $excerpt_length + 1);
			if (count($words) > $excerpt_length) {
					array_pop($words);
					array_push($words, '[...] <p class="clear"><a class="read-more btn-green" href="'. get_permalink($post->ID) . '">More</a></p>');
					$text = implode(' ', $words);
			}
			else {
				array_push($words, '<p class="clear"><a class="read-more btn-green" href="'. get_permalink($post->ID) . '">More</a></p>');
				$text = implode(' ', $words);
			}

	}
	return $text;
}
remove_filter('get_the_excerpt', 'wp_trim_excerpt');
add_filter('get_the_excerpt', 'modified_trim_excerpt');

// show empty categories in widget
add_filter('widget_categories_args','show_empty_categories_links');
function show_empty_categories_links($args) {
	$args['hide_empty'] = 0;
	return $args;
}

/* =============== Custom Nav Markup =========================== */

function custom_nav(){
	$navigation = '';
	$previous   = get_previous_post_link( '<div class="nav-previous">%link</div>', '<i class="fa fa-arrow-left"></i> %title', true );
	$next       = get_next_post_link( '<div class="nav-next">%link</div>', '%title  <i class="fa fa-arrow-right"></i>', true );

	// Only add markup if there's somewhere to navigate to.
	if ( $previous || $next ) {
		$navigation = _navigation_markup( $previous . $next, 'post-navigation' );
	}

	echo $navigation;
}

/* =============== Custom Login Logo =========================== */

function ac_loginlogo() {
	echo '<style type="text/css">
	h1 a {background-image: url('.get_bloginfo('stylesheet_directory').'/img/logo.png) !important; background-size:200px!important; width:200px!important;}
	</style>';
	}
add_action('login_head', 'ac_loginlogo');
