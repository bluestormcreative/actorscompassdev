<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Strapped
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<link href='https://fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic' rel='stylesheet' type='text/css'>

<script src="https://use.typekit.net/vtt8svr.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'strapped' ); ?></a>

	<?php if(!is_404()){ ?>
	<header id="masthead" class="site-header" role="banner">
		<nav role="navigation">
			<div class="navbar navbar-fixed-top navbar-default">
				<div class="container-fluid">
					<!-- .navbar-toggle is used as the toggle for collapsed navbar content -->
					<div class="navbar-header">

						<!-- <a href="" class="menutext">Menu</a> -->
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

						<a class="navbar-brand" href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php bloginfo( 'name' ) ?>" rel="homepage"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/ac-compass.png"></a>
					</div>

					<div class="navbar-collapse collapse navbar-responsive-collapse">
						<?php

						$args = array(
							'theme_location' => 'primary',
							'depth'      => 2,
							'container'  => false,
							'menu_class'     => 'nav navbar-nav navbar-right',
							'walker'     => new Bootstrap_Walker_Nav_Menu()
							);

						if (has_nav_menu('primary')) {
							wp_nav_menu($args);
						}

						?>
					</div>
				</div>
			</div>
		</nav><!-- #site-navigation -->
	</header><!-- #masthead -->
	<?php } ?>

	<div id="content" class="site-content">
