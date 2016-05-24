<?php
/*
* Description: Redirects multisite user to their own site dash no matter where they log in from
* Author: Actors Compass
* Version: 1.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

function ac_login_redirect( $redirect_to, $request_redirect_to, $user )
{
    if ( $user->ID != 0 ) {
        $user_info = get_userdata($user->ID);
        if ($user_info->primary_blog) {
            $primary_url = get_blogaddress_by_id($user_info->primary_blog) . 'wp-admin/';
            if ($primary_url) {
                wp_redirect($primary_url);
                die();
            }
        }
    }
    return $redirect_to;
}
add_filter('login_redirect','ac_login_redirect', 100, 3);


/* Attempting to redirect to user site admin if they go to actorscompass.com/admin
** Not working

function admin_redirect_to_sub_site() {
    if ( 'main-site' === $GLOBALS['wp']->request ) {
        $user_info = get_userdata($user->ID);
        if ($user_info->primary_blog) {
            $primary_url = get_blogaddress_by_id($user_info->primary_blog) . 'wp-admin/';
            if ($primary_url) {
                wp_redirect($primary_url);
                die();
            }
        }
    }
}
add_action( 'parse_request', 'admin_redirect_to_sub_site' );
*/

?>
