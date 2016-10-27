<?php

	date_default_timezone_set('PRC');
	$data=array();
	include 'database.php';
	//查询获奖名单
	if(empty($_POST)){
			$sql="select `prize`,`uname`,`time`,`leave` from `bjxxw_lucky_draw` where `leave` !='' and `leave` !='放弃领取'";
			$res=mysql_query($sql);
			$i=0;
			while($row=mysql_fetch_assoc($res)){
				$row['time']=date('Y-m-d H:i',$row['time']);
				$row['uname']=substr_cut($row['uname']);//给用户名字加密
				$data[$i]=$row;
				$i++;
			}
			echo  json_encode($data);
			return;
		}
		
		function substr_cut($user_name){
				$strlen     = mb_strlen($user_name, 'utf-8');
				$firstStr     = mb_substr($user_name, 0, 1, 'utf-8');
				$lastStr     = mb_substr($user_name, -1, 1, 'utf-8');
				return $strlen == 2 ? $firstStr . str_repeat('*', mb_strlen($user_name, 'utf-8') - 1) : $firstStr . str_repeat("*", $strlen - 2) . $lastStr;
			}
	//用户抽奖
	if(!empty($_POST)){
							
				
			 //本次抽奖的奖项信息,必须按照从大到小的顺序进行填写,angle为转盘角度,prize为奖次,v为中奖概率
			//需要注意的是,概率从小到大进行排序
			//奖项数据
			$prize_arr=array(
			    0=>array('angle'=>array('245-265'),'prize'=>'一等奖','v'=>0),
			    1=>array('angle'=>array('185-215'),'prize'=>'二等奖','v'=>0),
			    2=>array('angle'=>array('125-145'),'prize'=>'三等奖','v'=>0),
			    3=>array('angle'=>array('65-85'),'prize'=>'四等奖','v'=>0),
			    4=>array('angle'=>array('5-25'),'prize'=>'五等奖','v'=>0),
			    5=>array('angle'=>array('305-325'),'prize'=>'六等奖','v'=>10),
			    6=>array('angle'=>array('275-295'),'prize'=>'七等奖','v'=>20),
			    7=>array('angle'=>array('335-355'),'prize'=>'八等奖','v'=>70),
			    8=>array('angle'=>array('35-55'),'prize'=>'九等奖','v'=>100),
			    9=>array('angle'=>array('95-115'),'prize'=>'十等奖','v'=>100),
			    10=>array('angle'=>array('155-175'),'prize'=>'十一等奖','v'=>200),
			    11=>array('angle'=>array('215-235'),'prize'=>'十二等奖','v'=>500),
			    );
			 //获取用户的详细地址
             function getCity($ip){
						$url="http://ip.taobao.com/service/getIpInfo.php?ip=".$ip;
						$ip=json_decode(file_get_contents($url));
						if((string)$ip->code=='1'){
						  return false;
						  }
						  $data = (array)$ip->data;
						return $data['country'].$data['city'].$data['county'].' '.$data['isp'];
			}
					
			$time= time();//本次抽奖时间
            $ip= $_SERVER['REMOTE_ADDR']; //用户ip
			$num=3;//抽奖次数	
           // $city=getCity($ip);//用户所在详细地址		线上
            $city='北京';//用户所在详细地址		线下
					
					  //获取当前年
                    $y = date("Y");
   					 //获取当天的月份
    				$m = date("m");
    				//获取当天的号数
   					$d = date("d");
   					 //当天凌晨12点的时间戳
    				$today= mktime(0,0,0,$m,$d,$y);
                     //查询判断用户ip当天所抽次数  
					 /*if($ip !='211.167.232.158'){
						 die;
					 }*/
					$res= mysql_query("SELECT `number` `time` FROM `bjxxw_lucky_draw` where ip='{$ip}' and `time`>'{$today}'");
						
					  $time_num=mysql_num_rows($res);
						if($time_num>=$num){//抽奖次数
                        	$data['message']='对不起,你已经抽过了';
                        	$data['angle']=0;
                            echo json_encode($data);
							die;
						}
						
					//判断所有奖品是否还有
					$rel=mysql_query("SELECT `surplus` FROM `bjxxw_lucky_prize`");
					$total=0;
					while($mes=mysql_fetch_assoc($rel)){
						$total+=$mes['surplus'];
					}
					if($total==0){
						$data['message']='对不起,所有奖品已抽完了';
                        	$data['angle']=0;
                            echo json_encode($data);
							die;
					}
					
			/**
			* 根据奖项数据获得具体奖项
			* 
			* getPrize()根据概率抽取奖项
			*@param $prize_arr  奖项数组
			* return  所中奖项的一维数组
			*/
			function getPrize($prize_arr) {
                $proSum=0;//总几率
                $randNum=0;
                foreach($prize_arr as $v){
                    $proSum+=$v['v'];
                } 
				
                foreach($prize_arr as $k=>$v){
                  
                    if($randNum<=$v['v']) {
						$randNum=mt_rand(1,$proSum);//随机数
					
                        $sql="SELECT surplus FROM bjxxw_lucky_prize where prize='{$v['prize']}'";
                        $num=mysql_query($sql);
                        $surplus=mysql_fetch_assoc($num);
						//判断该奖品数量是否还有
						if($surplus['surplus']!=0){
							$v['surplus']=$surplus['surplus'];
                        	return $v;
						}
                    }else{
                        $proSum-=$v['v'];
                    }
                }
             
            }
					 
					//获得旋转信息
					/**
					*@param $prize-arr 奖项数组
					*@param $ip 		用户ip
					*@param $city 		用户所在城市
					*@param $time 		本次抽奖时间
					*@param $time_num 		抽奖次数
					*return 	中奖信息
					*/
					function getRotate($prize_arr,$ip,$city,$time,$time_num) {
					    $arr=$prize_arr;
						$newip=$ip;
						$newcity=$city;
						$newtime=time();
						$number=$time_num;
					    $prize=getPrize($prize_arr);
						//递归实现百分之百中奖
						if($prize==null){
							getRotate($arr,$newip,$newcity,$newtime,$number);
							return;
						}
					    $angle=$prize['angle'];
					    shuffle($angle);//打乱
					    $angle=$angle[0];
					    $angle_arr=explode('-',$angle);
					    $min=$angle_arr[0];
					    $max=$angle_arr[1];
					    $angle=mt_rand($min,$max);//角度
					    $data['angle']= $angle+1800;    
					    //$a=$prize['prize'];              
                        $data['message'] = $prize['prize'];         //中奖项

						$row=mysql_query("INSERT INTO `bjxxw_lucky_draw`(`prize`,`time`,`number`,`ip`,`city`) values('{$prize['prize']}','{$time}',{$time_num}+1,'{$ip}','{$city}')");
						 if($row>0){
							 $data['id']= mysql_insert_id();
							 //抽奖成功后把该奖品数据库的总数量减一
							mysql_query("UPDATE bjxxw_lucky_prize SET surplus={$prize['surplus']}-1 where prize='{$prize['prize']}'");
							echo json_encode($data);
							return;
						}else{
							$data['message']='对不起,您本次抽奖失败!';
							echo json_encode($data);
							return;
						}
					  }
					 
					getRotate($prize_arr,$ip,$city,$time,$time_num);
		}
		
					    
			 
			 
			



	

?>