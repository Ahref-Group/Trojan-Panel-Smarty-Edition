<?php
require_once '_main.php';
$invite = new \Ss\User\Invite($uid);
$code = $invite->CodeArray();
$smarty->assign('InviteNum',$U->InviteNum());
// $smarty->assign('data',$data);
$smarty->assign('code',$code);
$smarty->assign('oo',$oo);
$smarty->assign('a',$a=1);
$varsarray = get_defined_vars();
$smarty->display('user/invite.tpl');
?>
