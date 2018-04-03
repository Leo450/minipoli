<?php

/***** Load Stylesheets *****/

function minipoli_child_styles() {
	wp_enqueue_style('minipoli-parent-style', get_template_directory_uri() . '/style.css');
	wp_enqueue_style('minipoli-child-style', get_stylesheet_directory_uri() . '/style.css', array('minipoli-parent-style'), wp_get_theme()->get('Version'));
}
add_action('wp_enqueue_scripts', 'minipoli_child_styles');




require 'inc/minipoli-template-hooks.php';
require 'inc/minipoli-template-functions.php';

require 'inc/woocommerce/minipoli-woocommerce-template-hooks.php';
