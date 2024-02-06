<?php 

require_once("includes/config.php");
include(TEMPLATE_INCLUDES . "header.php");
?>

<div class="section-login">
        <form autocomplete="off" action="" method='post' class='login-form'>
            <div class="login__box">
                <h1 class="form__heading">
                    <?php display_message(); ?>sign up</h1>
                <?php

                if(isset($_POST['submit'])) {

                    global $con;
                    
                    $message = "";
                    $warn = "";
                    $username =  escape_string($_POST['username']);
                    $password =  escape_string($_POST['password']);
                    $password =  password_hash($password, PASSWORD_BCRYPT, array('cost' => 6));
                    $email =  escape_string($_POST['email']);
                    $phone =  escape_string($_POST['phone']);
                    
                    $query = "SELECT * FROM users";
                    $users_query = mysqli_query($con, $query);
                    while($row = mysqli_fetch_array($users_query)) {
                        $db_username = $row['username'];
                        $db_user_email = $row['email'];
                        if(strcmp(strtolower($username), strtolower($db_username)) == 0) {
                            $message = "No";
                            $warn = " Use Different Username";
                        } else if(strcmp(strtolower($email), strtolower($db_user_email)) == 0) {
                            $message = "No";
                            $warn = " Use Different Email";
                        }
                    }
                    echo $warn;
                    
                    if($message !== "No")
                    {

                    $query = "INSERT INTO users (username, password, email, phone) VALUES('{$username}', '{$password}', '{$email}', '{$phone}')";
                    
                    $check_query = mysqli_query($con, $query);
                    
                    if($check_query) {
                        $_SESSION['username'] = $username;
                        $_SESSION['role'] = $row['role'];
                        redirect("index.php");
                    } else {
                        redirect("register.php");
                    }
                
                }
                }

                    

                ?>
                <div class="form-group">
                    <div class="form-group__input">
                        <input placeholder="Username" name="username" type="text" class="register__input" required>
                    </div>
                    <div class="form-group__input">
                        <input placeholder="Password" name="password" type="password" class="register__input" required>
                    </div>
                    <div class="form-group__input">
                        <input placeholder="Email" name="email" type="text" class="register__input" required>
                    </div>
                    <div class="form-group__input">
                        <input placeholder="Phone number" name="phone" type="text" class="register__input" required>
                    </div>
                    <input type="submit" value="sign up" class="register__submit" name="submit">
                    <a href="#" class="register__btn">sign up</a>
                </div>
                <p><a class="register__link" href="login.php">Login Here</a></p>
            </div>
        </form>
</div>
<script src="includes/script.js"></script>
<script src="https://unpkg.com/ionicons@4.4.7/dist/ionicons.js"></script>
</body>

</html>
