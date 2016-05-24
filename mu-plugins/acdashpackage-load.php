<?php
/*
* Description: Loads AC Dash Package: Replaces default WP Dashboard with custom AC Dashboard
* Author: Actors Compass
* Version: 1.0
*/
defined( 'ABSPATH' ) or die( 'Nope.' );

// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}
require(WPMU_PLUGIN_DIR . '/acdashpackage/acdashpackage.php');
