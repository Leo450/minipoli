<?php

/**
 * Add scripts
 */
function prsckie_admin_enqueue_scripts($hook)
{

	if($hook != "post.php"){
		return;
	}

	wp_register_script("prsckie-admin-product-script", PRSCKIE_PLUGIN_URL . "/admin/assets/js/admin-product.js");
	wp_enqueue_script("prsckie-admin-product-script");

}
add_action("admin_enqueue_scripts", "prsckie_admin_enqueue_scripts");



/**
 * Add new admin product tab
 */
function prsckie_product_data_tab($product_data_tabs)

{
	$product_data_tabs['prsckie'] = [
		'label' => __("Perso Cookie", "woocommerce", "prsckie"),
		'target' => "prsckie_product_data",
		'class' => ["show_if_simple"]
	];

	return $product_data_tabs;

}
add_filter("woocommerce_product_data_tabs", "prsckie_product_data_tab");

/**
 * Add new admin product tab fields
 */
function prsckie_product_data_fields()
{

	?>

	<div id="prsckie_product_data" class="panel woocommerce_options_panel">

		<div class="options_group">

			<?php

			woocommerce_wp_checkbox([
				'id' => "_prsckie_enable",
				'label' => __("Activer", "prsckie")
			]);

			woocommerce_wp_text_input([
				'id' => "_prsckie_inputs_length",
				'label' => __("Longueur des champs", "prsckie"),
				'desc_tip' => "true",
				'description' => __("Nombre de caractère par champ séparés par des virgules (ex: \"10,7\").", "prsckie")
			]);

			woocommerce_wp_text_input([
				'id' => "_prsckie_inputs_placeholder",
				'label' => __("Texte des champs", "prsckie"),
				'desc_tip' => "true",
				'description' => __("Texte initial des champs avant saisie de l'utilisateur.", "prsckie")
			]);

			?>

		</div>

	</div>

	<?php

}
add_action("woocommerce_product_data_panels", "prsckie_product_data_fields");

/**
 * Save new admin product tab fields data
 */
function prsckie_save_product_data_fields($post_id)
{

	if(isset($_POST['_prsckie_enable']) && !empty($_POST['_prsckie_enable'])){
		update_post_meta($post_id, '_prsckie_enable', esc_attr($_POST['_prsckie_enable']));
	}
	if(isset($_POST['_prsckie_inputs_length']) && !empty($_POST['_prsckie_inputs_length'])){
		update_post_meta($post_id, '_prsckie_inputs_length', esc_attr($_POST['_prsckie_inputs_length']));
	}
	if(isset($_POST['_prsckie_inputs_placeholder']) && !empty($_POST['_prsckie_inputs_placeholder'])){
		update_post_meta($post_id, '_prsckie_inputs_placeholder', esc_attr($_POST['_prsckie_inputs_placeholder']));
	}

}
add_action("woocommerce_process_product_meta_simple", "prsckie_save_product_data_fields");