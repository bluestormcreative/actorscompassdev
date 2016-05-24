<?php
/*
Plugin Name: Kanso (簡素)
Description: One of seven tenets of the Wabi-sabi aesthetic - Simplicity & elimination of clutter.
Author: Keller Digital
Version: 1.0.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) { exit; }

// CUSTOM LOGIN

/* Custom login page */
function custom_login_logo() { ?>
<?php
$checkThisUrl = plugins_url('/img/logo.png', __FILE__ ) ; 
function url_exists($url) 
{ 
 $handle = @fopen($url, "r"); 
 if ($handle === false) 
  return false; 
 fclose($handle); 
 return true; 
} 
$query = url_exists("$checkThisUrl"); 
?>
    <style type="text/css">
        body.login {
            background: #D5E7EA !important;
        }
        #wpwrap #wp-auth-check-wrap #wp-auth-check {
            background: #D5E7EA;
        }
        body.login form {
            box-shadow: none;
            padding-bottom: 26px;
        }
        .login form .input, .login form input[type=checkbox], .login input[type=text] {
            background: white;
        }
        body.login form .input, .login input[type=text], .login input[type=password], .login input[type=checkbox] {
            box-shadow: none;
            -webkit-box-shadow: none;
        }
        .login input[type=checkbox]:checked:before {
            color: #2E8997;
        }
        .login input[type=text], .login input[type=password], .login input[type=checkbox]  {
            border-color: #D5E7EA;
        }
        .login input[type=text]:focus, .login input[type=password]:focus, .login input[type=checkbox]:focus  {
            border-color: #2E8997 ! important;
        }
        #login .button-primary {
            background: #2E8997;
            background-color: #2E8997;
            box-shadow: none;
            text-shadow:none;
            border-radius: 0;
            height: auto;
            width: 100%;
            padding: 10px 20px;
            margin-top: 2em;
            text-transform: uppercase;
            font-weight: bold;
        }
        body.login div#login h1 a {
            <?php
                if($query) {
                    echo 'background-color:none;' .
                     'background-image: url("' . plugins_url('/img/logo.png', __FILE__ ) . '");';
                } else {
                   echo 'background-color:none;';
                 }; ?>  
            width: 100%;
            background-size: contain;
            margin-bottom: 10px;
        }
        body.login #login p a {
        	color: #2E8997;
        }
        body.login #login p a:hover {
            color: #f03c3d;
        }
    </style>
<?php }
add_action( 'login_enqueue_scripts', 'custom_login_logo' );

/* Login page image link */
function my_login_logo_url() {
    return network_home_url();
}
add_filter( 'login_headerurl', 'my_login_logo_url' );

function my_login_logo_url_title() {
    switch_to_blog(1);
    $site_title = get_bloginfo( 'name' );
    $site_url = network_site_url( '/' );
    $site_description = get_bloginfo( 'description' );
    restore_current_blog();
    return $site_title;
}
add_filter( 'login_headertitle', 'my_login_logo_url_title' );


/*********************************************/

// ADMIN TOOLBAR CUSTOMIZATION

// remove links from top toolbar
add_action( 'admin_bar_menu', 'remove_toolbar_nodes', 999 );
function remove_toolbar_nodes( $wp_admin_bar ) {
    if (!current_user_can('update_core')) {
    	//$wp_admin_bar->remove_node( 'headway' ); // Headway
    	$wp_admin_bar->remove_node( 'w3tc' ); // W3 Total Cache
    	$wp_admin_bar->remove_node( 'wpseo-menu' ); // Yoast SEO
        $wp_admin_bar->remove_node( 'new-content' ); // Add New content
        $wp_admin_bar->remove_node( 'comments' ); // Comments
    }
}

// Remove top admin Toolbar if not super admin
add_action('after_setup_theme', 'remove_admin_bar');
function remove_admin_bar() {
    if (!is_super_admin()) {
        show_admin_bar(false);
    }
}


// Remove Dashboard widgets
function remove_dashboard_meta() {
        remove_meta_box( 'dashboard_plugins', 'dashboard', 'normal' ); // Plugins
        remove_meta_box( 'dashboard_primary', 'dashboard', 'side' );
        remove_meta_box( 'dashboard_secondary', 'dashboard', 'normal' );
        remove_meta_box( 'dashboard_incoming_links', 'dashboard', 'normal' ); // Incoming Links
        remove_meta_box( 'dashboard_quick_press', 'dashboard', 'side' ); // Quick Press
        remove_meta_box( 'dashboard_recent_drafts', 'dashboard', 'side' ); // Recent Drafts
        remove_meta_box( 'dashboard_recent_comments', 'dashboard', 'normal' ); // Recent Comments
        remove_meta_box( 'dashboard_right_now', 'dashboard', 'normal' ); // Right Now
        remove_meta_box( 'dashboard_activity', 'dashboard', 'normal' ); // Activity
        remove_meta_box( 'arve_dashboard_widget', 'dashboard', 'normal' ); // ARVE
        remove_meta_box( 'redux_dashboard_widget', 'dashboard', 'normal' ); // Redux
        remove_meta_box( 'rg_forms_dashboard', 'dashboard', 'normal' ); // Gravity Forms
        
}
add_action( 'admin_init', 'remove_dashboard_meta' );




// Remove WP Core update nag for non-admin users
function hide_update_notice_to_all_but_admin_users()
{
    if (!current_user_can('update_core')) {
        remove_action( 'admin_notices', 'update_nag', 3 );
    }
}
add_action( 'admin_head', 'hide_update_notice_to_all_but_admin_users', 1 );
