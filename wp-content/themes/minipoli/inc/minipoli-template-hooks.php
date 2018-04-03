<?php

/**
 * Functions hooked into storefront_header action
 *
 * @hooked storefront_skip_links                       - 0
 * @hooked storefront_social_icons                     - 10
 * @hooked storefront_site_branding                    - 20
 * @hooked storefront_secondary_navigation             - 30
 * @hooked storefront_product_search                   - 40
 * @hooked storefront_primary_navigation_wrapper       - 42
 * @hooked storefront_primary_navigation               - 50
 * @hooked storefront_header_cart                      - 60
 * @hooked storefront_primary_navigation_wrapper_close - 68
 */
add_action('storefront_header', 'minipoli_site_baseline', 21);
add_action('storefront_header', 'minipoli_header_banner', 22);
