<?php

/**
 * Add scripts
 */
function schcat_admin_enqueue_scripts($hook)
{

	if($hook != "toplevel_page_schcat_page__admin_menu"){
		return;
	}

	wp_register_style("jquery-ui-datepicker", SCHCAT_PLUGIN_URL . "/lib/jquery-ui-datepicker/jquery-ui.min.css");
	wp_enqueue_style("jquery-ui-datepicker");

	wp_register_script("jquery-ui-datepicker", SCHCAT_PLUGIN_URL . "/lib/jquery-ui-datepicker/jquery-ui.min.js");
	wp_enqueue_script("jquery-ui-datepicker");
	wp_register_script("schcat-init-datepicker", SCHCAT_PLUGIN_URL . "/admin/assets/js/init-datepicker.js");
	wp_enqueue_script("schcat-init-datepicker");
	wp_register_script("schcat-category-selector", SCHCAT_PLUGIN_URL . "/admin/assets/js/category-selector.js");
	wp_enqueue_script("schcat-category-selector");

}
add_action("admin_enqueue_scripts", "schcat_admin_enqueue_scripts");

/**
 * -----------------------------
 * Global functions
 * -----------------------------
 */

function schcat_get_request_current_category_id()
{

	$product_categories = get_terms([
		"taxonomy" => "product_cat",
		"hide_empty" => false
	]);

	if(isset($_GET['cat_ID']) && !empty($_GET['cat_ID'])){

		foreach($product_categories as $product_category){

			if($product_category->term_id == $_GET['cat_ID']){
				return $product_category->term_id;
			}

		}

	}

	return $product_categories[0]->term_id;

}

function schcat_get_current_category_id()
{

	if(!defined("SCHCAT_CURRENT_CATEGORY_ID")){
		define("SCHCAT_CURRENT_CATEGORY_ID", schcat_get_request_current_category_id());
	}

	return SCHCAT_CURRENT_CATEGORY_ID;

}

function schcat_get_option_group()
{

	return "schcat_option_group__category_" . schcat_get_current_category_id() . "_dates";

}

function schcat_get_option_name($setting)
{

	return "schcat_option__category_" . schcat_get_current_category_id() . "_dates__" . $setting;

}

function schcat_update_products_stock_status($new_value, $old_value)
{

	if(get_option("schcat_option__settings__update_products_stock") != "on"){
		return $new_value;
	}

	$is_category_enabled = schcat_is_category_enabled(schcat_get_current_category_id());

	if($is_category_enabled === null){
		return $new_value;
	}

	$products = new WP_Query([
		'post_type' => "product",
		'posts_per_page' => -1,
		'tax_query' => [
			[
				'taxonomy' => 'product_cat',
				'field' => 'term_id',
				'terms' => schcat_get_current_category_id(),
				'operator' => 'IN'
			]
		]
	]);

	foreach($products->posts as $product_post){

		$wc_product = wc_get_product($product_post);

		$wc_product->set_stock_status(($is_category_enabled === true)? "instock" : "outofstock");
		$wc_product->save();

	}

	return $new_value;

}
add_action("pre_update_option_" . schcat_get_option_name("date_start"), "schcat_update_products_stock_status", 10, 2);

/**
 * -----------------------------
 * Init options
 * -----------------------------
 */

function schcat_init_admin_options()
{

	$option_group__category_dates = schcat_get_option_group();

	if(get_option($option_group__category_dates) == false){
		add_option($option_group__category_dates);
	}
	if(get_option("schcat_option_group__settings") == false){
		add_option("schcat_option_group__settings");
	}



	add_settings_section(
		"schcat_section__settings",
		__("Réglages", "schcat"),
		null,
		"schcat_option_group__settings"
	);
	add_settings_section(
		"schcat_section__category_selector",
		__("Réglages de categorie", "schcat"),
		null,
		"schcat_option_group__category_selector"
	);
	add_settings_section(
		"schcat_section__category_dates",
		"Dates",
		null,
		$option_group__category_dates
	);



	add_settings_field(
		"schcat_option__settings__remove_menu_item",
		__("Retirer les catégories du menu", "schcat"),
		"schcat_renderer__option__settings__remove_menu_item",
		"schcat_option_group__settings",
		"schcat_section__settings"
	);
	add_settings_field(
		"schcat_option__settings__update_products_stock",
		__("Mettre à jour l'état du stock des produits", "schcat"),
		"schcat_renderer__option__settings__update_products_stock",
		"schcat_option_group__settings",
		"schcat_section__settings"
	);
	add_settings_field(
		"schcat_option__settings__hide_category_products",
		__("Cacher les produits", "schcat"),
		"schcat_renderer__option__settings__hide_category_products",
		"schcat_option_group__settings",
		"schcat_section__settings"
	);
	add_settings_field(
		"schcat_option__settings__disabled_category_message",
		__("Message pour une catégorie désactivée", "schcat"),
		"schcat_renderer__option__settings__disabled_category_message",
		"schcat_option_group__settings",
		"schcat_section__settings"
	);



	add_settings_field(
		"schcat_option__category_selector",
		__("Sélèctionnez une catégorie", "schcat"),
		"schcat_renderer__option__category_selector",
		"schcat_option_group__category_selector",
		"schcat_section__category_selector"
	);



	add_settings_field(
		schcat_get_option_name("date_start"),
		__("Date début", "schcat"),
		"schcat_renderer__option__category_dates__date_start",
		$option_group__category_dates,
		"schcat_section__category_dates"
	);
	add_settings_field(
		schcat_get_option_name("date_end"),
		__("Date fin", "schcat"),
		"schcat_renderer__option__category_dates__date_end",
		$option_group__category_dates,
		"schcat_section__category_dates"
	);

	register_setting("schcat_option_group__settings", "schcat_option__settings__remove_menu_item", ['type' => "boolean"]);
	register_setting("schcat_option_group__settings", "schcat_option__settings__update_products_stock", ['type' => "boolean"]);
	register_setting("schcat_option_group__settings", "schcat_option__settings__hide_category_products", ['type' => "boolean"]);
	register_setting("schcat_option_group__settings", "schcat_option__settings__disabled_category_message");
	register_setting($option_group__category_dates, schcat_get_option_name("date_start"));
	register_setting($option_group__category_dates, schcat_get_option_name("date_end"));

}
add_action("admin_init", "schcat_init_admin_options");

function schcat_renderer__option__settings__remove_menu_item()
{

	$option_value = get_option("schcat_option__settings__remove_menu_item");

	?>

	<input type="checkbox" name="schcat_option__settings__remove_menu_item" <?php checked($option_value, "on"); ?>>
	<p class="description"><?php _e("Cache les catégories non disponibles dans le menu principal.", "schcat") ?></p>

	<?php

}

function schcat_renderer__option__settings__update_products_stock()
{

	$option_value = get_option("schcat_option__settings__update_products_stock");

	?>

	<input type="checkbox" name="schcat_option__settings__update_products_stock" <?php checked($option_value, "on"); ?>>
	<p class="description"><?php _e("L'état du stock de tous les produits d'une catégorie sera modifié pour correspondre à la disponibilité d'une catégorie à la date d'aujourd'hui lorsque les dates de disponibilité de la catégorie seront mises à jour.", "schcat") ?></p>

	<?php

}

function schcat_renderer__option__settings__hide_category_products()
{

	$option_value = get_option("schcat_option__settings__hide_category_products");

	?>

	<input type="checkbox" name="schcat_option__settings__hide_category_products" <?php checked($option_value, "on"); ?>>
	<p class="description"><?php _e("Cache les produits d'une catégorie non disponible.", "schcat") ?></p>

	<?php

}

function schcat_renderer__option__settings__disabled_category_message()
{

	$option_value = get_option("schcat_option__settings__disabled_category_message");

	?>

	<textarea name="schcat_option__settings__disabled_category_message" id="schcat_option__settings__disabled_category_message"><?php echo $option_value ?></textarea>
	<p class="description"><?php _e("Message affiché sous le titre d'une catégorie non disponible. Laisser vide pour ne pas afficher de message.", "schcat") ?></p>

	<?php

}

function schcat_renderer__option__category_selector()
{

	$product_categories = get_terms([
		"taxonomy" => "product_cat",
		"hide_empty" => false
	]);

	?>

	<select name="cat_ID" id="cat_ID">

		<?php foreach($product_categories as $product_category){ ?>

			<option value="<?php echo $product_category->term_id ?>" <?php selected($product_category->term_id, schcat_get_current_category_id()) ?>><?php echo $product_category->name ?></option>

		<?php } ?>

	</select>

	<?php

}

function schcat_renderer__option__category_dates__date_start()
{

	$input_name = schcat_get_option_name("date_start");
	$option_value = get_option($input_name);

	?>

	<input class="schcat-datepicker" type="text" name="<?php echo $input_name ?>" value="<?php echo $option_value ?>">

	<?php

}

function schcat_renderer__option__category_dates__date_end()
{

	$input_name = schcat_get_option_name("date_end");
	$option_value = get_option($input_name);

	?>

	<input class="schcat-datepicker" type="text" name="<?php echo $input_name ?>" value="<?php echo $option_value ?>">

	<?php

}

/**
 * Create menu
 */
function schcat_create_admin_menu()
{

	add_menu_page(
		"Schedule Category",
		"Schedule Category",
		"administrator",
		"schcat_page__admin_menu",
		"schcat_renderer__page__admin_menu"
	);

}
add_action("admin_menu", "schcat_create_admin_menu");

function schcat_renderer__page__admin_menu()
{

	?>

	<div class="wrap">

		<form action="options.php?cat_ID=<?php echo schcat_get_current_category_id() ?>" method="post">

			<?php

			settings_fields("schcat_option_group__settings");
			do_settings_sections("schcat_option_group__settings");
			submit_button();

			?>

		</form>

		<form action="" id="schcat-category-form">

			<?php foreach($_GET as $name => $value){

				if($name == "cat_ID"){
					continue;
				}

				?>

				<input type="hidden" name="<?php echo $name ?>" value="<?php echo $value ?>">

			<?php } ?>

			<?php

			do_settings_sections("schcat_option_group__category_selector");

			?>

		</form>

		<?php

		$option_group__category_dates = schcat_get_option_group();

		?>

		<form action="options.php?cat_ID=<?php echo schcat_get_current_category_id() ?>" method="post">

			<?php

			settings_fields($option_group__category_dates);
			do_settings_sections($option_group__category_dates);
			submit_button();

			?>

		</form>

	</div>

<?php }
