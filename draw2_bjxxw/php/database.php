<?php
	$link=@mysql_connect('localhost','root','root');
	if(!$link){
		$data['message']='连接数据库失败';
		echo json_encode($data);
		die;
	}
	mysql_select_db('cn_bjxxw',$link);
	mysql_set_charset('utf8',$link);
?>