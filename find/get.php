<?php
require_once("connect_database.php");
$mabai =addslashes(mysql_real_escape_string(addslashes($_GET['mabai'])));
$sql = mysql_query("select * from link where mabai = '$mabai'");
if(@mysql_num_rows($sql)>0)
	{
		$search=mysql_fetch_array(mysql_query("select * from link where mabai = '$mabai'"));
		$link = $search['link'];
		$samplecode = $search['samplecode'];
		echo $link;
	}
else echo 0;
?>