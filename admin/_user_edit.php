<?php
//开启session
session_start();
require_once '../lib/config.php';
require_once '_check.php';
//引入AES
require_once '../lib/Ss/AES/aes.class.php';
require_once '../lib/Ss/AES/aesctr.class.php';

if(!empty($_POST)){
    $uid = $_POST['user_uid'];
    $name = $_POST['user_name'];
    $post_user_pass = AesCtr::decrypt($_POST['user_pass'], $_SESSION['randomChar'], 256);
    if(!empty($post_user_pass)) {
      $pass = \Ss\User\Comm::SsPW($post_user_pass);
    }else{
      $pass = $_POST['user_pass_hidden'];;
    }
    if(!empty($_POST['user_email'])) {
      $email = $_POST['user_email'];
    }else{
      $email = $_POST['user_email_hidden'];
    }
    if(!empty($_POST['quota'])) {
      $quota = $togb*$_POST['quota'];
    }else{
      $quota = $_POST['transfer_enable_hidden'];
    }
    $invite_num = $_POST['invite_num'];
    $enable = $_POST['enable'];
    $plan = $_POST['plan'];
    $plan_end_time = $_POST['plan_end_time'];
    $message = $_POST['message'];
    //更新
    $User = new Ss\User\User($uid);
    $query = $User->updateUser($name,$email,$pass,$quota,$invite_num,$plan,$enable,$plan_end_time,$message);
    if($query){
                $ue['code'] = '1';
                $ue['ok'] = '1';
                $ue['msg'] = "修改成功！即将跳转到用户管理列表！";
    }else{
                $ue['code'] = '0';
                $ue['msg'] = "可能是你没修改任何内容，而提交了，<br>请修改再重试。";
    }
}
echo json_encode($ue,JSON_UNESCAPED_UNICODE);
?>
