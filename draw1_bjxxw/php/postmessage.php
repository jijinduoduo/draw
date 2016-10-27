<?php 
include("database.php");
$uid=htmlspecialchars(trim($_POST['uid']));//用户id
$postmessage=htmlspecialchars(trim($_POST['postmessage']));//用户留言
$ptime=htmlspecialchars(trim($_POST['ptime']));//中奖时间
					////////////////////////////////////写入数据库
					$sql = "UPDATE `bjxxw_win_prize` SET `message`='{$postmessage}' WHERE (`uid`='{$uid}') AND (`pdate`='{$ptime}');";  	
					$query = mysql_query($sql);  	 
$allrows=mysql_affected_rows();
if($allrows > 0){
	$al=1;
}else{
	$al=0;
}
	echo json_encode($al);
	mysql_close();
?>