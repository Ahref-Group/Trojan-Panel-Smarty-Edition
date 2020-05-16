<?php
require_once '_main.php';

if(!empty($_POST)){
    $node_name     = $_POST['node_name'];
    $node_type     = $_POST['node_type'];
    $node_server   = $_POST['node_server'];
    $node_info     = $_POST['node_info'];
    $node_order    = $_POST['node_order'];
	$port          = $_POST['port'];
    $node = new Ss\Node\Node();
    $query = $node->Add($node_name,$node_type,$node_server,$node_info,$node_order,$port);
    if($query){
        $ue['code'] = '1';
        $ue['ok'] = '1';
        $ue['msg'] = "添加成功!";
        $ue['msg'] .= "<script>window.setTimeout(\"location.href='node.php'\", 2000);</script>";
    }
    echo json_encode($ue,JSON_UNESCAPED_UNICODE);
}else{
    $smarty->display('admin/node_add.tpl');
}
?>
