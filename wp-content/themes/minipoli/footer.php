<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package storefront
 */

?>

</div><!-- .col-full -->
</div><!-- #content -->

<?php do_action( 'storefront_before_footer' ); ?>

<footer id="colophon" class="site-footer" role="contentinfo">
	<div class="footer-top">
		<div class="col-full">

			<div class="rea">
				<div class="col-3">
					<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/rea1.png"; ?>" alt="Paiement sécurisé">
					<p>Paiement sécurisé</p>
				</div>
				<div class="col-3">
					<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/rea2.png"; ?>" alt="Livraison rapide">
					<p>Livraison rapide</p>
				</div>
				<div class="col-3">
					<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/rea3.png"; ?>" alt="Fabrication artisanale">
					<p>Fabrication artisanale</p>
				</div>
				<div class="col-3">
					<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/rea4.png"; ?>" alt="Contactez-nous du lundi au vendredi de 9h à 18h au ...">
					<p>Contactez-nous du lundi au vendredi de 9h à 18h au ...</p>
				</div>
				<div class="clear"></div>
			</div>

		</div><!-- .col-full -->
	</div>

	<div class="col-full">

		<div class="rs">

			<p>Suivez nous sur ...</p>

			<a href="#">
				<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/icon_facebook_black.png"; ?>" alt="facebook">
			</a>
			<a href="#">
				<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/icon_twitter_black.png"; ?>" alt="twitter">
			</a>
			<a href="#">
				<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/icon_pinterest_black.png"; ?>" alt="pinterest">
			</a>
			<a href="#">
				<img src="<?php echo get_stylesheet_directory_uri() . "/assets/img/icon_instagram_black.png"; ?>" alt="instagram">
			</a>

		</div>

		<?php
		/**
		 * Functions hooked in to storefront_footer action
		 *
		 * @hooked storefront_footer_widgets - 10
		 * @hooked storefront_credit         - 20
		 */
		do_action( 'storefront_footer' ); ?>
	</div>

</footer><!-- #colophon -->

<?php do_action( 'storefront_after_footer' ); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
