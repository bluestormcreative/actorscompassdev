<?php
/**
 * The template for displaying all single posts.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Strapped
 */

get_header(); ?>
<div class="container">
	<div class="row">
		<div id="primary" class="col-lg-8 col-lg-8">
			<main id="main" class="site-main" role="main">

			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'template-parts/content', 'single' ); ?>

				<?php custom_nav(); ?>

			<?php endwhile; // End of the loop. ?>

			</main><!-- #main -->
		</div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>
