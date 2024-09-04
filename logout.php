<?php
session_start();
require_once'libraries/utils.php';

session_unset();
session_destroy();

// header("Location: index.php");
// exit();

redirect('index.php');