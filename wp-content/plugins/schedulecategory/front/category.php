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
function minipoli_schcat_message()
{

	global $wp_query;

	if(is_product_category()){

		$category = $wp_query->get_queried_object();
		$category_date_start_option = get_option("schcat_dates_cat_" . $category->term_id . "_date_start");
		$category_date_end_option = get_option("schcat_dates_cat_" . $category->term_id . "_date_end");

		if(empty($category_date_start_option) || empty($category_date_end_option)){
			return;
		}

		$now = new DateTime("now");
		$date_start = DateTime::createFromFormat("d-m-Y", $category_date_start_option);
		$date_end = DateTime::createFromFormat("d-m-Y", $category_date_end_option);

		if($now < $date_start || $now > $date_end){

			?>
			<div class="schat-message">
				<?php
				_e("Encore un peu de patience ... Arrive bientôt", "schcat");
				?>
			</div>
			<?php

		}

	}

}
add_action("woocommerce_before_shop_loop", "minipoli_schcat_message", 1);
