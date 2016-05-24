<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package AClite
 */
// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}
header("HTTP/1.1 301 Moved Permanently");
header("Location: ".get_bloginfo('url'));
exit()

?>
