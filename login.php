<?php 

require_once("includes/config.php");
include(TEMPLATE_INCLUDES . "header.php");
?>

<div class="section-login">
        <form autocomplete="off" action="" method='post' class='login-form'>
            <div class="login__box">
                <h1 class="form__heading">Login</h1>
                <?php display_message(); ?>
                <?php

                if(isset($_POST['submit'])) {
                    
                    global $con;
                    $message = "";
                    $warn1 = "";
                    $warn2 = "";
                    // $i = 0;
                    $username =  escape_string($_POST['username']);
                    $password =  escape_string($_POST['password']);

                    $query = "SELECT * FROM users WHERE username = '{$username}'";
                    $check_query = mysqli_query($con, $query);
                    
                    if(!($check_query)) {
                        echo mysqli_error($con);
                    }
                    
                    if(mysqli_num_rows($check_query) > 0) {
                        while($row = mysqli_fetch_array($check_query)) {
                            $row['username'];
                            $row['password'];
                            $user_role = $row['role'];
                            
                            if(strcmp($username, $row['username']) != 0) {
                                $message = "No";
                                $warn1 = "Username Is Incorrect";
                            } else if(!(password_verify($password, $row['password']))) {
                                $message = "No";
                                $warn2 = "Password Is Incorrect";
                            }
                        }
                    } else {
                        $message = "No";
                        $warn1 = "Username Not found";
                    }
                    
                    echo $warn1;
                    echo $warn2;
                    
                    if($message !== "No") {
                        $_SESSION['username'] = $username;
                        $_SESSION['role'] = $user_role;
                        if($user_role === "admin") {
                            redirect("admin");
                        } else if($user_role === "user") {
                            redirect("index.php");
                        }
                    }
                }
                        
//                        set_message('nothing');       
//                        if(strcasecmp($username, $row['username']) !== 0) {
//                            $message = "No";
//                            $warn1 = "Username Is Incorrect";
//                        } else if(!(password_verify($password, $row['password']))) {
//                            $message = "No";
//                            $warn2 = "Password Is Incorrect";
//                        }
//                        if(strcasecmp($username, $row['username']) !== 0) {
//                            $message = "No";
//                            $warn1 = $i++ . "Username Is Incorrect";
//                        } else if(!(password_verify($password, $row['password']))) {
//                            $message = "No";
//                            $warn2 = "Password Is Incorrect";
//                        }
//                        set_message(strcasecmp($username, $row['username']) . $warn1 . ' ' . $warn2);       
//                        if($message !== "No") {
//                            $_SESSION['username'] = $username;
//                            $_SESSION['role'] = $row['role'];
//                            if($row['role'] === "admin") {
//                                redirect("admin");
//                            } else if($row['role'] === "user") {
//                                redirect("index.php");
//                            }
//                        } else {
//                            set_message($username . $row['username'] . $warn1 . ' ' . $warn2);       
////                            redirect("login.php"); 
//                        }
//                    }
//                }
                ?>
                <div class="form-group">
                    <div class="form-group__input">
                        <svg class="login__icon">
                            <use Xlink:href="img/login/sprite-login-1.svg#user-1"></use>
                        </svg>
                        <input placeholder="Username" name="username" type="text" class="login__input login__input--n" required>
                    </div>
                    <div class="form-group__input">
                        <svg class="login__icon">
                            <use Xlink:href="img/login/sprite-login.svg#padlock"></use>
                        </svg>
                        <input placeholder="Password" name="password" type="password" class="login__input login__input--p" required>
                    </div>
                    <input type="submit" value="LOG IN" class="login__submit" name="submit">
                    <a href="#" id="--js-login" class="login__btn">log in</a>
                </div>
                <p class="login__policy">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur eos quidem, incidunt illum ea, provident et ducimus eum earum quis deleniti quas. Harum culpa deleniti aspernatur, porro voluptatum, voluptas cupiditate?</p>
                <p><a class="register__link" href="register.php">Register Here</a></p>
            </div>
        </form>
</div>
<script src="includes/script.js"></script>
<script src="https://unpkg.com/ionicons@4.4.7/dist/ionicons.js"></script>
</body>

</html>
