<?php
/*
Name: Kill Admin
Description: Nuke the admin for network users
Author: Actors Compass
Version: 1.0.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) { exit; }

//add admin script to customizer page
function ac_customizer_preview() {
    wp_enqueue_script( 'ac_customizer_script', plugin_dir_url( __FILE__ ) . '/js/customizer-scripts.js', array( 'jquery','customize-preview' ), true);
}

add_action('customize_preview_init', 'ac_customizer_preview');
