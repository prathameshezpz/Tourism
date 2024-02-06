<?php
require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");
?>

<!--                    CONTACT                      -->

<div class="contact">
    <!--
            <div class="contact__image--box">
                <img src="#" alt="Main Image" class="contact__image">
            </div>
-->
    <div class="contact__form--box">

        <?php

    if(isset($_POST['submit'])) {

        global $con;

        $name =  escape_string($_POST['name']);
        $email =  escape_string($_POST['email']);
        $desc =  escape_string($_POST['desc']);

        $query = "INSERT INTO contact (name, email, message) VALUES('{$name}', '{$email}', '{$desc}')";
        $check_query = mysqli_query($con, $query);
       
            if($check_query) {
                set_message('Message Send Successfully');
            } else {
                set_message('Message Not Sent');
            }

        }

    ?>

        <h1>
            <?php display_message(); ?>
        </h1>
        <h1 class="contact__form--heading">Contact Us</h1>
        <form action="#" method="post" class="contact__form">
            <input type="text" name="name" class="contact__form--input" placeholder="Enter your name" required>
            <input type="email" name="email" class="contact__form--input" placeholder="example@gmail.com" required>
            <textarea name="desc" id="" cols="30" rows="7" class="contact__form--input contact__form--textarea">Your message</textarea>
            <input type="submit" name="submit" value="Send message" class="contact__form--submit">
        </form>
    </div>
</div>



<!--                    FOOTER                  -->
<?php include(TEMPLATE_INCLUDES . "footer.php") ?>
