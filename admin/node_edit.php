<?php
error_reporting(E_ALL);
ini_set("display_errors", "On");
require_once '_main.php';

//更新
if(!empty($_POST)){
    $node_name     = $_POST['node_name'];
    $node_type     = $_POST['node_type'];
    $node_server   = $_POST['node_server'];
    $node_info     = $_POST['node_info'];
    $node_order    = $_POST['node_order'];
	$port          = $_POST['port'];
    $node = new \Ss\Node\NodeInfo($node_id);
    $query = $node->Update($node_name,$node_type,$node_server,$node_info,$node_order,$port);
    if($query){
        $ue['code'] = '1';
        $ue['ok'] = '1';
        $ue['msg'] = "更新成功!";
        $ue['msg'] .= " <script>window.setTimeout(\"location.href='node.php'\", 2000);</script> ";
    }
    echo json_encode($ue,JSON_UNESCAPED_UNICODE);
}else{
  
if(!empty($_GET)){
    //获取id
    $id = $_GET['id'];
    $node = new \Ss\Node\NodeInfo($id);
    $rs = $node->NodeArray();
}
$smarty->assign('id',$id);
$smarty->assign('rs',$rs);
$smarty->display('admin/node_edit.tpl');
}
?>
