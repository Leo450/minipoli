<?php

function schcat_condition_menu_item_display($menu_items)
{

	foreach($menu_items as $index => $menu_item){

		if($menu_item->object == "product_cat" && schcat_is_category_enabled($menu_item->object_id) === false){
			unset($menu_items[$index]);
		}

	}

	return $menu_items;

}
if(get_option("schcat_option__settings__remove_menu_item") == "on"){
	add_filter('wp_nav_menu_objects', 'schcat_condition_menu_item_display');
}