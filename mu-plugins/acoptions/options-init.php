<?php

    /**
     * For full documentation, please visit: http://docs.reduxframework.com/
     * For a more extensive sample-config file, you may look at:
     * https://github.com/reduxframework/redux-framework/blob/master/sample/sample-config.php
     */

    if ( ! class_exists( 'Redux' ) ) {
        return;
    }

    // This is your option name where all the Redux data is stored.
    $opt_name = "redux_builder_ac";

    /**
     * ---> SET ARGUMENTS
     * All the possible arguments for Redux.
     * For full documentation on arguments, please refer to: https://github.com/ReduxFramework/ReduxFramework/wiki/Arguments
     * */

    $theme = wp_get_theme(); // For use with some settings. Not necessary.

    $args = array(
        'templates_path'=> get_template_directory().'/redux/templates/panel',
        'opt_name' => 'redux_builder_ac',
        'dev_mode' => FALSE,
        'use_cdn' => TRUE,
        'display_name' => 'AC Options',
        'display_version' => '1.0.0',
        'page_title' => 'Options',
        'intro_text' => '',
        'footer_text' => '',
        'admin_bar' => TRUE,
        'menu_type' => 'menu',
        'menu_title' => 'Options',
        'allow_sub_menu' => TRUE,
        //'page_parent_post_type' => 'your_post_type',
        'customizer' => TRUE,
        'default_mark' => '*',
        'hints'                => array(
            'icon'          => 'el el-question-sign',
            'icon_position' => 'right',
            'icon_color'    => 'lightgray',
            'icon_size'     => 'normal',
            'tip_style'     => array(
                'color'   => 'light',
                'shadow'  => false,
                'rounded' => false,
                'style'   => 'bootstrap',
            ),
            'tip_position'  => array(
                'my' => 'top left',
                'at' => 'bottom right',
            ),
            'tip_effect'    => array(
                'show' => array(
                    'effect'   => 'slide',
                    'duration' => '500',
                    'event'    => 'mouseover',
                ),
                'hide' => array(
                    'effect'   => 'slide',
                    'duration' => '500',
                    'event'    => 'click mouseleave',
                ),
            ),
        ),
        'output' => TRUE,
        'output_tag' => TRUE,
        'settings_api' => TRUE,
        'cdn_check_time' => '1440',
        'compiler' => TRUE,
        'page_permissions' => 'manage_options',
        'save_defaults' => TRUE,
        'show_import_export' => TRUE,
        'database' => 'options',
        'transient_time' => '3600',
        'network_sites' => TRUE,
    );


    Redux::setArgs( $opt_name, $args );

    /*
     * ---> END ARGUMENTS
     */

    /*
     * ---> START HELP TABS
     */

    $tabs = array(
        array(
            'id'      => 'redux-help-tab-1',
            'title'   => __( 'Theme Information 1', 'admin_folder' ),
            'content' => __( '<p>This is the tab content, HTML is allowed.</p>', 'admin_folder' )
        ),
        array(
            'id'      => 'redux-help-tab-2',
            'title'   => __( 'Theme Information 2', 'admin_folder' ),
            'content' => __( '<p>This is the tab content, HTML is allowed.</p>', 'admin_folder' )
        )
    );
    Redux::setHelpTab( $opt_name, $tabs );

    // Set the help sidebar
    $content = __( '<p>This is the sidebar content, HTML is allowed.</p>', 'admin_folder' );
    Redux::setHelpSidebar( $opt_name, $content );


    /*
     * <--- END HELP TABS
     */


    /*
     *
     * ---> START SECTIONS
     *
     */



    Redux::setSection( $opt_name, array(
        'title' => __( 'My Stats', 'redux-framework-myoptions' ),
        'id'    => 'mystats',
        'icon'  => 'el el-adult',
        'fields'     => array(
          array(
              'id'       => 'name-options',
              'type'     => 'text',
              'title'    => __( '<i class="el el-adult"></i>&nbsp;&nbsp;&nbsp;Name:', 'redux-framework-myoptions' ),
              'subtitle' => __( '', 'redux-framework-myoptions' ),
              'default'  => '',
              'validate' => 'no_html',
              'hint' => array(
                  'content' => 'Your name will appear exactly as you enter it here.'
              ),
          ),
          array(
              'id'       => 'tagline-options',
              'type'     => 'text',
              'title'    => __( '<i class="el el-quotes"></i>&nbsp;&nbsp;&nbsp;Tagline:', 'redux-framework-myoptions' ),
              'subtitle' => __( '', 'redux-framework-myoptions' ),
              'desc'     => __( 'A catchphrase, quote, or fun saying that describes you or your work. <br><em>i.e."Quirky comic side-kick"</em>', 'redux-framework-myoptions' ),
              'default'  => '',
              'validate' => 'no_html',
          ),
          array(
              'id'       => 'phone-options',
              'type'     => 'text',
              'title'    => __( '<i class="el el-phone"></i>&nbsp;&nbsp;&nbsp;Phone Number:', 'redux-framework-myoptions' ),
              'subtitle' => __( '', 'redux-framework-myoptions' ),
              'default'  => '',
              'validate' => 'no_html',
          ),
          array(
              'id'       => 'email-options',
              'type'     => 'text',
              'title'    => __( '<i class="el el-envelope"></i>&nbsp;&nbsp;&nbsp;Email:', 'redux-framework-myoptions' ),
              'subtitle' => __( '', 'redux-framework-myoptions' ),
              'default'  => '',
              'validate' => 'email',
          ),
            array(
                'id'       => 'height-options',
                'type'     => 'text',
                'title'    => __( 'Height:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'default'  => '',
            ),
            array(
                'id'       => 'bodytype-options',
                'type'     => 'text',
                'title'    => __( 'Body Type:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'desc'     => __( '<em>Your build, i.e. petite, athletic, heavy, beach body. Stick to one word only.</em>', 'redux-framework-myoptions' ),
                'default'  => '',
            ),
            array(
                'id'       => 'hair-options',
                'type'     => 'text',
                'title'    => __( 'Hair Color:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'default'  => '',
            ),
            array(
                'id'       => 'eyes-options',
                'type'     => 'text',
                'title'    => __( 'Eye Color:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'default'  => '',
            )
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title' => __( 'Headshot, Reel, & Bio', 'redux-framework-myoptions' ),
        'id'    => 'myimage',
        'icon'  => 'el el-picture',
        'fields'     => array(
            array(
                'id'       => 'headshot-options',
                'type'     => 'media',
                'url'      => false,
                'title'    => __('Main Headshot', 'redux-framework-myoptions'),
                'subtitle' => __('', 'redux-framework-myoptions'),
                'default'  => array(
                    'url'=>'/wp-content/themes/AClite/img/avatar.jpg'
                ),
                'library_filter' => array(
                    'jpg',
                    'png',
                    'gif',
                    )
            ),
            array(
                'id'        => 'reel-options',
                'type'      => 'text',
                'validate'  => 'url',
                'title'     => __('Reel URL:', 'redux-framework-myoptions'),
                'desc'      =>__('Paste your YouTube or Vimeo reel link here.'),
            ),
            array(
                'id'       => 'bio-options',
                'type'     => 'textarea',
                'title'    => __('Bio (1 paragraph):', 'redux-framework-myoptions'),
                'desc'     => __('Pro Tip: Keep your bio short and sweet - list your most important accomplishments first.<br><em>Need a longer bio? Upgrade to our Pro level!</em>', 'redux-framework-myoptions'),
                'subtitle' => __('', 'redux-framework-myoptions')
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title' => __( 'Representation', 'redux-framework-myoptions' ),
        'id'    => 'representation',
        'desc'  => __( 'Enter your union & representation information.', 'redux-framework-myoptions' ),
        'icon'  => 'el el-briefcase',
        'fields'     => array(
            // array(
            //     'id'       => 'union-switch',
            //     'type'     => 'switch',
            //     'title'    => __('Union', 'redux-framework-myoptions'),
            //     'subtitle' => __('Are you a member of a union?', 'redux-framework-myoptions'),
            //     'default'  => false,
            //     'on'       => 'Yes',
            //     'off'      => 'No',
            // ),
            array(
                'id'       => 'union-section-start',
                'type'     => 'section',
                'indent'   => true,
            ),
            array(
                'id'       => 'union-select',
                // 'required'  => array(
                //     'union-switch' , '=' , '1',
                // ),
                'type'     => 'checkbox',
                'title'    => __('Union Membership', 'redux-framework-myoptions'),
                'subtitle' => __('Select the unions you belong to:', 'redux-framework-myoptions'),
                'desc'     => __('', 'redux-framework-myoptions'),
                'options'  => array(
                    'sag'  => 'Screen Actors Guild (SAG-AFTRA)',
                    'aea'  => 'Actors Equity Association (AEA)',
                    'agva'  => 'American Guild of Variety Artists (AGVA)',
                ),
                'default'  => array(
                    'sag' => '0',
                    'aea' => '0',
                    'agva' => '0',
                ),
            ),
            array(
                'id'       => 'union-section-end',
                'type'     => 'section',
                'indent'   => false,
            ),
            // array(
            //     'id'       => 'agent-switch',
            //     'type'     => 'switch',
            //     'title'    => __('Agent', 'redux-framework-myoptions'),
            //     'subtitle' => __('Do you have a primary agent/manager?', 'redux-framework-myoptions'),
            //     'default'  => false,
            //     'on'       => 'Yes',
            //     'off'      => 'No',
            // ),
            array(
                'id'       => 'agent-section-start',
                'type'     => 'section',
                'indent'   => true,
            ),
            array(
                'id'       => 'agent-name',
                'required'  => array(
                    'agent-switch' , '=' , '1',
                ),
                'type'     => 'text',
                'title'    => __( 'Agent/Manager Name:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'default'  => '',
            ),
            array(
                'id'       => 'agent-email',
                'required'  => array(
                    'agent-switch' , '=' , '1',
                ),
                'type'     => 'text',
                'title'    => __( 'Agent/Manager Email:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'default'  => '',
                'validate' => 'email',
            ),
            array(
                'id'       => 'agent-phone',
                'required'  => array(
                    'agent-switch' , '=' , '1',
                ),
                'type'     => 'text',
                'title'    => __( 'Agent/Manager Contact Number:', 'redux-framework-myoptions' ),
                'subtitle' => __( '', 'redux-framework-myoptions' ),
                'default'  => '',
                'validate' => 'no_html',
            ),
            array(
                'id'       => 'agent-section-end',
                'type'     => 'section',
                'indent'   => false,
            ),
        )
    ));




    Redux::setSection( $opt_name, array(
        'title' => __( 'Social & Professional Networks', 'redux-framework-myoptions' ),
        'id'    => 'socialnetworks',
        'desc'  => __( 'Enter your social network and professional profiles.', 'redux-framework-myoptions' ),
        'icon'  => 'el el-network',
        'fields'     => array(
            array(
                'id'        => 'social-options',
                'type'      => 'checkbox',
                'mode'      => 'checkbox',
                'title'     => __('Social Icons', 'redux-framework-myoptions'),
                'subtitle'  => __('Activate or deactivate social icons to show them on your site', 'redux-framework-myoptions'),
                'description'  => __('Note: Only the checked icons above will show up! Be sure to enter your profile links below.', 'redux-framework-myoptions'),
                'options'   => array(
                    'facebook' => 'Facebook',
                    'twitter' => 'Twitter',
                    'instagram' => 'Instagram',
                    'youtube' => 'YouTube',
                    'vimeo' => 'Vimeo',
                    'soundcloud' => 'Soundcloud',
                    'actorsaccess' => 'Actors Access',
                    'imdb' => 'IMDB',
                    'backstage' => 'Backstage',
                ),
                'default'   => array(
                    'facebook' => false,
                    'twitter' => false,
                    'instagram' => false,
                    'youtube' => false,
                    'vimeo' => false,
                    'soundcloud' => false,
                    'actorsaccess' => false,
                    'imdb' => false,
                    'backstage' => false,
                ),

            ),

            array(
              'id' => 'facebook-url',
              'type' => 'text',
              'icon'  => 'el el-adult',
              'title' => __('<i class="el el-facebook"></i>&nbsp;Facebook URL', 'redux-framework-myoptions'),
              'subtitle' => __('Enter your full Facebook link.', 'redux-framework-myoptions'),
              'description' => __('<em>Example: https://facebook.com/yourname</em>', 'redux-framework-myoptions'),
              'validate' => 'url',
            ),
            array(
              'id' => 'twitter-url',
              'type' => 'text',
              'title' => __('<i class="el el-twitter"></i>&nbsp;Twitter URL', 'redux-framework-myoptions'),
              'subtitle' => __('Enter your full Twitter link.', 'redux-framework-myoptions'),
              'description' => __('<em>Example: https://twitter.com/yourhandle</em>', 'redux-framework-myoptions'),
              'validate' => 'url',
            ),
            array(
              'id' => 'instagram-url',
              'type' => 'text',
              'title' => __('<i class="el el-instagram"></i>&nbsp;Instagram URL', 'redux-framework-myoptions'),
              'subtitle' => __('Enter your full Instagram link.', 'redux-framework-myoptions'),
              'description' => __('<em>Example: https://www.instagram.com/instagramname</em>', 'redux-framework-myoptions'),
              'validate' => 'url',
            ),
            array(
                'id' => 'youtube-url',
                'type' => 'text',
                'title' => __('<i class="el el-youtube"></i>&nbsp;YouTube URL', 'redux-framework-myoptions'),
                'subtitle' => __('Enter your full YouTube channel link.', 'redux-framework-myoptions'),
                'description' => __('<em>Example: https://www.youtube.com/user/yourchannelname</em>', 'redux-framework-myoptions'),
                'validate' => 'url',
            ),
            array(
                'id' => 'vimeo-url',
                'type' => 'text',
                'title' => __('<i class="el el-vimeo"></i>&nbsp;Vimeo URL', 'redux-framework-myoptions'),
                'subtitle' => __('Enter your full Vimeo link.', 'redux-framework-myoptions'),
                'description' => __('<em>Example: https://vimeo.com/user123456789</em>', 'redux-framework-myoptions'),
                'validate' => 'url',
            ),
            array(
                'id' => 'soundcloud-url',
                'type' => 'text',
                'title' => __('<i class="el el-soundcloud"></i>&nbsp;Soundcloud URL', 'redux-framework-myoptions'),
                'subtitle' => __('Enter your full Soundcloud link.', 'redux-framework-myoptions'),
                'description' => __('<em>Example: https://soundcloud.com/yoursoundcloud</em>', 'redux-framework-myoptions'),
                'validate' => 'url',
            ),
            array(
                'id' => 'actorsaccess-url',
                'type' => 'text',
                'title' => __('<i class="el el-fontsize"></i>&nbsp;Actors Access URL', 'redux-framework-myoptions'),
                'subtitle' => __('Enter your full Actors Access profile link.', 'redux-framework-myoptions'),
                'description' => __('<em>Example: http://resumes.actorsaccess.com/yourname</em>', 'redux-framework-myoptions'),
                'validate' => 'url',
            ),
            array(
                'id' => 'imdb-url',
                'type' => 'text',
                'title' => __('<i class="el el-film"></i>&nbsp;IMDB URL', 'redux-framework-myoptions'),
                'subtitle' => __('Enter your full IMDB profile link.', 'redux-framework-myoptions'),
                'description' => __('<em>Example: http://www.imdb.com/name/nm1234567</em>', 'redux-framework-myoptions'),
                'validate' => 'url',
            ),
            array(
                'id' => 'backstage-url',
                'type' => 'text',
                'title' => __('<i class="el el-star"></i>&nbsp;BackStage URL', 'redux-framework-myoptions'),
                'subtitle' => __('Enter your Backstage profile link.', 'redux-framework-myoptions'),
                'description' => __('<em>Example: http://www.backstage.com/yourname</em>', 'redux-framework-myoptions'),
                'validate' => 'url',
            ),


        ),
    ) );



    Redux::setSection( $opt_name, array(
        'title' => __( 'Design', 'redux-framework-myoptions' ),
        'id'    => 'design',
        'desc'  => __( 'Customize the design of your site.', 'redux-framework-myoptions' ),
        'icon'  => 'el el-brush',
        'validate' => 'color',
        'fields'     => array(
            array(
                'id'       => 'opt-palette-color',
                'type'     => 'palette',
                'title'    => __( 'Color Palette', 'redux-framework-myoptions' ),
                'subtitle' => __( 'Select the color palette for your site.', 'redux-framework-myoptions' ),
                'desc'     => __( 'Click on a palette above to select.', 'redux-framework-myoptions' ),
                'output'   => array(),
                'default'  => 'teal',
                'palettes' => array(
                    'teal' => array(
                        '#438D8A',
                        '#ffffff',
                        '#000000',
                    ),
                    'blackwhite' => array(
                        '#000000',
                        '#ffffff',
                        '#000000',
                    ),
                    'blue' => array(
                        '#027890',
                        '#D4EBE9',
                        '#4E4C4C',
                    ),
                    'pink' => array(
                        '#E94262',
                        '#F7F4F4',
                        '#3E4058',
                    ),
                    'purple' => array(
                        '#534456',
                        '#EDEFEA',
                        '#000000',
                    ),
                )
            ),
            array(
                'id'          => 'opt-typography',
                'type'        => 'select',
                'title'       => __('Fonts', 'redux-framework-myoptions'),
                'subtitle'    => __('Choose the fonts for your site', 'redux-framework-myoptions'),
                'default'     => 'fonts1',
                'options'     => array(
                    'fonts1' => 'Montserrat / Raleway',
                    'fonts2' => 'Oswald / Raleway',
                    'fonts3' => 'Lobster / Slabo',
                    'fonts4' => 'Lora / Lora',
                ),
            ),
        )
    ) );

    /*
     * <--- END SECTIONS
     */
