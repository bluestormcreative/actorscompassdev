<?php
/*
* Description: Changes all taglines for newly created sites
* Author: Actors Compass
* Version: 1.0
*/
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}


function set_default_tagline($blog_id){

	update_blog_option( $blog_id, $option = 'description', $value = 'An Actors Compass Site', $deprecated );

}
add_action('wpmu_new_blog', 'set_default_tagline', 100 );


?>
