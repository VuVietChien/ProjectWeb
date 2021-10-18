<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sportstore";

// Create connection
$connection = new mysqli($servername, $username, $password, $dbname);
$connection -> set_charset("utf8");
// Check connection
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
}
