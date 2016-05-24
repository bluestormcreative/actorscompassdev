<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package AClite
 */

global $redux_builder_ac ;
?>


	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="container-fluid full-width">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="footer-contact">
							<p class="name"><?php echo $redux_builder_ac['name-options']; ?></p>
							<?php echo '<a href="mailto:' . $redux_builder_ac['email-options'] . ' "> ' . $redux_builder_ac['email-options'] . '</a>'; ?>
							&nbsp;|&nbsp;
							<?php echo '<a href="tel:' . $redux_builder_ac['phone-options'] . ' "> ' . $redux_builder_ac['phone-options'] . '</a>'; ?>
							</div>
					<div class="footer-social">
							<?php get_template_part( 'template-parts/social'); ?>
					</div>
					<div class="site-info">
						<?php
							printf( esc_html__( '&copy; ' ));
							echo date('Y ');
							echo esc_html( do_action('call_displayClientName') );
							print( esc_html__( '. All Rights Reserved.'));
						?>
					</div><!-- .site-info -->
					<div class="poweredby">
						<?php
							print( '<a href="' );
							print( esc_url( 'http://actorscompass.com' ) );
							print( ' " rel="designer" target="blank"><p>' );
							print( esc_html( do_action('call_displayDesignerAttr') ));
							print( '<br>');
							print( esc_html( do_action('call_displayDesignerName')));
							print( '</p></a>');
						?>
					</div><!-- .poweredby -->
				</div><!-- .col -->
			</div><!-- .row -->
		</div><!-- .container -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
