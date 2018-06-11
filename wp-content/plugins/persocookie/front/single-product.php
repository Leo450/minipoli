<?php

/**
 * Add scripts
 */
function prsckie_front_enqueue_scripts()
{

	if(!is_product()){
		return;
	}

	global $post;

	$prsckie_enabled = get_post_meta($post->ID, "_prsckie_enable");

	if(count($prsckie_enabled) == 0 || $prsckie_enabled[0] != "yes"){
		return;
	}

	$prsckie_data = [
		"inputs_length" => null,
		"inputs_placeholder" => null
	];

	$prsckie_inputs_length = get_post_meta($post->ID, "_prsckie_inputs_length");
	$prsckie_inputs_placeholder = get_post_meta($post->ID, "_prsckie_inputs_placeholder");

	if(count($prsckie_inputs_length) == 1){

		$prsckie_data['inputs_length'] = explode(",", $prsckie_inputs_length[0]);

		foreach($prsckie_data['inputs_length'] as $index => $input_length){
			$prsckie_data['inputs_length'][$index] = intval($input_length);
		}

	}

	if(count($prsckie_inputs_placeholder) == 1){

		$prsckie_data['inputs_placeholder'] = explode(",", $prsckie_inputs_placeholder[0]);

	}

	wp_register_style("persocookie-style", PRSCKIE_PLUGIN_URL . "/front/assets/css/persocookie.css");
	wp_enqueue_style("persocookie-style");

	wp_register_script("persocookie-plugin", PRSCKIE_PLUGIN_URL . "/front/assets/js/persocookie.js");
	wp_localize_script("persocookie-plugin", "prsckie_data", $prsckie_data);
	wp_enqueue_script("persocookie-plugin");

}
function prsckie_front_enqueue_cmd_max_scripts()
{

	if(!is_product() && !is_cart()){
		return;
	}

	wp_register_style("cmd-max-style", PRSCKIE_PLUGIN_URL . "/front/assets/css/cmd-max.css");
	wp_enqueue_style("cmd-max-style");

	/*wp_register_script("cmd-max-script", PRSCKIE_PLUGIN_URL . "/front/assets/js/cmd-max.js");
	wp_enqueue_script("cmd-max-script");*/

}

function prsckie_single_product_quantity_filter($args)
{
	$cmd_max_amount = get_post_meta($args['product_id'], "_cmd_max_amount");

	if(count($cmd_max_amount) == 0 || $cmd_max_amount[0] == 0){
		return $args;
	}

	$args['_cmd_max_amount'] = $cmd_max_amount[0];

	return $args;

}

add_filter("woocommerce_single_product_quantity", "prsckie_single_product_quantity_filter");

add_action("wp_enqueue_scripts", "prsckie_front_enqueue_scripts");
add_action("wp_enqueue_scripts", "prsckie_front_enqueue_cmd_max_scripts");
