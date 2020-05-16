<?php
//开启session
session_start();
require_once '../lib/config.php';
require_once '_check.php';
//引入AES
require_once '../lib/Ss/AES/aes.class.php';
require_once '../lib/Ss/AES/aesctr.class.php';
$newpwd = AesCtr::decrypt($_POST['sspwd'], $_SESSION['randomChar'], 256);
$uid = $oo->get_uid();
if($oo->get_enable()){
    $pwd = $uid."".\Ss\Etc\Comm::get_random_char(8);
    $oo->update_display_pwd($pwd);
    $oo->update_ss_pass($pwd);
    $a['ok'] = '1';
    $a['msg'] = "新密码为：".$pwd;
}else{
    $a['code'] = '0';
    $a['msg']  = "服务已被停止，无法发行连接密码。";
}
echo json_encode($a,JSON_UNESCAPED_UNICODE);
