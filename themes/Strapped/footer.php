<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Strapped
 */

?>


	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="site-info">
						Copyright &copy; <?php echo date('Y'); ?> <?php echo bloginfo('name'); ?> | <a href="http://actorscompass.com" target="blank">Website Development</a>
					</div><!-- .site-info -->
				</div><!-- .col -->
			</div><!-- .row -->
		</div><!-- .container -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
