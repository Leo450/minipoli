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
function prsckie_tabs($product_data_tabs)

{
	$product_data_tabs['prsckie'] = [
		'label' => __("Perso Cookie", "woocommerce", "prsckie"),
		'target' => "prsckie_tab",
		'class' => ["show_if_simple"]
	];

	$product_data_tabs['prsckie'] = [
		'label' => __("Commande Max", "woocommerce", "prsckie"),
		'target' => "cmd_max_tab",
		'class' => ["show_if_simple"]
	];

	return $product_data_tabs;

}
add_filter("woocommerce_product_data_tabs", "prsckie_tabs");

/**
 * Add new admin product tab fields
 */
function prsckie_tab_fields()
{

	?>

	<div id="prsckie_tab" class="panel woocommerce_options_panel">

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

			woocommerce_wp_textarea_input([
				'id' => "_prsckie_required_message",
				'label' => __("Message si requis manquant", "prsckie"),
				'desc_tip' => "true",
				'description' => __("Message d'erreur affiché si l'utilisateur ne remplis pas un champ requis.", "prsckie")
			]);

			?>

		</div>

	</div>

	<div id="cmd_max_tab" class="panel woocommerce_options_panel">

		<div class="options_group">

			<?php

			woocommerce_wp_text_input([
				'id' => "_cmd_max_amount",
				'label' => __("Nombre de produit max", "prsckie"),
				'type' => 'number'
			]);

			?>

		</div>

	</div>

	<?php

}
add_action("woocommerce_product_data_panels", "prsckie_tab_fields");

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
	if(isset($_POST['_prsckie_required_message']) && !empty($_POST['_prsckie_required_message'])){
		update_post_meta($post_id, '_prsckie_required_message', esc_attr($_POST['_prsckie_required_message']));
	}

	if(isset($_POST['_cmd_max_amount']) && !empty($_POST['_cmd_max_amount'])){
		update_post_meta($post_id, '_cmd_max_amount', esc_attr($_POST['_cmd_max_amount']));
	}

}
add_action("woocommerce_process_product_meta_simple", "prsckie_save_product_data_fields");