<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
	
	<% base_tag %>
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	<script type="text/javascript" src="//use.typekit.net/hll3gio.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	<script type='text/javascript' src='{$BaseHref}mysite/javascript/css3-mediaqueries.js'></script>
	<script type='text/javascript' src='{$BaseHref}mysite/javascript/modernizr.js'></script>
</head>
<body data-spy="scroll" data-target=".subnav" data-offset="50">
	<div class="pageWrapper">
		<div class="container">
			<% include Header %>
			$Layout
		</div>
		<% include Footer %>
		<% include MailChimp %>
	</div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-33617595-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>