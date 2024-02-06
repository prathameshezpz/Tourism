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




    if (isset($_POST['submit'])) {

        if(isset($_SESSION['username'])) {

            $username = $_SESSION['username'];
            $hotel_id = $_POST['hotel_id'];
            $review_time = $_POST['current_date'];
            $subject = $_POST['sub'];
            $review = $_POST['review'];
            
            $query = "INSERT INTO reviews(reviewer_id, review_time, user_name, subject, review_text) VALUES('{$hotel_id}', '{$review_time}', '{$username}',  '{$subject}', '{$review}')";
            
            $send_query = mysqli_query($con, $query);
            
            if(!$send_query) {
                die(mysqli_error($con));
                set_message('Failed To Write Review');
                redirect('hotel.php?hotelid='.$hotel_id);
            } else {
                set_message('Review Successfully');
                redirect('hotel.php?hotelid='.$hotel_id);
            }
        } else {
            redirect('login.php');
        }
    }


?>

<!--                    HOTEL                      -->


<!--
    Photo
    name
    Location
    facilities
    reviews
    
    -->
    
<div class="content__hotel-view">
    <?php hotel_details(); ?>
    <?php  get_review(); ?>
    <?php  get_review2(); ?>

<!--                    FOOTER                  -->
<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
