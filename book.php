<?php
require_once("includes/config.php");

     include(TEMPLATE_INCLUDES . "header.php");
?>

<!--                    BOOKING                  -->

<!--
      
    Not too Fancy just common layout and designs
                   Two Columns
    
    
      First Column 
      
      Review Your Bookings
      Enter Travellers Details
      
      Second Column
      
      Total Charges
       
       
-->



    
 
            
            <?php

            if(isset($_SESSION['username'])) {

                if(isset($_GET['hotel']) && isset($_GET['bookid'])) {
                    book_hotel();
                }
                
                if(isset($_GET['tour']) && isset($_GET['bookid'])) {
                    book_tours();
                }
                
                if(isset($_GET['flight']) && isset($_GET['bookid'])) {
                    book_flight();
                }
            } else {
                redirect('login.php');
            }
        
        
        ?>
    </div>

    <!--
            <div class="traveller-details">
                <h1 class="review-booking__heading">Travellers details</h1>
            </div>
-->




    <!--                    FOOTER                  -->
    <?php include(TEMPLATE_INCLUDES . "footer.php") ?>
