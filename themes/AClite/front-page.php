<?php
/**
 * The template for the home page.
 *
 * @package AClite
 */

get_header();

global $primaryfontstyle;
global $secondaryfontstyle;
?>
<div class="container">
	<div class="row">
		<div id="primary" class="col-xs-12">
			<main id="main" class="site-main" role="main">
				<div class="col col-xs-12" id="topinfo">
					<div class="col col-sm-6 col-xs-12">
						<h1 id="name"><?php echo $redux_builder_ac['name-options']; ?></h1>
						<?php $tagline = $redux_builder_ac['tagline-options'];
						if ($tagline): ?>
							<h2 id="tagline"><?php echo $redux_builder_ac['tagline-options']; ?></h2>
						<?php endif;?>
					</div>
					<?php $resumeLink = $redux_builder_ac_res['resume-options']['url'];
					if ($resumeLink):
						$colsClass = 'col col-sm-9 col-xs-9';
					else:
						$colsClass = 'col col-sm-12 col-xs-12';
					endif; ?>
					<div class="col col-sm-6 col-xs-12 stats">
						<div class="<?php echo $colsClass; ?>" id="stat1">
							<div class="col col-sm-12 col-xs-7">
								<h4>Height: <?php echo $redux_builder_ac['height-options']; ?></h4>&nbsp;&bull;&nbsp;<h4>Body Type: <?php echo $redux_builder_ac['bodytype-options']; ?></h4>
							</div>
							<div class="col col-sm-12 col-xs-5">
								<h4>Hair: <?php echo $redux_builder_ac['hair-options']; ?></h4>&nbsp;&bull;&nbsp;<h4>Eyes: <?php echo $redux_builder_ac['eyes-options']; ?></h4>
							</div>
						</div>
						<?php if ($resumeLink): ?>
						<div class="col col-xs-3" id="resume">
							<a href="<?php echo $redux_builder_ac_res['resume-options']['url']; ?>" target="blank">
								<i class="icon-Resume fa-3x"></i>
								<span>Download</br>Resume</span>
							</a>
						</div>
					<?php endif; ?>
					</div>

				</div>
				<div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="col col-lg-6 col-md-6  col-sm-6 headshot">

							<img src="<?php echo $redux_builder_ac['headshot-options']['url']; ?>" class="headshot" />

						<div class="bio">
							<?php $bio = $redux_builder_ac['bio-options'];
								if ($bio): ?>
								<?php echo '<p>' . $redux_builder_ac['bio-options'] . '</p>' ; ?>
							<?php endif; ?>
						</div>


						<div class="representation">
							<?php $agent = $redux_builder_ac['agent-name'];
								if ($agent): ?>
								<h3>Represented by:</h3>
								<ul class="agent-list">
									<?php if ($redux_builder_ac['agent-name']): ?>
										<li><?php echo $redux_builder_ac['agent-name']; ?></li>
									<?php endif; ?>
									<?php if ($redux_builder_ac['agent-email']): ?>
										<li><a href="mailto:<?php echo $redux_builder_ac['agent-email']; ?>" target="blank"><?php echo $redux_builder_ac['agent-email']; ?></a></li>
									<?php endif; ?>
									<?php if ($redux_builder_ac['agent-phone']): ?>
										<li><a href="mailto:<?php echo $redux_builder_ac['agent-phone']; ?>" target="blank"><?php echo $redux_builder_ac['agent-phone']; ?></a></li>
									<?php endif; ?>
								</ul>
								<?php endif; ?>
						</div>

					</div> <!-- /end first col -->

					<div class="col col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="reel">
							<?php
							/* Reel */
							$reel_url = $redux_builder_ac['reel-options'];

						  $embed_code = ac_regex_videos( $reel_url );

							echo $embed_code;

							?>
						</div>
						<div class="creditsskills">
							<div class="credits">
								<?php  $credits = $redux_builder_ac_res['credits-options'];
									if ($credits): ?>
								<h3>Featured Credits</h3>
								<ul class="resume-list">
									<?php

										$count = count($redux_builder_ac_res['credits-options']['redux_repeater_data']) - 1;

										$i = 0;
										while ($i<=$count): ?>
									<li>
										<span><em><?php echo $redux_builder_ac_res['credits-options']['credit_title'][''.$i.'']; ?></em></span>
										<span><?php echo $redux_builder_ac_res['credits-options']['role'][''.$i.'']; ?></span>
										<span><?php echo $redux_builder_ac_res['credits-options']['producer'][''.$i.'']; ?></span>
									</li>
										<?php
											$i++;
										endwhile; ?>
								</ul>
							<?php endif; ?>
							</div>

								<div class="training">
									<?php  $training = $redux_builder_ac_res['training-options'];
											if ($training): ?>
									<h3>Select Training</h3>
									<ul class="resume-list">
										<?php

											$count = count($redux_builder_ac_res['training-options']['redux_repeater_data']) - 1;

											$i = 0;
											while ($i<=$count): ?>
										<li>
											<span><em><?php echo $redux_builder_ac_res['training-options']['class_technique'][''.$i.'']; ?></em></span>
											<span><?php echo $redux_builder_ac_res['training-options']['teacher'][''.$i.'']; ?></span>
											<span><?php echo $redux_builder_ac_res['training-options']['school'][''.$i.'']; ?></span>
										</li>
											<?php
												$i++;
											endwhile; ?>
									</ul>
								<?php endif; ?>
								</div>

								<div class="skills">
								<?php  $skills = $redux_builder_ac_res['skills-options'];
										if ($skills): ?>
									<h3>Skills</h3>
									<p><?php echo $redux_builder_ac_res['skills-options']; ?></p>
									<?php endif; ?>
								</div>
						</div>
					</div>
				</div>

			</main><!-- #main -->
		</div><!-- #primary -->
	</div><!-- .row -->
</div><!-- .container -->

<?php get_footer(); ?>
