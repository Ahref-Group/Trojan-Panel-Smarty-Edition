<body class="page-brand">
	<header class="header header-transparent header-waterfall ui-header">
		<ul class="nav nav-list pull-left">
			<li>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg">menu</span>
				</a>
			</li>
		</ul>
		<link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
		<a class="header-logo margin-left-no" href="/panel.php" style="font-family: Orbitron;"><{$site_name}></a>
		<ul class="nav nav-list pull-right">
			<li class="dropdown margin-right">
				<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
				    <p></p>
					<span class="access-hide">User Head</span>
					<span class="avatar avatar-sm"><img alt="alt text for John Smith avatar" src="https://secure.gravatar.com/avatar/253c7d9e9039f0d2b61615ea280ecb3e?s=80&d=mm&r=g"></span>
				</a>
				<ul class="dropdown-menu dropdown-menu-right">
					<li>
						<a class="padding-right-lg waves-attach" href="/user"><i class="icon icon-lg">account_circle</i>&nbsp;お客様センター</a>
					</li>
					<li>
						<a class="padding-right-lg waves-attach" href="/auth/register.php"><i class="icon icon-lg">add</i>&nbsp;新規登録</a>
					</li>
				</ul>
			</li>
		</ul>
	</header>
	<nav aria-hidden="true" class="menu" id="ui_menu" tabindex="-1">
		<div class="menu-scroll">
			<div class="menu-content">
				<a class="menu-logo" href="/panel.php" style="font-family: Orbitron;"><{$site_name}></a>
				<ul class="nav">
					<li>
						<a class="waves-attach" href="/panel.php">ホームページ</a>
					</li>
					<li>
						<a class="waves-attach" href="/user">ログイン</a>
					</li>
					<li>
						<a class="waves-attach" href="/auth/register.php">新規登録</a>
					</li>
					<li>
						<a class="waves-attach" href="/tos.php">利用规约</a>
					</li>
					<li>
						<a class="waves-attach" href="/code.php">招待コード</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
