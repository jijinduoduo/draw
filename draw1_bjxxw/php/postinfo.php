<?php 
include("database.php");
$uid=htmlspecialchars(trim($_POST['uid']));//用户id
$qres=mysql_query("SELECT id FROM `bjxxw_win_prize` WHERE uid={$uid};");
$allrows=mysql_affected_rows();
if($allrows > 0){
	$al=1;
}else{
	$al=0;
}

	echo json_encode($al);
	mysql_close();
?>