<!DOCTYPE html>
<html lang="zh-cn">
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
<meta name="theme-color" content="#293696">
<{include file='source.tpl'}>
<title>系统信息 -<{$site_name}></title>
<{include file='user/header.tpl'}>
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">系统信息&nbsp;<small>System Information</small></h1>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1">
					<section class="content-inner margin-top-no">
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="text-center">
										<p>统计信息仅供参考<small>The statistical data is only for your information</small></p>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="text-center">
										<p>当前时间：<{$time}></p>
										<p><{$site_name}> 版本：<span class="label label-brand-accent"><{$version}></span></p>
										<p><{$site_name}> 已经产生流量<span class="label label-brand-accent margin-left-sm margin-right-sm"><{$getTrafficGB}></span>GB</p>
										<p>有<span class="label label-brand-accent margin-left-sm margin-right-sm"><{$allUserCount}> </span>个用户选择了<{$site_name}> 站点</p>
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
<{include file='footer.tpl'}>
</html>
