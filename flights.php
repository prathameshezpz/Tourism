<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>

<!--                    FLIGHT-LIST                  -->

<div class="flight-list">
    <h1 class="flight-list__heading">Select Your Flight</h1>
    <ul class="flight-list__ulist flight-list__ulist--column">
       
        <!-- Call Flight List Function -->
        <?php get_flight_list(); ?>
        
    </ul>
</div>



<!--                    FOOTER                  -->

<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
