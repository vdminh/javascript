<?php
$db_host = "localhost"; 
$db_name    = 'searcher';
$db_username    = 'root';
$db_password    = '';
@mysql_connect("{$db_host}", "{$db_username}", "{$db_password}") or die("Kh�ng the ket noi database");
@mysql_select_db("{$db_name}") or die("Kh�ng the chon database");
?>