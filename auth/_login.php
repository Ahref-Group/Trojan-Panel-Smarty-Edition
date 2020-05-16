<?php
// error_reporting(E_ALL);
// ini_set('display_errors', '1');
//开启session
session_start();
require_once '../lib/config.php';
//引入AES
require_once '../lib/Ss/AES/aes.class.php';
require_once '../lib/Ss/AES/aesctr.class.php';
$email = $_POST['email'];
$email = strtolower($email);
$passwd = AesCtr::decrypt($_POST['passwd'], $_SESSION['randomChar'], 256);
$passwd = \Ss\User\Comm::SsPW($passwd);
$rem = $_POST['remember_me'];
$c = new \Ss\User\UserCheck();
$q = new \Ss\User\Query();
//加入防签到系统平台，如果不是在用户中心点的签到都不会奖励流量。
if($_SESSION['assp']==false){
    $rs['code'] = '0';
    $rs['msg'] = "非法访问，请检查您的网络环境是否安全";
}
elseif($c->EmailLogin($email,$passwd)){
    session_destroy();  //清空当前用户所有的Session信息
    $rs['code'] = '1';
    $rs['ok'] = '1';
    $rs['msg'] = "登录成功！";
    //login success
    if($rem= "week"){
        $ext = 3600*24*7;
    }else{
        $ext = 3600;
    }
    //获取用户id
    $id = $q->GetUidByEmail($email);
    
    $c->save_ip($id);
    //处理密码
    $pw = \Ss\User\Comm::CoPW($passwd);
    setcookie("user_pwd",$pw,time()+$ext);
    setcookie("uid",$id,time()+$ext);
    setcookie("user_email",$email,time()+$ext);
}else{
    $rs['code'] = '0';
    $rs['msg'] = "邮箱或者密码错误";
}
echo json_encode($rs,JSON_UNESCAPED_UNICODE);
