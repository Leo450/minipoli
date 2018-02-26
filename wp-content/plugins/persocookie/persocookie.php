<?php
/**
 * Plugin Name: Perso Cookie
 * Description: In development ...
 * Version: 1.0.0
 * Author: Léo Clément
 * Text Domain: prsckie
 */

if(!defined("PRSCKIE_PLUGIN_PATH")){
	define("PRSCKIE_PLUGIN_PATH", substr(plugin_dir_path(__FILE__), 0, -1));
}
if(!defined("PRSCKIE_PLUGIN_URL")){
	define("PRSCKIE_PLUGIN_URL", substr(plugin_dir_url(__FILE__), 0, -1));
}







require PRSCKIE_PLUGIN_PATH . "/admin/product-data.php";
require PRSCKIE_PLUGIN_PATH . "/front/single-product.php";
