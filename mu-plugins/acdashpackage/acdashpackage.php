<?php
/*
Plugin Name: AC Dash Package
Description: Replaces WP admin with AC Dashboard
Author: Actors Compass
Version: 0.8.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) { exit; }


require_once('killadmin.php');
require_once('dashboard.php');
require_once('customizerloadscripts.php');

function begin_acdash() {
    if (!is_super_admin()){

        wp_enqueue_style('acdashpackage', plugins_url('wp-admin.css', __FILE__));
    }
}
add_action( 'after_setup_theme', 'begin_acdash' );




/* ================== SUPER ADMIN DASHBOARD NOTICE ================== */
function ac_devs_dashboard_notice() {
    if (is_super_admin()) {
        $class = 'notice notice-error';
        $message = __( '<h2>NOTICE</h2>
                        -- AC Dash Package applies to users, Super Admins get (nearly) everything<br>
                        <br>
                        -GDK     April 3' );

        printf( '<div class="%1$s"><p>%2$s</p></div>', $class, $message );
    }
}
add_action( 'admin_notices', 'ac_devs_dashboard_notice' );
