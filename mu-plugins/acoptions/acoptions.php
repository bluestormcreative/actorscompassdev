<?php
/**
 * The Actors Compass Options Plugin
 *
 * A custom options panel for sites on the Actors Compass network.
 *
 * Completely based on the Redux Framework.
 * Plugin name customized for AC and license removed.
 * All other Redux info intact.
 *
 *
 * Plugin Name:     Actors Compass Options
 * Plugin URI:      http://wordpress.org/plugins/redux-framework
 * Github URI:      https://github.com/ReduxFramework/redux-framework
 * Description:     Redux is a simple, truly extensible options framework for WordPress themes and plugins.
 * Author:          Team Redux
 * Author URI:      http://reduxframework.com
 * Version:         3.5.9.5
 * Text Domain:     redux-framework
 * Provides:        ReduxFramework
 *
 * @package         ReduxFramework
 * @author          Dovy Paukstys <dovy@reduxframework.com>
 * @author          Kevin Provance <kevin@reduxframework.com>
 * @license         GNU General Public License, version 3
 * @copyright       2012-2016 Redux.io
 */


defined( 'ABSPATH' ) or die( 'Nope.' );

// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

// Load custom panel styles
function ac_panel_style() {
    wp_enqueue_style('ac-admin-theme', plugins_url('css/panel.css', __FILE__));
}
add_action('admin_enqueue_scripts', 'ac_panel_style');

// Load the whole enchilada
require_once('admin-init.php');
