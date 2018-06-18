<?php

/**
 * --------------------------------------
 * Child theme functions
 * --------------------------------------
 */

if(!function_exists('minipoli_header_banner')){
	function minipoli_header_banner() {

		if(!is_front_page()){
			return;
		}

		$homepage = get_page_by_title("biscuits");

		$thumbnail_id = get_post_thumbnail_id($homepage->ID);

		if(!$thumbnail_id){
			return;
		}

		$img_src = wp_get_attachment_image_url($thumbnail_id, "full");
		$img_meta = wp_get_attachment_metadata($thumbnail_id);

		?>

		<span class="clear"></span>

		<div class="homepage-banner">
			<img class="" src="<?php echo $img_src ?>">
		</div>

		<br>

		<script type="text/javascript">

			function updateBanner()
			{

				var $homepageBanner = jQuery('.homepage-banner');

				var containerWidth = jQuery('header > .col-full').width();
				var viewportWidth = jQuery(window).width();

				$homepageBanner
					.css('width', viewportWidth + "px")
					.css('margin-left', -1 * (viewportWidth - containerWidth) / 2);

			}

			jQuery(document).ready(function(){

				jQuery(window).resize(function(){

					updateBanner();

				});

				updateBanner();

			});

		</script>

		<?php

	}
}

if (!function_exists('minipoli_site_baseline')){
	/**
	 * Site baseline display
	 *
	 * @since  1.0.0
	 * @return void
	 */
	function minipoli_site_baseline() {

		$baseline = html_entity_decode(get_bloginfo('description', 'display'));

		$match_tags = preg_match_all('/[\{%]{2}(.*?)[%\}]{2}/', $baseline, $tags);

		if($match_tags != 0){

			foreach($tags[1] as $tag_index => $tag){

				$match_attributes = preg_match_all('/([a-z\-_]+)=["|\'](.+?)["|\']/', $tag, $attributes);

				if($match_attributes != 0){

					$text = "";
					$html_before = "";
					$html_after = "";

					for($i = 0; $i < count($attributes[1]); $i++){

						$attribute_name = $attributes[1][$i];
						$attribute_value = $attributes[2][$i];

						if($attribute_name == "category"){

							$category = get_term_by('slug', $attribute_value, "product_cat");
							$category_link = get_term_link($category->term_id, "product_cat");

							$html_before = '<a href="' . $category_link . '">';
							$html_after = '</a>';

						}

						if($attribute_name == "text"){
							$text = $attribute_value;
						}

					}

					$baseline = str_replace($tags[0][$tag_index], $html_before . $text . $html_after, $baseline);

				}

			}

		}

		?>

		<p class="site-description">
			<?php echo $baseline; ?>
		</p>

		<?php
	}
}

/**
 * --------------------------------------
 * Override parent theme functions
 * --------------------------------------
 */

/**
 * Display the site title or logo
 *
 * @since 2.1.0
 * @param bool $echo Echo the string or return it.
 * @return string
 */
function storefront_site_title_or_logo( $echo = true ) {
	if ( function_exists( 'the_custom_logo' ) && has_custom_logo() ) {
		$logo = get_custom_logo();
		$html = is_front_page() ? '<h1 class="logo">' . $logo . '</h1>' : $logo;
	} elseif ( function_exists( 'jetpack_has_site_logo' ) && jetpack_has_site_logo() ) {
		// Copied from jetpack_the_site_logo() function.
		$logo    = site_logo()->logo;
		$logo_id = get_theme_mod( 'custom_logo' ); // Check for WP 4.5 Site Logo
		$logo_id = $logo_id ? $logo_id : $logo['id']; // Use WP Core logo if present, otherwise use Jetpack's.
		$size    = site_logo()->theme_size();
		$html    = sprintf( '<a href="%1$s" class="site-logo-link" rel="home" itemprop="url">%2$s</a>',
			esc_url( home_url( '/' ) ),
			wp_get_attachment_image(
				$logo_id,
				$size,
				false,
				array(
					'class'     => 'site-logo attachment-' . $size,
					'data-size' => $size,
					'itemprop'  => 'logo'
				)
			)
		);

		$html = apply_filters( 'jetpack_the_site_logo', $html, $logo, $size );
	} else {
		$tag = is_front_page() ? 'h1' : 'div';

		$html = '<' . esc_attr( $tag ) . ' class="beta site-title"><a href="' . esc_url( home_url( '/' ) ) . '" rel="home">' . esc_html( get_bloginfo( 'name' ) ) . '</a></' . esc_attr( $tag ) .'>';
	}

	if ( ! $echo ) {
		return $html;
	}

	echo $html;
}

/**
 * Display the theme credit
 *
 * @since  1.0.0
 * @return void
 */
function storefront_credit() {
	?>
	<div class="site-info">
		<?php echo esc_html( apply_filters( 'storefront_copyright_text', $content = '&copy; ' . get_bloginfo( 'name' ) . ' ' . date( 'Y' ) ) ); ?>
		<div><small>Icons made by <a href="https://www.flaticon.com/authors/those-icons" title="Those Icons">Those Icons</a>, <a href="http://www.freepik.com" title="Freepik">Freepik</a> and <a href="https://www.flaticon.com/authors/yannick" title="Yannick">Yannick</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></small></div>

	</div><!-- .site-info -->
	<?php
}

/**
 * Register Footer Menu
 */
add_action('after_setup_theme', 'minipoli_register_menu');
function minipoli_register_menu() {
	register_nav_menu('footer', __('Footer Menu', 'minipoli'));
}

if ( ! function_exists( 'minipoli_footer_navigation' ) ) {
	/**
	 * Display Footer Navigation
	 *
	 * @since  1.0.0
	 * @return void
	 */
	function minipoli_footer_navigation() {
		if ( has_nav_menu( 'footer' ) ) {
			?>
			<div class="site-info">
				<nav class="footer-navigation" role="navigation" aria-label="<?php esc_html_e( 'Footer Navigation', 'storefront' ); ?>">
					<?php
					wp_nav_menu(
						array(
							'theme_location'	=> 'footer',
							'fallback_cb'		=> '',
						)
					);
					?>
				</nav><!-- #site-navigation -->
			</div>
			<?php
		}
	}
}

function minipoli_homepage_subcategories()
{

	if(!is_front_page()){
		return;
	}

	$categories = get_categories([
		'taxonomy' => 'product_cat'
	]);

	$first_level_categories_ids = [];
	$second_level_categories = [];

	foreach($categories as $category){
		if($category->parent == 0){
			$first_level_categories_ids[] = $category->term_id;
		}
	}

	foreach($categories as $category){
		if($category->parent != 0 && in_array($category->parent, $first_level_categories_ids)){
			$second_level_categories[] = $category;
		}
	}

	?>

	<div class="second-level-categories">
		<ul>
			<?php foreach($second_level_categories as $second_level_category){ ?>
				<li>
					<a href="<?php echo get_term_link($second_level_category->term_id); ?>"><?php echo $second_level_category->name; ?></a>
				</li>
			<?php } ?>
		</ul>
	</div>

	<?php

}

add_filter('woocommerce_show_page_title', 'minipoli_show_page_title');
function minipoli_show_page_title(){
	return false;
}