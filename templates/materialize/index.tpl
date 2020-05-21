<!DOCTYPE html>
<html lang="zh-cn">
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
<meta name="theme-color" content="#293696">
<{include file='source.tpl'}>
<title>ホームページ -<{$site_name}></title>
<{include file='header.tpl'}>
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1">
					<link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
						<h1 class="content-heading" style="font-family: Orbitron;"><{$site_name}></h1>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-lg-push-1 col-sm-10 col-sm-push-1">
					<section class="content-inner margin-top-no">
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="text-center">
										<{$index_Announcement}>
										<div class="col-lg-6 col-md-6 col-sm-12">
											<a class="btn btn-block btn-brand waves-attach waves-light" href="/user">ログイン</a>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-12">
											<a class="btn btn-block btn-brand-accent waves-attach waves-light" href="/auth/register.php">新規登録</a>
										</div>
										<p>&nbsp;</p>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-10 col-lg-push-1 col-sm-10 col-sm-push-1">	
					<section>
						<h2 class="content-sub-heading">クライアントのダウンロード</h2>
						<p>以下は<{$site_name}>の推奨ソフトウェアです。これらのソフトウェアに対して技術サポートを提供します。</p>
						<div class="tile-wrap">
							<div class="col-lg-3 col-md-6 col-sm-6">
								<div class="card card-brand-accent">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">Windows</p>
											<p>Clash for Windows</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light" href="https://github.com/Fndroid/clash_for_windows_pkg/releases"><i class="icon icon-lg">file_download</i>&nbsp;ダウンロード</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-sm-6">
								<div class="card card-brand">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">Mac OS</p>
											<p>ClashX</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light" href="https://github.com/yichengchen/clashX/releases"><i class="icon icon-lg">file_download</i>&nbsp;ダウンロード</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-sm-6">
								<div class="card card-brand-accent">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">Android</p>
											<p>Clash for Android</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light" href="https://play.google.com/store/apps/details?id=com.github.kr328.clash"><i class="icon icon-lg">file_download</i>&nbsp;ダウンロード</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-sm-6">
								<div class="card card-brand">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">iOS</p>
											<p>シャドウロケット</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light" href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8"><i class="icon icon-lg">file_download</i>&nbsp;ダウンロード</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</main>
</body>
<p><{include file='footer.tpl'}></p>
