var $prsckie_product_tab,
	$prsckie_product_panel,
	$pif_postbox;



function hide_pif_postbox()
{

	jQuery("span:contains('Product Input Fields Total Number')").parents(".postbox").hide();
	$pif_postbox.hide();

}
function init_pif_postbox_data()
{

	$pif_postbox.find("input#alg_wc_pif_required_local_1").prop("checked", true);

	sync_enable_checkboxes();

}
function sync_enable_checkboxes()
{

	$pif_postbox.find("input#alg_wc_pif_enabled_local_1").prop("checked", (jQuery("#product-type").val() == "simple" && $prsckie_product_panel.find("input#_prsckie_enable").is(":checked")));

}
function bind_enable()
{

	$prsckie_product_panel.find("input#_prsckie_enable").change(function(){

		sync_enable_checkboxes();

	});

	jQuery("#product-type").change(function(){

		sync_enable_checkboxes();

	});

}





jQuery(document).ready(function(){

	$prsckie_product_panel = jQuery(".woocommerce_options_panel#prsckie_product_data");
	$pif_postbox = jQuery("span:contains('Product Input Field #1')").parents(".postbox");



	hide_pif_postbox();
	init_pif_postbox_data();

	bind_enable();

});
