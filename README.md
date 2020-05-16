This Version is based on xuanhuan's [SS-Panel-smarty](https://github.com/xuanhuan/ss-panel).

========

本软件基于[SS-Panel-smarty-Edition](https://github.com/Ahref-Group/SS-Panel-smarty-Edition)修改而来，仍有巨大多的冗余代码，已对Trojan-GFW兼容支持，大多数功能都可正常使用，有什么问题不要发issus了，能写完自己提交合并的最好都自己弄，一个5年前的破玩意凑合用嘛。
前端页面有一部分是日语的，强迫症的可以自己汉化回去。
========

========

重要/Important!
========
This edition requires Chrome or FireFox for compatible functioning and surfing. <br/>
为保证兼容性，请使用 Chrome 或 FireFox。

Please edit the file `/lib/config-sample.php` upon your own need, when you finished, rename the file to `/lib/config.php`. Set `$site_url` as your website address, and be sure that it contains a `/` at the end of your URL. <br/>
请按需修改 `/lib/config-sample.php` 的设置，然后把文件重命名成 `/lib/config.php`。注意在填写网站网址`$site_url`的时候在结尾加一个 `/`。

Please rename the `/lib/Ss/Code/config-sample.php` to `/lib/Ss/Code/config.php`.
请重命名 `/lib/Ss/Code/config-sample.php` 为 `/lib/Ss/Code/config.php`。

Please make sure that `/lib/Ss` has the permission to read & write. If not, please set it for convenience. <br/>
请确保目录 `/lib/Ss` 有读写权限，如果没有请改一下。

Please rename the`/tools`, or you may be reset to another malicious.<br/>
请重命名`/tools`，否则可能被他人恶意重置流量。

========
### AdminSystem 

Please use the invite code to register and set your account as admin in your database.

密码加密方式说明
========

Please change the encrypted salt in /lib/config.php.
We offer「salt sha256」encrytion.

__注意/Attention!：__

* __The `$salt` value can not be changed after it has been set!<br/>__
  __`$salt`在被设置以后不能再次修改！__

* 增加 Nginx 的配置文件 tpl.conf，用于防止直接访问模板文件。 放在当前网站Nginx 配置文件相同目录，然后打开原来的配置文件，找到当前域名的server { } 在里面粘贴：include tpl.conf;
* 增加Apache 的配置文件 .htaccess，用于防止直接访问模板文件，放在当前目录。

### 需求/Requirements
* PHP >= 5.4 <7.x
* PDO Extension
* MCrypt Extension
* Mysql >= 5.1

### 安装/Install
* Import `sql/*.sql` to your MySQL Database<br/>
  将 `sql/*.sql` 导入到 MySQL。
* Rename `lib/config-sample.php` && `lib/Ss/Code/config-sample.php` to `config.php`, and edit the infomation in `lib/config.php`.

* __IMPORTANT:DON'T MANUALLY change `lib/Ss/Code/config.php` after doing above!__
* __IMPORTANT:DON'T MANUALLY change `lib/Ss/Code/config.php` after doing above!__
* __IMPORTANT:DON'T MANUALLY change `lib/Ss/Code/config.php` after doing above!__

* Enjoy it.

### 管理员/Admin
* The user whose `uid` is 1 is the admin by default.<br/>
  UID 为 1 的用户默认为管理员
* You can Add User ID into table `ss_user_admin`<br/>
  你可以在 `ss_user_admin` 表里添加管理员。

### 到期时间与套餐等相关/Information about plan_end_time && plans (and so on)

参阅：/See:

```
https://github.com/Ahref-Group/SS-Panel-smarty-Edition/issues/26
注：Trojan-gfw服务端没有节点组功能，不支持从服务端判断计划允许连接。
```

### 使用 mail-gun 发邮件/Send mail using mail-gun
运行/Run:

```
$ curl -sS https://getcomposer.org/installer | php
$ php composer.phar  install
```


### 感谢/Thanks
* [smarty](https://github.com/smarty-php/smarty)
* [Medoo](https://github.com/catfan/Medoo)
* [phpqrcode](https://github.com/t0k4rt/phpqrcode)
* [pingjs](https://github.com/jdfreder/pingjs)
* [material](https://github.com/Daemonite/material)
* [淘宝IP地址库](http://ip.taobao.com)
* [IPIP.NET](https://www.ipip.net)
