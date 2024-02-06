<?php

require_once("includes/config.php");

include(TEMPLATE_INCLUDES . "/header.php");


session_destroy();

redirect('login.php');


?>