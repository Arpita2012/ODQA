
<?php

session_start();

$SITE_URL = "http://localhost:82/ODQA/";

$con = mysqli_connect("localhost" , "root" , "", "odqa");

if(!$con) {
	die("cant connect to database");
}

?>
