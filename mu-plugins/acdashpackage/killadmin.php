<?php
/*
Name: Kill Admin
Description: Nuke the admin for network users
Author: Actors Compass
Version: 1.0.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) { exit; }


add_filter( 'show_admin_bar', '__return_false' );

/* ================== DEFAULT WP DASHBOARD ELEMENTS ================== */

// Remove "Welcome to WordPress metabox from Dashboard"
remove_action( 'welcome_panel', 'wp_welcome_panel' );


/* ================== USER PROFILE ELEMENTS ================== */

// Remove Admin color schemes from user profile
remove_action( 'admin_color_scheme_picker', 'admin_color_scheme_picker' );

// Remove "Personal Options" section of User Profile
if ( ! function_exists( 'cor_remove_personal_options' ) ) {
  // Removes the leftover 'Visual Editor', 'Keyboard Shortcuts' and 'Toolbar' options.
  function cor_remove_title( $subject ) {
    $subject = preg_replace( '#<h1>
Profile</h1>#s', '', $subject, 1 );
    return $subject;
  }
  function cor_change_title( $subject ) {
    $subject = preg_replace( '#<h2>Account Management</h2>#s', '<h1>Account Management</h1>', $subject, 1 );
    return $subject;
  }
  function cor_remove_personal_options( $subject ) {
    $subject = preg_replace( '#<h2>Personal Options</h2>.+?/table>#s', '', $subject, 1 );
    return $subject;
  }
  function cor_remove_name_options( $subject ) {
    $subject = preg_replace( '#<h2>Name</h2>#s', '', $subject, 1 );
    return $subject;
  }


  function cor_remove_stuff( $subject ) {
    $subject = preg_replace( '#<tr class="user-user-login-wrap">
    <th><label for="user_login">Username</label></th>
    <td><input type="text" name="user_login" id="user_login" value="demo" disabled="disabled" class="regular-text"> <span class="description">Usernames cannot be changed.</span></td>
  </tr>#s', '', $subject, 1 );
    return $subject;
  }
  

  function cor_remove_about_options( $subject ) {
    $subject = preg_replace( '#<h2>About Yourself</h2>.+?/table>#s', '', $subject, 1 );
    return $subject;
  }
  function cor_remove_contact_options( $subject ) {
    $subject = preg_replace( '#<h2>Contact Info</h2>#s', '', $subject, 1 );
    return $subject;
  }
  function cor_remove_website_options( $subject ) {
    $subject = preg_replace( '#<tr class="user-url-wrap">.+?/table>#s', '', $subject, 1 );
    return $subject;
  }
  function cor_remove_logout_options( $subject ) {
    $subject = preg_replace( '#<tr class="user-sessions-wrap hide-if-no-js">.+?/tr>#s', '', $subject, 1 );
    return $subject;
  }
  
  function cor_profile_subject_start() {
    ob_start( 'cor_remove_title' );
    ob_start( 'cor_change_title' );
    ob_start( 'cor_remove_personal_options' );
    ob_start( 'cor_remove_name_options' );
    ob_start( 'cor_remove_about_options' );
    ob_start( 'cor_remove_contact_options' );
    ob_start( 'cor_remove_website_options' );
    ob_start( 'cor_remove_logout_options' );
    ob_start( 'cor_remove_stuff' );
  }
  function cor_profile_subject_end() {
    ob_end_flush();
  }
}
add_action( 'admin_head', 'cor_profile_subject_start' );
add_action( 'admin_footer', 'cor_profile_subject_end' );







/* ================== ADMIN MENU ITEMS ================== */

// add_action( 'after_setup_theme', 'remove_all_admin' );
function remove_all_admin(){
    if (!is_super_admin()) {
        add_action('admin_init', 'nuke_admin_init');
    }
}

//NUKES the entire admin menu
function nuke_admin_init()
{
    // Remove unnecessary menus
    $menus_to_stay = array(
    );
    foreach ($GLOBALS['menu'] as $key => $value) {
        if (!in_array($value[2], $menus_to_stay)) remove_menu_page($value[2]);
    }
}





/* ================== ADMIN FOOTER ================== */

// Replace admin footer text
add_filter('admin_footer_text', 'left_admin_footer_text_output'); //left side
function left_admin_footer_text_output($text) {
    $text = '';
    return $text;
}
add_filter('update_footer', 'right_admin_footer_text_output', 11); //right side
function right_admin_footer_text_output($text) {
    $text = 'Actors Compass';
    return $text;
}
