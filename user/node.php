<?php
ini_set("display_errors", "On");
error_reporting(E_ALL | E_STRICT);
require_once '_main.php';

$node = new Ss\Node\Node();
$node0 = $node->NodesArray(0); // 普通节点数组
$node1 = $node->NodesArray(1); // Pro节点数组
//Get Node DATA
//这个地方把ss的链接直接扔到node1，2里面去了，
foreach ($node0 as &$node_info) {
    $node_info['qr'] = get_ss_url($node_info['id']);
}


foreach ($node1 as &$node_info) {
    $node_info['qr'] = get_ss_url($node_info['id']);
}

$smarty->assign('plan', $oo->get_plan());
$smarty->assign('oo',$oo);
$smarty->assign('node',$node);
$smarty->assign('node0',$node0);
$smarty->assign('node1',$node1);
$varsarray = get_defined_vars();
$smarty->display('user/node.tpl');


//加了个base64_url_encode(来自v3魔改版)
function base64_url_encode($input){
	return strtr(base64_encode($input), array('+' => '-', '/' => '_', '=' => ''));
}

function get_ss_url($id){
    $node = new \Ss\Node\NodeInfo($id);
    global $oo;
	$name =  $node->Name();
    $server =  $node->Server();
    $pass = $oo->get_pass();
    $port = $node->Port();
    $ssurl = $pass."@".$server.":".$port;
    return "trojan://"."".$ssurl;
	
	
}


?>
