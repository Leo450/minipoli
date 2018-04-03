<?php

/**
 * Add scripts
 */
function schcat_front_enqueue_scripts()
{

	wp_register_style("schcat", SCHCAT_PLUGIN_URL . "/front/assets/css/schcat.css");
	wp_enqueue_style("schcat");

}
add_action("wp_enqueue_scripts", "schcat_front_enqueue_scripts");

/**
 * Display message on category page
 */
function schcat_category_message()
{

	$disabled_category_message = get_option("schcat_option__settings__disabled_category_message");

	if(empty($disabled_category_message)){
		return;
	}

	global $wp_query;

	if(is_product_category()){

		$category = $wp_query->get_queried_object();

		if(schcat_is_category_enabled($category->term_id) === false){

			?>
			<div class="schat-message">
				<?php
				_e($disabled_category_message, "schcat");
				?>
			</div>
			<?php

		}

	}

}
add_action("woocommerce_archive_description", "schcat_category_message");

function schcat_hide_category_products($wp_query)
{

	if(!is_product_category()){
		return $wp_query;
	}

	if(get_option("schcat_option__settings__hide_category_products") != "on"){
		return $wp_query;
	}

	$disabled_product_categories_ids = [];

	$category_id = $wp_query->get_queried_object_id();
	if(schcat_is_category_enabled($category_id) === false){
		$disabled_product_categories_ids[] = $category_id;
	}

	$children_product_categories_ids = get_term_children($category_id, "product_cat");
	foreach($children_product_categories_ids as $child_product_category_id){

		if(schcat_is_category_enabled($child_product_category_id) === false){
			$disabled_product_categories_ids[] = $child_product_category_id;
		}

	}

	$tax_query = $wp_query->tax_query->queries;
	$tax_query[] = [
		'taxonomy' => "product_cat",
		'field' => "term_id",
		'terms' => $disabled_product_categories_ids,
		'operator' => "NOT IN"
	];

	$wp_query->set('tax_query', $tax_query);

	return $wp_query;

}
add_action("pre_get_posts", "schcat_hide_category_products");

function hide_shop_products($wp_query)
{

	if(is_admin() || !is_post_type_archive("product") || !$wp_query->is_main_query()){
		return $wp_query;
	}

	if(get_option("schcat_option__settings__hide_category_products") != "on"){
		return $wp_query;
	}

	$product_categories = get_terms([
		"taxonomy" => "product_cat",
		"hide_empty" => false
	]);

	$disabled_product_categories_ids = [];

	foreach($product_categories as $product_category){

		if(schcat_is_category_enabled($product_category->term_id) === false){
			$disabled_product_categories_ids[] = $product_category->term_id;
		}

	}

	$tax_query = $wp_query->tax_query->queries;
	$tax_query[] = [
		'taxonomy' => "product_cat",
		'field' => "term_id",
		'terms' => $disabled_product_categories_ids,
		'operator' => "NOT IN"
	];

	$wp_query->set('tax_query', $tax_query);

	return $wp_query;

}
add_action("woocommerce_product_query", "hide_shop_products");

