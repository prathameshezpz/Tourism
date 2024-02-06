<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>

<!--                    HOTELS                  -->


<!--
photo
nameswimming pool
family or couple or premium
free wifi
free parking
stars
price per night
-->

<div class="content-hotel">
    <!-- <div class="filter">
        <h2 class="filter__heading--1">Select Filter</h2>
        <h3 class="filter__heading--2">Price Per Night</h3>
        <div class="filter__checkbox">
            <input type="checkbox" class="filter__checkbox--item"> Below &#8377; 1000
        </div>
        <div class="filter__checkbox">
            <input type="checkbox" class="filter__checkbox--item"> &#8377; 1000 - &#8377; 2000
        </div>
        <div class="filter__checkbox">
            <input type="checkbox" class="filter__checkbox--item"> &#8377; 1000 - &#8377; 2000
        </div>
        <div class="filter__checkbox">
            <input type="checkbox" class="filter__checkbox--item"> &#8377; 1000 - &#8377; 2000
        </div>
        <div class="filter__checkbox">
            <input type="checkbox" class="filter__checkbox--item"> &#8377; 1000 - &#8377; 2000
        </div>
        <div class="filter__checkbox">
            <input type="checkbox" class="filter__checkbox--item"> &#8377; 1000 - &#8377; 2000
        </div>
    </div> -->
    <div class="hotels">

        <?php get_hotel(); ?>

    </div>
</div>





<!--                    FOOTER                  -->

<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
