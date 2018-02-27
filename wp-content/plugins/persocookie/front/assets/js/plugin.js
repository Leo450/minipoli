var Prsckie = function(prsckie_data){

	this.initVars(prsckie_data);
	this.initDOM();

};

Prsckie.prototype.initVars = function(prsckie_data)
{

	this.inputs_length = prsckie_data.inputs_length;
	this.inputs_placeholder = prsckie_data.inputs_placeholder;

	this.$thumbnail = jQuery(".woocommerce-product-gallery__image img.attachment-woocommerce_single");
	this.$thumbnail_container = this.$thumbnail.offsetParent();
	this.thumbnail_container_bounds = {
		width: this.$thumbnail_container.width(),
		height: this.$thumbnail_container.height()
	};

	this.$pif_input = jQuery("textarea[id^='alg_wc_pif_local_']");
	this.$pif_input_container = this.$pif_input.parents("table");

};
Prsckie.prototype.initDOM = function()
{

	this.$inputs = [];

	for(var i = 0; i < this.inputs_length.length; i++){
		var input_length = this.inputs_length[i];

		var input_placeholder = this.inputs_placeholder[i] || "";

		var $input = jQuery('<input type="text" id="prsckie_input_' + (i + 1) + '" name="prsckie_input_' + (i + 1) + '" size="' + input_length + '" maxlength="' + input_length + '" value="' + input_placeholder + '" style="top:' + (this.thumbnail_container_bounds.height / (this.inputs_length.length + 1)) * (i + 1) + 'px;left:' + this.$thumbnail.width() / 2 + 'px;">');

		this.bindInputFocusBehaviour($input);

		this.$inputs.push($input);

		this.$thumbnail_container.append($input);

	}

	this.$pif_input.removeAttr("required");
	//this.$pif_input_container.hide();

};
Prsckie.getInputIndex = function($input)
{

	return parseInt($input.attr("id").slice(-1)) - 1;

};
Prsckie.prototype.bindInputFocusBehaviour = function($input)
{

	var self = this;

	$input.focusin(function(){

		var current_text_is_placeholder = true;

		for(var i = 0; i < self.$inputs.length; i++){
			var $loop_input = self.$inputs[i];

			$loop_input.addClass("focus");

			var input_val = $loop_input.val();
			var input_placeholder = self.inputs_placeholder[i];

			if(input_val != input_placeholder){
				current_text_is_placeholder = false;
			}

		}

		if(current_text_is_placeholder){
			for(i = 0; i < self.$inputs.length; i++){
				self.$inputs[i].val("");
			}
		}

	});

	$input.focusout(function(){

		for(var i = 0; i < self.$inputs.length; i++){
			var $loop_input = self.$inputs[i];

			if($loop_input.val() != ""){
				$loop_input.removeClass("focus");
			}

		}

		self.updatePifInputVal();

	});

};
Prsckie.prototype.updatePifInputVal = function()
{

	var pif_input_val = "";

	for(var i = 0; i < this.$inputs.length; i++){
		var $loop_input = this.$inputs[i];

		var input_val = $loop_input.val();

		if(input_val != ""){

			if(i > 0){
				pif_input_val += "<br>";
			}

			pif_input_val += $loop_input.val();

		}

	}

	this.$pif_input.val(pif_input_val);

};







jQuery(document).ready(function(){

	var prsckie = new Prsckie(prsckie_data);

});