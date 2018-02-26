<?php

/**
 * Add scripts
 */
function schcat_admin_enqueue_scripts($hook)
{

	if($hook != "toplevel_page_schcat_admin_menu_page"){
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

function schcat_get_current_category_id()
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

function schcat_get_option_group()
{

	return "schcat_dates_cat_" . SCHCAT_CURRENT_CATEGORY_ID;

}

function schcat_get_field_name($setting)
{

	return schcat_get_option_group() . "_" . $setting;

}

/**
 * -----------------------------
 * Init options
 * -----------------------------
 */

function schcat_init_current_category()
{

	if(!defined("SCHCAT_CURRENT_CATEGORY_ID")){
		define("SCHCAT_CURRENT_CATEGORY_ID", schcat_get_current_category_id());
	}

}
add_action("admin_init", "schcat_init_current_category");

function schcat_init_admin_options()
{

	$option_group = schcat_get_option_group();

	if(get_option($option_group) == false){
		add_option($option_group);
	}



	add_settings_section(
		"schcat_category_section",
		"Category",
		"schcat_category_section_renderer",
		"schcat_category_page"
	);

	add_settings_field(
		"schcat_category_field",
		"Select a category",
		"schcat_category_field_renderer",
		"schcat_category_page",
		"schcat_category_section"
	);



	add_settings_section(
		"schcat_dates_section",
		"Dates",
		"schcat_dates_section_renderer",
		$option_group
	);

	add_settings_field(
		schcat_get_field_name("date_start"),
		"Date start",
		"schcat_settings_field_renderer__date_start",
		$option_group,
		"schcat_dates_section"
	);

	add_settings_field(
		schcat_get_field_name("date_end"),
		"Date end",
		"schcat_settings_field_renderer__date_end",
		$option_group,
		"schcat_dates_section"
	);

	register_setting($option_group, schcat_get_field_name("date_start"));
	register_setting($option_group, schcat_get_field_name("date_end"));

}
add_action("admin_init", "schcat_init_admin_options");

function schcat_dates_section_renderer()
{

	?>



	<?php

}

function schcat_category_section_renderer()
{

	?>



	<?php

}

function schcat_category_field_renderer()
{

	$product_categories = get_terms([
		"taxonomy" => "product_cat",
		"hide_empty" => false
	]);

	?>

	<select name="cat_ID" id="cat_ID">

		<?php foreach($product_categories as $product_category){ ?>

			<option value="<?php echo $product_category->term_id ?>" <?php selected($product_category->term_id, SCHCAT_CURRENT_CATEGORY_ID) ?>><?php echo $product_category->name ?></option>

		<?php } ?>

	</select>

	<?php

}

function schcat_settings_field_renderer__date_start()
{

	$option = get_option(schcat_get_field_name("date_start"));

	?>

	<input class="schcat-datepicker" type="text" name="<?php echo schcat_get_field_name("date_start") ?>" value="<?php echo $option ?>">

	<?php

}

function schcat_settings_field_renderer__date_end()
{

	$option = get_option(schcat_get_field_name("date_end"));

	?>

	<input class="schcat-datepicker" type="text" name="<?php echo schcat_get_field_name("date_end") ?>" value="<?php echo $option ?>">

	<?php

}

/**
 * Create menu
 */
function schcat_create_admin_menu()
{

	add_menu_page(
		"schcat_admin_menu_page",
		"SchCat",
		"administrator",
		"schcat_admin_menu_page",
		"schcat_admin_menu_page_renderer"
	);

}
add_action("admin_menu", "schcat_create_admin_menu");

function schcat_admin_menu_page_renderer()
{

	?>

	<div class="wrap">

		<form action="" id="schcat-category-form">

			<?php foreach($_GET as $name => $value){

				if($name == "cat_ID"){
					continue;
				}

				?>

				<input type="hidden" name="<?php echo $name ?>" value="<?php echo $value ?>">

			<?php } ?>

			<?php

			do_settings_sections("schcat_category_page");

			?>

		</form>

		<?php

		$option_group = schcat_get_option_group();

		?>

		<form action="options.php?cat_ID=<?php echo SCHCAT_CURRENT_CATEGORY_ID ?>" method="post">

			<?php

			settings_fields($option_group);
			do_settings_sections($option_group);
			submit_button();

			?>

		</form>

	</div>

<?php }
