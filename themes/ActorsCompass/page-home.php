<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Strapped
 */

get_header(); ?>

		<div class="row">
			<div id="primary" class="col-lg-12 col-md-12">
				<main id="main" class="site-main" role="main">
					<section class="homehero cta">
						<div class="row">
							<div class="col-xs-12 col-sm-8 center-block">
								<h1 class="hero-text">Don't get lost in the clutter. Put yourself on the map.</h1>
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/img/AC-logo-newcolor.png" alt="ActorsCompass">
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/img/computerphoto-v2.png">
								<p>The simplest way to put your professional actor portfolio online. No fuss, no muss.</p>
								<a href="#signup-button"><button class="btn btn-red">Sign Up</button></a>
								<a href="http://demo.actorscompass.com/"><button class="btn btn-green">See the Demo</button></a>
						</div><!-- /row-->
					</section>
					<section class="home-second">
						<div class="row">
							<div class="col-xs-12 col-sm-8 center-block">
								<h1 class="section-heading">Make Yourself Look Good</h1>
								<p class="section-content">You’re a professional. Make sure your website is too. Let Hollywood know you mean business by customizing your online presence with one of our exclusive templates.</p>
							</div><!-- /col-->
						</div><!-- /row-->
					</section>

					<section class="home-third">
						<div class="row">
							<div class="col-xs-12 col-sm-8 center-block">
								<h1 class="section-heading">GIVE ‘EM WHAT THEY WANT</h1>
								<p class="section-content">Show casting directors exactly what they’re looking for. ActorsCompass websites are designed to showcase your reel, headshots, and resume. Put the spotlight on your craft so you can put your best foot forward and get noticed by industry decision-makers.</p>
							</div><!-- /col-->
						</div><!-- /row-->
					</section>

					<section class="home-fourth">
						<div class="row">
							<div class="col-xs-12 col-sm-8 center-block">
								<h1 class="section-heading">Keep it simple</h1>
								<p class="section-content">ActorsCompass is the most actor-specific, novice-friendly web tool on the market today. That means zero guesswork for you! You’re guided step-by-step through the process of creating a polished actor website. Once your site is online, it’s a cinch to keep things fresh with your newest reel, photos, and credits.</p>
							</div><!-- /col-->
						</div><!-- /row-->
					</section>

					<section class="home-fifth">
						<div class="row">
							<div class="col-xs-12 col-sm-8 center-block">
								<h1 class="section-heading">Make it affordable</h1>
								<p class="section-content">Think a great actor website has to cost a fortune? Think again! Put your select actor portfolio online for <strong>free</strong> with ActorsCompass! When you’re ready, take your website to the next level for less than a dollar a day with even more reels, photos, and even a blog. There’s no contract, so you keep your website for only as long as you want. No fuss, no muss.</p>
							</div><!-- /col-->
						</div><!-- /row-->
					</section>

					<section id="signup-button" class="home-sixth cta-final">
						<div class="row">
							<div class="col-xs-12 col-sm-8 center-block">
								<p class="section-content">Sign up now and put yourself on the map with</p>
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/img/AC-logo-newcolor.png" alt="ActorsCompass" />

								<a class="signup-button" href="/wp-signup.php/"><button class="btn btn-red">Start Now</button></a>

							</div><!-- /col-->
						</div><!-- /row-->
					</section>
				</main><!-- #main -->
			</div><!-- #primary -->
		</div><!-- .row -->





<?php get_footer(); ?>
