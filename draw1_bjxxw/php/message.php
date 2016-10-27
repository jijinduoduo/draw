<?php 
	//留言
include("database.php");
$qres=mysql_query("SELECT uname,message  FROM `bjxxw_win_prize` WHERE message is NOT NULL and message != '' ORDER BY pdate DESC LIMIT 0, 20");

$i=0;
while($row = mysql_fetch_row($qres)){
$reslist[$i] = $row;
$i++;
}
	echo json_encode($reslist);
	mysql_close();
?>