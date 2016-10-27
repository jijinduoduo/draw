<?php
$conn = mysql_connect('localhost','root','root');
  mysql_select_db('cn_bjxxw');
 mysql_query("set names utf8");
if (!$conn)
{
  die('数据库连接失败: ' . mysql_error());
}
?>