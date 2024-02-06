<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>

<!--                    HOTELS-LIST                  -->

<div class="flight-list hotel-list">
    <form action="#" method="get" class="form-hotel">
        <h1 class="flight-list__heading">Select city for hotel</h1>

        <ul class="flight-list__ulist">
            <?php hotel_city_list(); ?>
        </ul>

        <!--            Extra Features             -->
        <!--
            <h1 class="flight-list__heading">Select dates</h1>
            <div class="hotels__date-box">

                <div class="check-in__box">
                    <label for="">Check-in</label>
                    <input type="date" class="min-date">
                </div>

                <div class="check-out__box">
                    <label for="">Check-out</label>
                    <input type="date" class="max-date">
                </div>
                
            </div>
-->
    </form>
</div>


<!--                    FOOTER                  -->

<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
