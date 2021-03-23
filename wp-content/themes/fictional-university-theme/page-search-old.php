<?php get_header();

while (have_posts()):
    the_post();
    /*
        pageBanner(array(
                'title' => 'Hello There this is the title',
                'subtitle' => 'am a subtitle',
                'photo' => 'https://images.unsplash.com/photo-1455849318743-b2233052fcff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
        ));
    */

    pageBanner();
    ?>



    <div class="container container--narrow page-section">

        <?php
        $theParent = wp_get_post_parent_id(get_the_ID());
        if ($theParent):
            ?>
            <div class="metabox metabox--position-up metabox--with-home-link">
                <p><a class="metabox__blog-home-link" href="<?= site_url(); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?= get_the_title($theParent); ?></a> <span class="metabox__main"><?php the_title(); ?></span></p>
            </div>
        <?php endif; ?>

        <?php
        $testArray = get_pages(array(
            'child_of' => get_the_ID()
        ));
        if ($theParent or $testArray):
            ?>
            <div class="page-links">
                <h2 class="page-links__title"><a href="<?= get_permalink($theParent); ?>"><?= get_the_title($theParent); ?></a></h2>
                <ul class="min-list">
                    <?php
                    if ($theParent) {
                        $findChildrenOf = $theParent;
                    } else {
                        $findChildrenOf = get_the_ID();
                    }
                    wp_list_pages(array(
                        'title_li' => NULL,
                        'child_of' => $findChildrenOf
                    ));
                    ?>
                </ul>
            </div>
        <?php endif; ?>

        <div class="generic-content">
            <form class="search-form" method="get" action="<?= esc_url(site_url('/')); ?>">
                <label class="headline headline--medium" for="s">Perform a new Search:</label>
                <div class="search-form-row">
                    <input placeholder="What are you looking for?" class="s" type="search" name="s" id="s">
                    <input class="search-submit" type="submit" value="Search">
                </div>
            </form>
        </div>

    </div>

<?php
endwhile;

get_footer();