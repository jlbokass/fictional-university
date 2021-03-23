<?php

require  get_theme_file_path('/inc/search-route.php');

function university_custom_rest() {
    register_rest_field('post', 'authorName', array(
            'get_callback' => function() {return get_the_author();}
    ));
}
add_action('rest_api_init', 'university_custom_rest');

function pageBanner($args = NULL) {
    // php logic live here

    if (!$args['title']) {
        $args['title'] = get_the_title();
    }

    if (!$args['subtitle']) {
        $args['subtitle'] = get_field('page_banner_subtitle');
    }

    if (!$args['photo']) {

        if (get_field('page_banner_background_image') && !is_archive() AND !is_home()) {

            $args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];

        } else {

            $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
        }

        // $args['photo'] = get_field('page_banner_subtitle');
    }

    ?>
    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(
        <?php
        //$pageBannerImage = get_field('page_banner_background_image');
        //echo $pageBannerImage['sizes']['pageBanner'];
        echo $args['photo'];
        ?>);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?= $args['title'] ?></h1>
            <div class="page-banner__intro">
                <p><?= $args['subtitle'] ?></p>
            </div>
        </div>
    </div>

<?php
}


// wp_enqueue_style() : allow us to charge css
// get_stylesheet_uri() : refer to style.css
// university_main_styles : the name that refer our css
function university_files() {
    // wp_enqueue_script('main-university-js', get_theme_file_uri('/js/scripts-bundled.js'), NULL, '1.0', true);
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

    wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js?key=AIzaSyADGZahdIYITB1FVq6mdcwLEABJjqkRipw', NULL, '1.0', true);

    // wp_enqueue_style('university_main_styles', get_stylesheet_uri());
    if (strstr($_SERVER['SERVER_NAME'], 'fictional-university')) {
        wp_enqueue_script('main-university-js', 'http://localhost:3000/bundled.js', NULL, '1.0', true);
    } else {
        wp_enqueue_script('our-vendors-js', get_theme_file_uri('/bundled-asset/vendor.js'), NULL, '1.0', true);
        wp_enqueue_script('main-university-js', get_theme_file_uri('/bundled-asset/scripts.js'), NULL, '1.0', true);
        wp_enqueue_style('our-main-styles', get_theme_file_uri('/bundled-assets/styles.a7c41baec5d24e996380.css'));
    }
    wp_enqueue_script('main-university-js', 'http://localhost:3000/bundled.js', NULL, '1.0', true);

    wp_localize_script('main-university-js', 'universityData', array(
            'root_url' => get_site_url()
    ));
}
add_action('wp_enqueue_scripts', 'university_files'); // wp_enqueue_scripts : load css and js

// Add title to the pages
function university_features() {
    /*
    register_nav_menu('headerMenuLocation', 'Header Menu Location');
    register_nav_menu('footerLocationOne', 'Footer Location One');
    register_nav_menu('footerLocationTwo', 'Footer Location Two');
    */
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professorLandscape', 400, 260, true);
    add_image_size('professorPortrait', 480, 650, true);
    add_image_size('pageBanner', 1500, 350, true);

}
add_action('after_setup_theme', 'university_features');

/*
function university_post_types(){
    register_post_type('event', array(
        'public' => true,
        'labels' => array(
            'name' => 'Events'
        ),
        'menu_icon' => 'dashicons-calendar'
    ));
}
add_action('init', 'university_post_types');
*/

function university_adjust_queries($query) {

    if (!is_admin() && is_post_type_archive('campus') && $query->is_main_query()) {
        $query->set('posts_per_page', -1);
    }

    if (!is_admin() && is_post_type_archive('program') && is_main_query() ) {
        $query->set('orderby', 'title');
        $query->set('order', 'ASC');
        $query->set('posts_per_page', -1);
    }

    if (!is_admin() && is_post_type_archive('event') && $query->is_main_query()) {
        $today = date('Ymd');
        $query->set('meta_key', 'event_date');
        $query->set('orderby', 'meta_value_num');
        $query->set('order', 'ASC');
        $query->set('meta_query', array(
            array(
                'key' => 'event_date',
                'compare' => '>=',
                'value' => $today,
                'type' => 'numeric'
            )
        ));
    }
}
add_action('pre_get_posts', 'university_adjust_queries');

function universityMapKey($api) {
    $api['key'] = 'AIzaSyADGZahdIYITB1FVq6mdcwLEABJjqkRipw';
    return $api;
}
add_filter('acf/fields/google_map/api', 'universityMapKey');