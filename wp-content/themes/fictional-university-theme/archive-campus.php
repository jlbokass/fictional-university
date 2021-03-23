<?php
get_header();
pageBanner(array(
    'title' => 'Our Campuses',
    'subtitle' => 'We have several conveniently campuses.'
));
?>

    <div class="container container--narrow page-section">
        <div class="acf-map">
            <?php
            while (have_posts()):
                the_post();
                $mapLocation = get_field('map_location');
                ?>
            <!--
                <li><a href="<?php the_permalink(); ?>">
                        <?php
                        //the_title();
                        //$mapLocation = get_field('map_location');
                        // $mapLocation['lat'];
                        ?>
                    </a>
                </li>
                -->
            <div class="marker" data-lat="<?= $mapLocation['lat']; ?>" data-lng="<?= $mapLocation['lng']; ?>">
               <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                <?= $mapLocation['address']; ?>
            </div>
            <?php
            endwhile;
            ?>
        </div>
    </div>
<?php
get_footer();