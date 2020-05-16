<?php
ini_set("display_errors", "On");
error_reporting(E_ALL | E_STRICT);
require_once '_main.php';
//引入防签到系统
require_once 'assp.php';

//获得流量信息
if($oo->get_transfer()<1000000)
{
    $transfers=0;}else{ $transfers = $oo->get_transfer();

}
//计算流量并保留2位小数
$all_transfer = $oo->get_transfer_enable()/$togb;
$unused_transfer =  $oo->unused_transfer()/$togb;
$used_100 = $oo->get_transfer()/$oo->get_transfer_enable();
$used_100 = round($used_100,2);
$used_100 = $used_100*100;
//计算流量并保留2位小数
$transfers = $transfers/$tomb;
$transfers = round($transfers,2);
$all_transfer = round($all_transfer,2);
$unused_transfer = round($unused_transfer,2);
//套餐结束时间
$plan_end_time= $oo->get_plan_end_time();

//显示IP
$ip= new ss\User\UserInfo();
$datas = $U->get_user_ip_list();
$smarty->assign('U',$U);
$smarty->assign('datas',$datas);
$smarty->assign('a',$a=1);


$smarty->assign('plan_type',  $oo->get_plan());

$smarty->assign('oo',$oo);
$smarty->assign('transfers',$transfers);
$smarty->assign('used_100',$used_100);
$smarty->assign('all_transfer',$all_transfer);
$smarty->assign('unused_transfer',$unused_transfer);
$smarty->assign('get_money',$oo->get_money());
$smarty->display('user/index.tpl');
echo  $js_ua_code;//显示防签到系统平台 页面内容
?>