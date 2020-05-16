<?php
/**
 * User Shadowsocks  info Class
 * @author  orvice <orvice@gmail.com>
 */
namespace Ss\User;

class Ss {
    //
    public  $uid;
    public $db;

    function  __construct($uid=0){
        global $db;
        $this->uid = $uid;
        $this->db  = $db;
    }

    //user info array
    function get_user_info_array(){
        $datas = $this->db->select("users","*",[
            "uid" => $this->uid,
            "LIMIT" => "1"
        ]);
        return $datas['0'];
    }

    //返回信息
    function  get_message(){
         return $this->get_user_info_array()['message'];
    }
    
    //返回uid
    function  get_uid(){
         return $this->get_user_info_array()['uid'];
    }
    //获取流量
    function get_transfer(){
        return $this->get_user_info_array()['upload']+$this->get_user_info_array()['download'];
    }

    //返回密码
    function  get_pass(){
        return $this->get_user_info_array()['display_pwd'];
    }

    //返回Plan
    function  get_plan(){
        return $this->get_user_info_array()['plan'];
    }

    //get plan_start_time
    function  get_plan_end_time(){
        return $this->get_user_info_array()['plan_end_time'];
    }
    
    //返回transfer_enable
    function  get_transfer_enable(){
        return $this->get_user_info_array()['quota'];
    }

    //get money
    function  get_money(){
        return $this->get_user_info_array()['money'];
    }
    
    //get enable
    function  get_enable(){
        return $this->get_user_info_array()['enable'];
    }

    //get unused traffic
    function unused_transfer(){
        //global $dbc;
        return $this->get_transfer_enable() - $this->get_transfer();
    }

    //get last check in time
    function get_last_check_in_time(){
        return $this->get_user_info_array()['last_check_in_time'];
    }

    //check is able to check in
    function is_able_to_check_in(){
        ini_set("display_errors", "On");
        error_reporting(E_ALL | E_STRICT);
        $now = date('Y-m-d', time());
        $last = date('Y-m-d', $this->get_last_check_in_time());
        if( $now<>$last ){
            return 1;
        }else{
            return 0;
        }
    }

    //update last check_in time
    function update_last_check_in_time(){
        $now = time();
        $this->db->update("users",[
            "last_check_in_time" => $now
        ],[
            "uid" => $this->uid
        ]);
    }

    //add transfer 添加流量
    function  add_transfer($transfer=0){
        $transfer = $this->get_transfer_enable()+$transfer;
        $this->db->update("users",[
            "quota" => $transfer
        ],[
            "uid" => $this->uid
        ]);
    }

    //add money
    function add_money($uid,$money){
        $money = $this->get_money()+$money;
        $this->db->update("users",[
            "money" => $money
        ],[
            "uid" => $uid
        ]);
    }

    //update ss pass
    function update_ss_pass($pass){
        $this->db->update("users",[
            "password" => hash('sha224', $pass)
        ],[
            "uid" => $this->uid
        ]);
    }
    
    //update ss pass
    function update_display_pwd($dpwd){
        $this->db->update("users",[
            "display_pwd" => $dpwd
        ],[
            "uid" => $this->uid
        ]);
    }

    //user info array
    function getUserArray(){
        $datas = $this->db->select("users","*",[
            "uid" => $this->uid,
            "LIMIT" => "1"
        ]);
        return $datas['0'];
    }

    //获取已用流量
    function getUsedTransfer(){
        return $this->getUserArray()['upload']+$this->getUserArray()['download'];
    }

    //获取总流量
    function getTransferEnable(){
        return $this->getUserArray()['quota'];
    }

    //剩余流量
    function getUnusedTransfer(){
        return $this->getTransferEnable()-$this->getUsedTransfer();
    }
    
    //签到延迟到期时间
	function update_plan_end_time_checkin(){
        $current_end_time = $this->get_plan_end_time();
        if ($current_end_time > time()+7*86400)
            $data = $current_end_time;
        else
            $data = time() + 7*86400;
            
        $this->db->update("users",[
            "plan_end_time"=>$data,
            ],[
                "uid"=>$this->uid
            ]);
    }

}
