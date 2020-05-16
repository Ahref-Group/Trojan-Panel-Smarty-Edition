-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-05-16 13:34:38
-- 服务器版本： 10.0.38-MariaDB
-- PHP 版本： 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `trojan`
--

-- --------------------------------------------------------

--
-- 表的结构 `invite_code`
--

CREATE TABLE `invite_code` (
  `id` int(32) NOT NULL,
  `code` varchar(128) NOT NULL,
  `user` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `login_ip`
--

CREATE TABLE `login_ip` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ip` char(64) NOT NULL,
  `location` char(255) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `had_read` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `node_info`
--

CREATE TABLE `node_info` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `load_1` varchar(15) DEFAULT NULL,
  `cpu` varchar(15) DEFAULT NULL,
  `upload` varchar(15) DEFAULT NULL,
  `download` varchar(15) DEFAULT NULL,
  `connections` int(11) DEFAULT NULL,
  `memory` varchar(15) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `last_com_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `item` varchar(16) NOT NULL,
  `introduction` varchar(64) NOT NULL,
  `value` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`item`, `introduction`, `value`) VALUES
('common_node', '普通节点公告', '<p>严禁下载AV/版权内容，挂BT/发邮件/发包/试图规避法律的大手子请趁早绕道。</p> '),
('home', '首页公告', '这里是首页公告'),
('pop_up', '全局通知', 'Just a Tset :)'),
('special_node', '高级节点公告', '<p>严禁下载AV/版权内容，挂BT/发邮件/发包/试图规避法律的大手子请趁早绕道。</p> '),
('user_home', '用户中心公告', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YtU_sb4jYE8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
('user_invite', '用户邀请码公告', '<p>用户注册48小时后，才可以生成邀请码。</p>\n<p>邀请码暂时无法购买，请珍惜。</p>\n<p>公共页面不定期发放邀请码，如果用完邀请码可以关注公共邀请。</p>\n<p>邀请码请给认识的需要的人。</p>\n<p>邀请有记录，若被邀请的人违反用户协议，您将会有连带责任。</p>\n<p>邀请有奖励哟</p>');

-- --------------------------------------------------------

--
-- 表的结构 `pay_code`
--

CREATE TABLE `pay_code` (
  `id` int(10) NOT NULL,
  `code_id` int(6) NOT NULL,
  `redeem_time` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan` set('A','B','C','D','E','F') NOT NULL COMMENT '计划类型',
  `plan_id` int(2) NOT NULL COMMENT '计划子编号',
  `type` char(2) NOT NULL COMMENT '计划所规定的类型，如流量等',
  `data` float NOT NULL COMMENT '该子类型所对应的值',
  `money` float NOT NULL COMMENT '价格',
  `introduction` varchar(256) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL COMMENT '购买url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `ss_node`
--

CREATE TABLE `ss_node` (
  `id` int(11) NOT NULL,
  `node_name` varchar(128) NOT NULL,
  `node_type` int(3) NOT NULL,
  `node_server` varchar(128) NOT NULL,
  `node_info` varchar(2048) NOT NULL,
  `port` varchar(128) NOT NULL,
  `node_order` int(3) NOT NULL,
  `load_1` varchar(15) DEFAULT NULL,
  `cpu` varchar(15) DEFAULT NULL,
  `upload` varchar(15) DEFAULT NULL,
  `download` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `ss_reset_pwd`
--

CREATE TABLE `ss_reset_pwd` (
  `id` int(11) NOT NULL,
  `init_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uni_char` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `ss_user_admin`
--

CREATE TABLE `ss_user_admin` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ss_user_admin`
--

INSERT INTO `ss_user_admin` (`id`, `uid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `user_name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(32) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `password` char(56) NOT NULL,
  `display_pwd` varchar(56) NOT NULL DEFAULT '请重新发行密码',
  `upload` bigint(20) NOT NULL,
  `download` bigint(20) NOT NULL,
  `plan` varchar(2) CHARACTER SET utf8mb4 NOT NULL,
  `quota` bigint(20) NOT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `last_get_gift_time` int(11) NOT NULL DEFAULT '0',
  `last_check_in_time` int(11) NOT NULL DEFAULT '0',
  `last_rest_pass_time` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL,
  `invite_num` int(8) NOT NULL,
  `money` decimal(12,2) NOT NULL,
  `ref_by` int(11) NOT NULL DEFAULT '0',
  `plan_end_time` bigint(11) NOT NULL,
  `message` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `invite_code`
--
ALTER TABLE `invite_code`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `login_ip`
--
ALTER TABLE `login_ip`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `node_info`
--
ALTER TABLE `node_info`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`item`),
  ADD UNIQUE KEY `item_2` (`item`),
  ADD KEY `item` (`item`);

--
-- 表的索引 `pay_code`
--
ALTER TABLE `pay_code`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ss_node`
--
ALTER TABLE `ss_node`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ss_reset_pwd`
--
ALTER TABLE `ss_reset_pwd`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ss_user_admin`
--
ALTER TABLE `ss_user_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `invite_code`
--
ALTER TABLE `invite_code`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `login_ip`
--
ALTER TABLE `login_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `node_info`
--
ALTER TABLE `node_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pay_code`
--
ALTER TABLE `pay_code`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ss_node`
--
ALTER TABLE `ss_node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ss_reset_pwd`
--
ALTER TABLE `ss_reset_pwd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ss_user_admin`
--
ALTER TABLE `ss_user_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `node_info`
--
ALTER TABLE `node_info`
  ADD CONSTRAINT `node_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `ss_node` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
