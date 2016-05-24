<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package AClite
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic' rel='stylesheet' type='text/css'>

<?php wp_head();
global $redux_builder_ac ;
global $redux_builder_ac_res ;

// add our custom variables and styles

global $primaryfontstyle;
global $secondaryfontstyle;

$fonts = $redux_builder_ac['opt-typography'];

switch ($fonts) {
    case "fonts1":
				$primaryfontstyle = 'style="font-family:Montserrat;font-weight:700;"';
				$secondaryfontstyle = 'style="font-family:Raleway;font-weight:500;"';
        echo "<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>";
        echo "<link href='https://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>";
        break;
    case "fonts2":
				$primaryfontstyle = 'style="font-family:Oswald;font-weight:700;text-transform:uppercase;"';
				$secondaryfontstyle = 'style="font-family:Raleway;font-weight:500;"';
        echo "<link href='https://fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>";
        echo "<link href='https://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>";
        break;
    case "fonts3":
				$primaryfontstyle = 'style="font-family:Lobster;"';
				$secondaryfontstyle = 'style="font-family:Slabo 27px;"';
        echo "<link href='https://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>";
        echo "<link href='https://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'>";
        break;
		case "fonts4":
				$primaryfontstyle = 'style="font-family:Lora;"';
				$secondaryfontstyle = 'style="font-family:Lora;"';
        echo "<link href='https://fonts.googleapis.com/css?family=Lora:400,700' rel='stylesheet' type='text/css'>";
				break;

    default:
    		$primaryfontstyle = 'style="font-family:Montserrat;font-weight:700;"';
    		$secondaryfontstyle = 'style="font-family:Raleway;font-weight:400;"';
        echo "<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>";
        echo "<link href='https://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>";
        break;
  }
?>
</head>
<?php
$palette = $redux_builder_ac['opt-palette-color'];
 if ($fonts && $palette):
   $classes = $fonts .' '.$palette;
 endif; ?>
<body <?php body_class($classes) ?>>
  <?php if (!is_admin() && is_user_logged_in()): ?>
    <div class="ac-admin-bar">
			<div class="container-fluid">
				<div class="col col-xs-8"><i class="icon-ActorsCompass fa-2x logo"></i> <a href="/wp-admin/" class="btn dash"><i class="fa fa-tachometer"></i> <p>Back to Dashboard</p></a>
				</div>
				<div class="col col-xs-4 logout">
					<a href="<?php echo wp_logout_url( home_url()); ?>" class="btn">
				    	<i class="fa fa-sign-out fa-1x"></i> <p>Log Out</p>
				    </a>
				</div>
			</div>
		
    </div>
  <?php endif; ?>
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', aclite ); ?></a>

	<header id="masthead" class="site-header" role="banner">
		<nav role="navigation">
			<div class="navbar navbar-static-top navbar-default">
				<div class="container">
					<div class="navbar-header">

						<div class="col col-lg-8 col-md-8  col-sm-12 col-xs-12">
							<p class="header-contact">
								<?php

								$sagstatus =  $redux_builder_ac['union-select']['sag'];
								$aeastatus =  $redux_builder_ac['union-select']['aea'];
								$agvastatus =  $redux_builder_ac['union-select']['agva'];

								if( $sagstatus == "1"){
										echo 'SAG-AFTRA'.'&nbsp;'.'&nbsp;';
								}
								if( $aeastatus == "1"){
										echo 'AEA'.'&nbsp;'.'&nbsp;';
								}
								if( $agvastatus == "1"){
										echo 'AGVA'.'&nbsp;'.'&nbsp;';
								}

								if( $sagstatus == "1" || $aeastatus == "1" || $agvastatus == "1" ){
									echo '&nbsp;&bull;&nbsp;';
								} ?>

								<?php echo '<a href="mailto:' . $redux_builder_ac['email-options'] . ' "> ' . $redux_builder_ac['email-options'] . '</a>'; ?>
								&nbsp;|&nbsp;
								<?php echo '<a href="tel:' . $redux_builder_ac['phone-options'] . ' "> ' . $redux_builder_ac['phone-options'] . '</a>'; ?>
							</p>
						</div>

						<div class="col col-lg-4 col-md-4 col-sm-12 col-xs-12 social">
							<?php get_template_part( 'template-parts/social'); ?>
						</div>


					</div>

				</div>
			</div>
		</nav><!-- #site-navigation -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">
