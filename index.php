<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>
<div class="content__hero"></div>

<!--                    PACKAGE THEMES                  -->

<div class="section-packages">
    <h1 class="heading">
        exiting tours for adventurous peoples
    </h1>
    <div class="packages">
        <a href="tours.php?tour&th=family" class="package--1__link">
            <div class="package--1">
                <h2 class="package--1__name">
                    Familly
                </h2>
                <p class="package--1__price">
                    Starting at &#8377; 15,000
                </p>
            </div>
        </a>
        <a href="tours.php?tour&th=snowadventurer" class="package--2__link">
            <div class="package--2">
                <h2 class="package--2__name">
                    Snow Adventurer
                </h2>
                <p class="package--2__price">
                    Starting at &#8377; 15,000
                </p>
            </div>
        </a>
        <a href="tours.php?tour&th=foresthiker" class="package--3__link">
            <div class="package--3">
                <h2 class="package--3__name">
                    Forest Hiker
                </h2>
                <p class="package--3__price">
                    Starting at &#8377; 15,000
                </p>
            </div>
        </a>
        <a href="tours.php?tour&th=seaexplorer" class="package--4__link">
            <div class="package--4">
                <h2 class="package--4__name">
                    Sea Explorer
                </h2>
                <p class="package--4__price">
                    Starting at &#8377; 15,000
                </p>
            </div>
        </a>
    </div>
</div>

<!--                    DISCOVER HOT DEALS                  -->



<section class="section-deals">
    <h1 class="heading">
        Discover Hot Deals
    </h1>
    <div class="tours">
        <?php get_tour(); ?>
    </div>
    <a href="tours.php" class="btn--green">View More</a>
</section>



<!--                    CUSTOMER REVIEWS                   -->

<section class="section-review">
    <h1 class="heading">Sharing experience</h1>
    <div class="customer__review">

        <?php get_comments(); ?>

    </div>
    <!--            <a href="#" class="btn--green btn--ghost">View More</a>-->
</section>

<!--                    FOOTER                  -->

<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
