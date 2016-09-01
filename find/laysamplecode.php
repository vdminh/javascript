<?php
require_once("connect_database.php");
$mabai=mysql_real_escape_string(addslashes($_GET['mabai']));
if (@mysql_num_rows(mysql_query("select * from pascal where mabai='$mabai'"))>0)
{
	$tim = mysql_fetch_array(mysql_query("select * from pascal where mabai='$mabai'"));
	$debai = $tim['debai'];
	$samplecode =$tim['samplecode'];
	echo $samplecode;
}
else echo 0;
?>