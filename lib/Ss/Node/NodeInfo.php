<?php


namespace Ss\Node;


class NodeInfo extends \Ss\Etc\Db {

    private $table = "ss_node";

    function NodeArray(){
        $datas = $this->db->select($this->table,"*",[
            "id" => $this->id,
            "LIMIT" => "1"
        ]);
        return $datas['0'];
    }

    function Name(){
	return $this->NodeArray()['node_name'];
    }

    function Server(){
        return $this->NodeArray()['node_server'];
    }
    function Port(){
        return $this->NodeArray()['port'];
    }

    function Del(){
        $this->db->delete($this->table,[
            "id" => $this->id
        ]);
    }

    function Update($node_name,$node_type,$node_server,$node_info,$node_order,$port){
        $this->db->update("ss_node", [
            "node_name" => $node_name,
            "node_type" => $node_type,
            "node_server" => $node_server,
            "node_info" => $node_info,
            "node_order" =>  $node_order,
            "port" =>  $port
        ],[
            "id[=]"  => $this->id
        ]);
        return 1;
    }
}
