<?php

add_action("init", "minipoli_remove_action");
function minipoli_remove_action() {

	remove_action("woocommerce_after_shop_loop", "woocommerce_catalog_ordering", 10);
	remove_action("woocommerce_after_shop_loop", "woocommerce_result_count", 20);

	remove_action("woocommerce_before_shop_loop", "woocommerce_catalog_ordering", 10);
	remove_action("woocommerce_before_shop_loop", "woocommerce_result_count", 20);

}
