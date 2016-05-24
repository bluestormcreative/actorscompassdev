<?php // pulls redux social icons from customizer with ordering

global $redux_builder_ac;

$socialactive = $redux_builder_ac['social-options'];

foreach($socialactive as $social => $active) {


    switch ($social){
      case ('facebook'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['facebook-url'] . '">';
            echo '<i class="icon-Facebook fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('twitter'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['twitter-url'] . '">';
            echo '<i class="icon-Twitter fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('instagram'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['instagram-url'] . '">';
            echo '<i class="icon-Instagram fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('youtube'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['youtube-url'] . '">';
            echo '<i class="icon-YouTube fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('vimeo'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['vimeo-url'] . '">';
            echo '<i class="icon-Vimeo fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('soundcloud'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['soundcloud-url'] . '">';
            echo '<i class="icon-SoundCloud fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('actorsaccess'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['actorsaccess-url'] . '">';
            echo '<i class="icon-ActorsAccess fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('imdb'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['imdb-url'] . '">';
            echo '<i class="icon-IMDb fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      case ('backstage'):
          if (!empty($active)):
            echo '<a target="blank" href="' . $redux_builder_ac['backstage-url'] . '">';
            echo '<i class="icon-Backstage fa-2x"></i>';
            echo '</a>';
          endif;
          break;
      }
    }
?>
