<?php


namespace Ss\Etc;


class Ana extends Db {

    //获取本月流量
    function getMonthTraffic(){
        $u = $this->db->sum("users","upload");
        $d = $this->db->sum("users","download");
        $traffic = $u+$d;
        return $traffic;
    }

    function getTrafficGB(){
        $mt = $this->getMonthTraffic();
        $mt = Comm::toGB($mt);
        $mt = round($mt,3);
        return $mt;
    }

    //统计用户
    function allUserCount(){
        $c = $this->db->count("users","uid");
        return $c;
    }

    //有效用户统计
    function activedUserCount(){
        $c = $this->db->count("users","uid",[
            "t[>]" => "0"
        ]);
        return $c;
    }

    //签到用户
    function checkinUser($time){
        $c = $this->db->count("users","uid",[
            "last_check_in_time[>]" => time()-$time
        ]);
        return $c;
    }

    //过去一段时间内的在线人数
    function onlineUserCount($time){
        $now = time();
        $time = $now-$time;
        $c = $this->db->count("users","uid",[
            "t[>]" => $time
        ]);
        return $c;
    }

    function nodeCount(){
        $c = $this->db->count("ss_node","id");
        return $c;
    }
}