<?php
$db_host = "localhost";
$db_name = 'find';
$db_username = 'root';
$db_password = '';
@mysql_connect("{$db_host}","{$db_username}","{$db_password}") or die("Khong the ket noi internet");
@mysql_select_db("{$db_name}") or die("Khong the chon database");
?>