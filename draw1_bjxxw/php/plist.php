<?php 
	//获奖名单
include("database.php");
$qres=mysql_query("SELECT uname,pname,(replace(`utel`,SUBSTRING(`utel`,4,5),'****')) ,pdate  FROM `bjxxw_win_prize` ORDER BY pdate DESC LIMIT 0, 20");

$i=0;
while($row = mysql_fetch_row($qres)){
$reslist[$i] = $row;
$i++;
}
	echo json_encode($reslist);
	mysql_close();
?>