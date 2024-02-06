<!--
photo
name 
nights days
meals hotel 
price 
button
-->
<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>

<!--                    TOUR                      -->


<!--
Photo
name
start dates
Inclusion
hotels
flights
book
-->

<div class="content__tour-view">
    <?php tour_details(); ?>
    <?php  get_review(); ?>
    <?php  get_review2(); ?>

</div>

<!--                    FOOTER                  -->
<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
