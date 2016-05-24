<?php
/**
 * Jetpack Compatibility File.
 *
 * @link https://jetpack.me/
 *
 * @package Strapped
 */

/**
 * Add theme support for Infinite Scroll.
 * See: https://jetpack.me/support/infinite-scroll/
 */
function strapped_jetpack_setup() {
	add_theme_support( 'infinite-scroll', array(
		'container' => 'main',
		'render'    => 'strapped_infinite_scroll_render',
		'footer'    => 'page',
	) );
} // end function strapped_jetpack_setup
add_action( 'after_setup_theme', 'strapped_jetpack_setup' );

/**
 * Custom render function for Infinite Scroll.
 */
function strapped_infinite_scroll_render() {
	while ( have_posts() ) {
		the_post();
		get_template_part( 'template-parts/content', get_post_format() );
	}
} // end function strapped_infinite_scroll_render
