<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package Strapped
 */

get_header(); ?>

<div class="container">
	<div class="row">
		<div id="primary" class="col-xs-12">
			<main id="main" class="site-main" role="main">

				<section class="error-404 not-found">
					<header class="page-header">
						<div class="col-sm-4 col-xs-4 col col-full-xxs">
							<a href=" <?php echo get_bloginfo(url); ?> ">
								<img class="responsive" src="/wp-content/themes/ActorsCompass/img/404compass-300.gif">
							</a>
						</div>
						<div class="col-sm-8 col-xs-8 col col-full-xxs" style="text-align:center;">
							<h1 class="page-title"><?php esc_html_e( "Looks like you've lost your way.", 'strapped' ); ?></h1>
							<h4><?php esc_html_e( "But don't worry, we'll get you where you're going.", 'strapped' ); ?></h4>
							<div class="cta">
								<h4 style="margin-top:3em;">Don't have your acting website yet?</h4>
								<a href="#signup-button"><button class="btn btn-red">Sign Up</button></a>
							</div>
						</div>
					</header><!-- .page-header -->

					<div class="clearfix"></div>
					
					<div class="page-content">
						<div class="search">
							<?php get_search_form(); ?>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2">
							<h3>Navigate</h3>
							<h4><a href="?php echo get_bloginfo(url); ?>">Home</a></h4>
							<h4><a href="?php echo get_bloginfo(url); ?>/blog">Blog</a></h4>

							<h3>Your Site</h3>
							<h4><a href="<?php echo get_bloginfo(url); ?>"></h4>
								Log In
							</a>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 postlist">
							<h3>Pro Tips</h3>
							<?php query_posts( 'category_name=8&posts_per_page=5' ); ?>
							<?php while ( have_posts() ) : the_post(); ?>
							<div class="post">
								<a href="<?php the_permalink(); ?>" rel="bookmark" title="Read "<?php the_title_attribute(); ?>"">
								<?php if (has_post_thumbnail() ) {
									the_post_thumbnail( $size = array( 60, 60) );
								}
								if (!has_post_thumbnail()) {
									?> <div class="imageplaceholder"></div> <?php
								} ?>
									<h4><?php the_title(); ?></h4>
								</a>
							</div>
							<?php endwhile; ?>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<section id="signup-button" class="home-sixth cta-final">
									<div class="row">
										<div class="col-xs-12 center-block">
											<h3>Join our mailing list</h3>
											<form class="cta-final-form" action="//actorscompass.us9.list-manage.com/subscribe/post?u=1a274b588b38fbdca0e423cb2&amp;id=ea64e04eee" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
												<div class="form-fields-top">
												  <label class="screenreader" for="mce-FNAME">First Name</label>
												  <input type="text" value="First Name" name="FNAME" class="" id="mce-FNAME" onblur=" if (this.value == '' ) this.value = 'First Name'; " onfocus="if(this.value == 'First Name') this.value = '';">
													<label class="screenreader" for="mce-LNAME">Last Name</label>
													<input type="text" value="Last Name" name="LNAME" class="" id="mce-LNAME" onblur=" if (this.value == '' ) this.value = 'Last Name'; " onfocus="if(this.value == 'Last Name') this.value = '';">
												</div>
											  <label class="screenreader" for="mce-EMAIL">Email</label>
												<input type="email" value="Enter Your Email" name="EMAIL" class="required email" id="mce-EMAIL" onblur=" if (this.value == '' ) this.value = 'Enter Your Email'; " onfocus="if(this.value == 'Enter Your Email') this.value = '';">
												<input type="submit" class="btn btn-green" type="button" value="Notify Me" />
											</form>
										</div><!-- /col-->
									</div><!-- /row-->
								</section>
						</div>
					</div><!-- .page-content -->
				</section><!-- .error-404 -->

			</main><!-- #main -->
		</div><!-- #primary -->
	</div><!-- .row -->
</div><!-- .container -->

<?php get_footer(); ?>
