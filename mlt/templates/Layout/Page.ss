<section class="about-wrap clearfix">
    <article class="span8<% if ImageOrVideo %><% else %> noImage<% end_if %>">
      <a href="$TopPage.Link" class="headerHolder"><h1 id="fittext1" class="title"><span>$TopPage.Title</span></h1></a>
      <div class="verticalslider textExample clearfix">
		
        <ul class="verticalslider_tabs">
		<% if Menu(2) %>
		  <% loop Menu(2) %>
          <li<% if LinkOrSection = section %> class="activeTab"<% end_if %>>
				<a href="$Link">$Title</a>
				<% if LinkOrSection = section %><div class="arrow">&nbsp;</div><% end_if %>
		  </li>
		  <% end_loop %>
		<% end_if %>
        </ul>
        <div class="verticalslider_contents clearfix">
			<article class="contentContainer">
          		$Content
				$Form
			</article>
        </div>
      </div>
    </article>
    <!-- end span8 -->
    <% if ImageOrVideo %>
    <article class="span5 last-l pageimage" id="videoContainer">
		<% if VimeoID %>
			<iframe src="http://player.vimeo.com/video/{$VimeoID}?title=0&amp;byline=0&amp;portrait=0" width="456" height="256" id="SidebarVimeoVideo" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
		<% else %>
			$PageImage
		<% end_if %>
	</article>
	<% end_if %>
    <!-- end span5 --> 
  </section>
