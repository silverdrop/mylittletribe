<!-- /container -->
<footer class="footer-wrapper"><div class="center">
	<% if ClassName == BlogEntry %>
		<div class="girl"></div>
	<% else_if ClassName == BlogHolder  %>
		<div class="girl"></div>
	<% end_if %>
<div class="footer clearfix">
	<div class="social-footer">
		<span>find us on:</span>
			<% if SiteConfig.PinterestLink %><a href="$SiteConfig.PinterestLink" target="_blank"><img src="{$ThemeDir}/images/p.png" alt=" "></a><% end_if %>
			<% if SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank"><img src="{$ThemeDir}/images/twitter-footer.png" alt=" "></a><% end_if %>
			<% if SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank"><img src="{$ThemeDir}/images/facebook.png" alt=" "></a><% end_if %>
			<% if SiteConfig.InstagramLink %><a href="$SiteConfig.InstagramLink" target="_blank"><img src="{$ThemeDir}/images/instagramIcon.png" alt=" "></a><% end_if %>
	</div>
	<!-- end social-footer -->
	<div class="footer-logo">
		<a href="http://www.aipp.com.au/" target="_blank"><img src="{$ThemeDir}/images/logo-footer.png" alt=" "></a>
	</div>
	<!-- end footer-logo -->
	<div class="sitemap">
		<% if ContactPageLink %><a href="$ContactPageLink">contact us</a><% end_if %>
		<a href="#" class="SubscribeToWidget">SUBSCRIBE FOR UPDATES</a>
		<% if PrivacyPolicyLink %><a href="$PrivacyPolicyLink">PRIVACY POLICY</a><% end_if %>
		<a href="http://thebitleague.com/" target="_blank">SITE BY BIT LEAGUE</a>
	</div>
	<!-- end sitemap -->
</div>
<!-- end footer -->
</div></footer>
<!-- end footer-wrapper -->