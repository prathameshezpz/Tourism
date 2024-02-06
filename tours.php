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

<!--                    TOURS                      -->


<div class="tours">
   
    <?php
    
    if(isset($_GET['th'])) {
        get_tours_by_theme(); 
    } else {
        get_tour();   
    }
    
    ?>
    
</div>


<!--                    FOOTER                  -->


<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
