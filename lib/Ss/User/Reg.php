<?php


namespace Ss\User;


class Reg {

    private $db;

    private $table = "users";

    function __construct(){
        global $db;
        $this->db = $db;
    }

    function GetLastPort(){
        $datas = $this->db->select($this->table,"*",[
            "ORDER" => "uid DESC",
            "LIMIT" => 1
        ]);
        return $datas['0']['port'];
    }

    function Reg($username,$email,$pass,$plan,$transfer,$invite_num,$ref_by){

        $sspass = \Ss\Etc\Comm::get_random_char(8);

        $this->db->insert($this->table,[
           "user_name" => preg_replace('/[^\w@.]+/','',$username),
            "email" => $email,
            "pass" => $pass,
            "password" =>  $pass,
            "upload" => '0',
            "download" => '0',
            "plan" => $plan,
            "enable" => '0',
            "quota" => $transfer,
            "invite_num" => $invite_num,
            "money" => '0',
            "#reg_date" =>  'NOW()',
            "ref_by" => $ref_by,
        ]);
    }

}
