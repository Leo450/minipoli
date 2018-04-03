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

	wp_register_style("prsckie-style", PRSCKIE_PLUGIN_URL . "/front/assets/css/single-product.css");
	wp_enqueue_style("prsckie-style");

	wp_register_script("prsckie-plugin", PRSCKIE_PLUGIN_URL . "/front/assets/js/persocookie.js");
	wp_localize_script("prsckie-plugin", "prsckie_data", $prsckie_data);
	wp_enqueue_script("prsckie-plugin");

}
add_action("wp_enqueue_scripts", "prsckie_front_enqueue_scripts");
