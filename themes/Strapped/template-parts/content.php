<?php
/**
 * Template part for displaying posts.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Strapped
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' ); ?>
	</header><!-- .entry-header -->
	<?php if(has_post_thumbnail()): ?>
		<div class="featured-image">
			<?php the_post_thumbnail('blog-featured'); ?>
		</div>
	<?php endif; ?>
	<div class="entry-content">
		<?php
			the_excerpt( sprintf(
				/* translators: %s: Name of current post. */
				wp_kses( __( 'Continue reading %s <span class="meta-nav">&rarr;</span>', 'strapped' ), array( 'span' => array( 'class' => array() ) ) ),
				the_title( '<span class="screen-reader-text">"', '"</span>', false )
			) );
		?>

		<?php
			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'strapped' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer">

		<?php if ( 'post' === get_post_type() ) : ?>
				<div class="entry-meta">
					<?php strapped_posted_on(); ?>
				</div><!-- .entry-meta -->
				<?php endif; ?>
		<?php strapped_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-## -->
