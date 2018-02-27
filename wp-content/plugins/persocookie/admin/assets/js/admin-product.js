var $prsckie_product_panel,
	$pif_postbox;



function hide_pif_postbox()
{

	jQuery("span:contains('Product Input Fields Total Number')").parents(".postbox").hide();
	$pif_postbox.hide();

}
function init_pif_postbox_data()
{

	$pif_postbox.find("input#alg_wc_pif_required_local_1").prop("checked", true);
	$pif_postbox.find("textarea#alg_wc_pif_title_local_1").val("Texte:<br>");

	sync_enable_checkboxes();
	sync_child_inputs();

}
function sync_enable_checkboxes()
{

	$pif_postbox.find("input#alg_wc_pif_enabled_local_1").prop("checked", (jQuery("#product-type").val() == "simple" && $prsckie_product_panel.find("input#_prsckie_enable").is(":checked")));

}
function sync_child_inputs()
{

	var $prsckie_required_message = $prsckie_product_panel.find("textarea#_prsckie_required_message");
	if($prsckie_required_message.val() == ""){
		$pif_postbox.find("textarea#alg_wc_pif_required_message_local_1").val("Vous devez entrer un texte de personnalisation pour commander ce produit.");
	}

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
function bind_child_inputs()
{

	$prsckie_product_panel.find("textarea#_prsckie_required_message").change(function(){

		$pif_postbox.find("textarea#alg_wc_pif_required_message_local_1").val($(this).val());

	});

}





jQuery(document).ready(function(){

	$prsckie_product_panel = jQuery(".woocommerce_options_panel#prsckie_product_data");
	$pif_postbox = jQuery("span:contains('Product Input Field #1')").parents(".postbox");



	hide_pif_postbox();
	init_pif_postbox_data();

	bind_enable();
	bind_child_inputs();

});
