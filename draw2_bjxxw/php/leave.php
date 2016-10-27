<?php
	include 'database.php';
	//用户留言
	$data=array();
		if(!empty($_POST['uname']) && !empty($_POST['tel'])){
			$id=$_POST['id'];
			$leave=$_POST['leave'];
			$uname=$_POST['uname'];
			$tel=$_POST['tel'];
				$sql="update bjxxw_lucky_draw set `leave`='{$leave}',`uname`='{$uname}',`tel`='{$tel}' where id={$id}";
				
				$row=mysql_query($sql);
					if($row>0){
						$data['message']='信息保存成功!!!';	
					}else{
						$data['message']='信息保存失败!!!';
					}
					echo json_encode($data);			
			
		}else{
			$id=$_POST['id'];
			$sql="update bjxxw_lucky_draw set `leave`='放弃领取' where id='{$id}'";
			mysql_query($sql);
			$data['message']='你已放弃领奖';
			echo json_encode($data);
		}
		
			
			
?>