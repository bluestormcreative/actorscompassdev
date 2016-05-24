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
    $opt_name = "redux_builder_ac_res";

    /**
     * ---> SET ARGUMENTS
     * All the possible arguments for Redux.
     * For full documentation on arguments, please refer to: https://github.com/ReduxFramework/ReduxFramework/wiki/Arguments
     * */

    $theme = wp_get_theme(); // For use with some settings. Not necessary.

    global $user_ID;

    $args = array(
        'class' => 'resume_options_panel',
        'templates_path'=> get_template_directory().'/redux/templates/panel',
        'opt_name' => 'redux_builder_ac_res',
        'dev_mode' => FALSE,
        'use_cdn' => TRUE,
        'display_name' => 'Edit Your Resume',
        'display_version' => '1.0.0',
        'page_title' => 'Resume Credits',
        'hide_expand' => TRUE,
        'open_expanded' => TRUE,
        'intro_text' => '<span class="view-desktop"><a class="button" href="/wp-admin/customize.php"><i class="fa fa-wrench"></i> Back to Customize</a> <a class="button" href="/wp-admin/"><i class="fa fa-tachometer"></i> Back to Dashboard</a> <a class="button" href="/" target="blank"><i class="fa fa-eye"></i> View your site</a></span><span class="view-mobile"><a class="button" href="/wp-admin/customize.php" target="blank"><i class="fa fa-wrench"></i> Back to Customize</a></span>',
        'footer_text' => '<span class="view-mobile"><a class="button" href="/wp-admin/customize.php"><i class="fa fa-wrench"></i> Back to Customize <i class="fa fa-chevron-right"></i></a> <a class="button" href="/wp-admin/"><i class="fa fa-tachometer"></i> Back to Dashboard <i class="fa fa-chevron-right"></i></a> <a class="button" href="/" target="blank"><i class="fa fa-eye"></i> View your site <i class="fa fa-chevron-right"></i></a></span>',
        'admin_bar' => TRUE,
        'menu_type' => 'menu',
        'menu_title' => 'Resume',
        'allow_sub_menu' => FALSE,
        //'page_parent_post_type' => 'your_post_type',
        'customizer' => FALSE,
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
        'show_import_export' => FALSE,
        'database' => 'options',
        'transient_time' => '3600',
        'network_sites' => TRUE,
    );


    Redux::setArgs( $opt_name, $args );

    /*
     * ---> END ARGUMENTS
     */


    /*
     *
     * ---> START SECTIONS
     *
     */



    Redux::setSection( $opt_name, array(
        'title' => __( 'Credits & Skills', 'redux-framework-resoptions' ),
        'id'    => 'creditsskills',
        'desc'  => __( 'Enter your credits and skills.', 'redux-framework-resoptions' ),
        'icon'  => 'el el-star',
        'fields'     => array(
            array(
                'id'       => 'resume-options',
                'type'     => 'media',
                'url'      => true,
                'mode'      => 'application',
                'placeholder' => 'No resume file uploaded',
                'title'    => __('Downloadable Resume PDF', 'redux-framework-resoptions'),
                'subtitle' => __('<span class="pro-tip"><i class="fa fa-thumbs-up"></i> PRO TIP: PDFs are the #1 way casting directors want to download your resume. <br><br>Don\'t know how to make a PDF? Check out our tutorial series <a href="http://actorscompass.com/how-to-format-your-acting-resume-like-a-pro-part-1/" target="blank">here</a></span>', 'redux-framework-resoptions'),
                'library_filter' => array(
                  'pdf',
                  'doc',
                  'docx'
                )
            ),

                  array(
                    'id'         => 'credits-options',
                    'type'       => 'repeater',
                    'title'      => __( 'Resume Credits', 'redux-framework-resoptions' ),
                    'subtitle'       => __( 'Add your best 5 credits', 'redux-framework-resoptions' ),
                    'group_values' => true, // Group all fields below within the repeater ID
                    'item_name' => 'credit', // Add a repeater block name to the Add and Delete buttons
                    'bind_title' => 'credit_title', // Bind the repeater block title to this field ID
                    //'static'     => 2, // Set the number of repeater blocks to be output
                    'limit' => 5, // Limit the number of repeater blocks a user can create
                    'sortable' => true, // Allow the users to sort the repeater blocks or not
                    'fields'     => array(
                          array(
                              'id'          => 'credit_title',
                              'type'        => 'text',
                              'placeholder' => __( 'Project Title', 'redux-framework-resoptions' ),
                          ),
                          array(
                              'id'          => 'role',
                              'type'        => 'text',
                              'placeholder' => __( 'Role', 'redux-framework-resoptions' ),
                          ),
                          array(
                              'id'          => 'producer',
                              'type'        => 'text',
                              'placeholder' => __( 'Producer / Director / Company', 'redux-framework-resoptions' ),
                          ),
                        )
                    ),

                    array(
                      'id'         => 'training-options',
                      'type'       => 'repeater',
                      'title'      => __( 'Training', 'redux-framework-resoptions' ),
                      'subtitle'       => __( 'Add up to 3 of your most important training credits', 'redux-framework-resoptions' ),
                      'group_values' => true, // Group all fields below within the repeater ID
                      'item_name' => 'training credit', // Add a repeater block name to the Add and Delete buttons
                      'bind_title' => 'class_technique', // Bind the repeater block title to this field ID
                      //'static'     => 2, // Set the number of repeater blocks to be output
                      'limit' => 3, // Limit the number of repeater blocks a user can create
                      'sortable' => true, // Allow the users to sort the repeater blocks or not
                      'fields'     => array(
                            array(
                                'id'          => 'class_technique',
                                'type'        => 'text',
                                'placeholder' => __( 'Class or Technique', 'redux-framework-resoptions' ),
                            ),
                            array(
                                'id'          => 'teacher',
                                'type'        => 'text',
                                'placeholder' => __( 'Teacher(s)', 'redux-framework-resoptions' ),
                            ),
                            array(
                                'id'          => 'school',
                                'type'        => 'text',
                                'placeholder' => __( 'School', 'redux-framework-resoptions' ),
                            ),
                          )
                      ),

            array(
                'id'       => 'skills-options',
                'type'     => 'textarea',
                'title'    => __('Skills:', 'redux-framework-resoptions'),
                'subtitle' => __('<span class="pro-tip"><i class="fa fa-thumbs-up"></i> PRO TIP: only put stuff here you can perform any time you\'re asked!</span>', 'redux-framework-resoptions'),
            ),
        )
    ) );

    /*
     * <--- END SECTIONS
     */
