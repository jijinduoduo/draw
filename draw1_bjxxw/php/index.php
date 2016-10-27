<?php
include("database.php");
//////////////////////////////////////////////////
//抽奖页面
$ucount=3;//用户可抽奖次数
$uid=htmlspecialchars(trim($_POST['uid']));//用户id
$surename=htmlspecialchars(trim($_POST['surename']));//用户真实姓名
$utel=htmlspecialchars(trim($_POST['utel']));//用户电话
$uemail=htmlspecialchars(trim($_POST['uemail']));//用户邮箱
$uname=htmlspecialchars(trim($_POST['username']));//用户名
 date_default_timezone_set('PRC');//使用PHP的date函数获取时间之前，先将时区设置为北京时区
$time=date('Y-m-d H:i:s');//获取当前时间
$time2=date('Y-m-d');//获取今天时间
$ttime=date("Y-m-d",strtotime("+1 day"));//获取明天时间
$ip=$_SERVER["REMOTE_ADDR"];//获取ip
//获得该IP所在的地理位置
function getIPLoc_QQ($queryIP){ 
    $url = 'http://ip.qq.com/cgi-bin/searchip?searchip1='.$queryIP; 
    $ch = curl_init($url); 
    curl_setopt($ch,CURLOPT_ENCODING ,'gb2312'); 
    curl_setopt($ch, CURLOPT_TIMEOUT, 10); 
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true) ; // 获取数据返回 
    $result = curl_exec($ch); 
    $result = mb_convert_encoding($result, "utf-8", "gb2312"); // 编码转换，否则乱码 
    curl_close($ch); 
    preg_match("@<span>(.*)</span></p>@iU",$result,$ipArray); 
    $loc = $ipArray[1]; 
    return $loc; 
} 
//$city=getIPLoc_QQ($ip);//获得该IP地理位置 线上
$city="北京";//获得该IP地理位置 线下
///////////////////////////////////////////////////////////////////////////////
//v是中奖率
//num 是奖品数量
//奖项初始化
$prize_arr = array(
		'0' => array('id'=>1,'min'=>1,'max'=>29,'prize'=>'一等奖','v'=>0,'num'=>0),
		'1' => array('id'=>2,'min'=>302,'max'=>328,'prize'=>'二等奖','v'=>0,'num'=>0),
		'2' => array('id'=>3,'min'=>242,'max'=>268,'prize'=>'三等奖','v'=>0,'num'=>0),
		'3' => array('id'=>4,'min'=>182,'max'=>208,'prize'=>'四等奖','v'=>20,'num'=>38),
		'4' => array('id'=>5,'min'=>122,'max'=>148,'prize'=>'五等奖','v'=>30,'num'=>898),
		'5' => array('id'=>6,'min'=>62,'max'=>88,'prize'=>'六等奖','v'=>40,'num'=>388),
		'6' => array('id'=>7,'min'=>array(32,92,152,212,272,332),
				'max'=>array(58,118,178,238,298,358),'prize'=>'七等奖','v'=>50,'num'=>9999)
);

	//抽奖开始
		foreach ($prize_arr as $key => $val) {
			$arr[$val['id']] = $val['v'];
		}

		$rid = getRand($arr); //根据概率获取奖项id

		$res = $prize_arr[$rid-1]; //中奖项
		$min = $res['min'];
		$max = $res['max'];
		if($res['id']==7){ //七等奖
			$i = mt_rand(0,5);
			$result['angle'] = mt_rand($min[$i],$max[$i]);
		}else{
			$result['angle'] = mt_rand($min,$max); //随机生成一个角度
		}
		$result['prize'] ="恭喜您中得".$res['prize']."";
		$result['id'] = $res['id'];
		
			$pid=$result['id'];//奖品id
            $pname=$res['prize'];//奖品名
//////////////////////////////////////////////////////
			//执行语句 数据库中每位用户抽奖次数
	$result1=mysql_fetch_array(mysql_query("SELECT COUNT(*) as count1 FROM bjxxw_win_prize WHERE uid={$uid} AND pdate>'{$time2}' AND pdate<'{$ttime}' ")); 
    $user_count=$result1['count1']; 
			//执行语句 数据库中奖品被抽取次数
	$result2=mysql_fetch_array(mysql_query("SELECT COUNT(*) as count2 FROM bjxxw_win_prize WHERE pid={$pid} AND pdate>'{$time2}' AND pdate<'{$ttime}'")); 
    $prize_count=$result2['count2']; 

           //从数据库中获取特定用户已经参加抽奖的次数，如果大于等于3则提示次数用完 
        if($user_count>=$ucount){ 
            $result['prize']='您3次中奖机会已经用完！'; 
            $result['id'] =0; 
			$result['angle'] =0;
            //从数据库中获取特定奖项序号的次数，大于等于设置的最大次数则提示奖品被抽完，如果需要一直中最后一个纪念奖，则修改该处即可 
        }elseif ($prize_count>= $prize_arr[$rid-1]['num']) { 
            $result['prize']='来晚了，您所抽中的奖项已经中完啦！'; 
            $result['id'] =0; 						
        }else{
					////////////////////////////////////写入数据库
					 $sql = "INSERT INTO `bjxxw_win_prize` (`uid`, `pid`,`pname`,`surename`,`uemail` ,`utel`, `uname`, `ip`,`ucity`, `pdate`,ifwin) 
							  VALUES 
							('".$uid."', '".$pid."','".$pname."', '".$surename."','".$uemail."','".$utel."', '".$uname."', '".$ip."','".$city."', '".$time."','1');";  	
							 $query = mysql_query($sql);  	          
              
		     }
			 //用户积分
	    if($result['id']==7){
			 $result['prize']='恭喜您获得'.$res['prize'].''; 	
			 	////////////////////////////////////写入数据库
				//	 $sql2 = "UPDATE `p8_memberdata` SET `money`=`money`+10 WHERE (`uid`='{$uid}');";  	
				//	 $query2= mysql_query($sql2);  	
		}
		 $result['getTime']=$time;
	echo json_encode($result);

				/**
				 * 根据概率获取奖项
				 */
		function getRand($proArr) {
			$result = '';

			//概率数组的总概率精度
			$proSum = array_sum($proArr);

			//概率数组循环
			foreach ($proArr as $key => $proCur) {
				$randNum = mt_rand(1, $proSum);
				if ($randNum <= $proCur) {
					$result = $key;
					break;
				} else {
					$proSum -= $proCur;
				}
			}
			unset ($proArr);

			return $result;
		}
////////////////////////////////////////////////////////////////////////
   mysql_close();	
?>