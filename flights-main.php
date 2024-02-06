<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>

<!--                    FLIGHTS                  -->


<div class="flights">
    <!--

<div class="flight__index">
<div class="flight--1 flight--1__index-1">
<span class="date">02 Feb 2019</span>
</div>
-->
    <div class="flight--1 flight--1__index">
        <span class="index">Departure</span>
        <span class="index">Arrival</span>
        <span class="index">Date</span>
        <span class="index">Price</span>
    </div>
    <!--        </div>-->

    <?php get_flight(); ?>

</div>

<!--                    FOOTER                  -->

<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
