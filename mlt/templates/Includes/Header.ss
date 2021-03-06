<header class="header">
<div class="container divider">
	<a class="brand" href="$BaseHref"><img src="{$ThemeDir}/images/logo.png" alt=" "></a>
	<nav>
	<a class="toggleNav"></a>
	<ul class="nav">
		<% loop $Menu(1) %>
	        <li class="$ClassName<% if LinkOrSection = section %> active<% end_if %>">
	            <a href="$Link" title="Go to the $Title page" class="$LinkingMode">
	                $MenuTitle.XML
	            </a>

                <% if $Children %>
                    <ul class="secondary">
                        <% loop $Children %>
                            <li<% if LinkOrSection = section %> class="activeTab"<% end_if %>><a href="$Link">$MenuTitle</a></li>
                        <% end_loop %>
                    </ul>
                <% end_if %>
	        </li>
	    <% end_loop %>


	    <li class="blogLink">
	       <a href="{$BlogLink}" class="link">Blog</a>
		</li>
	</ul>
	</nav>
	<% if BlogLink %>
	<div class="blog">
		<a href="{$BlogLink}"><img src="{$ThemeDir}/images/blog.png" class="grey"></a>
		<img src="{$ThemeDir}/images/blog-hover.png" class="color">
	</div>
	<% end_if  %>
	<!-- end blog -->
</div>
<!-- end container -->
</header>