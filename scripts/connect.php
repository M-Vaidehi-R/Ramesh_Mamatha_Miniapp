<?php

    // Set up connection creds

    ini_set('display_errors', 1);
    error_reporting(E_ALL);

    $user = "mamathavaidehi";
    $pass = "Chakkare@0987"; // For WAMP
    //$pass = "root"; // For MAMP
    $url = "localhost";
    // Change the database name for each site
    $db = "db_miniapp";

    // Connect to db
    //$link = mysqli_connect($url, $user, $pass, $db, "8888"); //Mac
    $link = mysqli_connect($url, $user, $pass, $db); //PC

    // Check our connection
    if(!$link) {
        error_log("Connection error: " . mysqli_connect_error());
    }


?>
