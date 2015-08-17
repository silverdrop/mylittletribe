<section class="blog-wrap clearfix">
    <article class="leftcol">
      <h1 id="fittext1"><span>Blog</span></h1>
      <div class="border-1"></div>
      <aside>
        <ul>
		  <% control RecentPosts %>
        	<li><a class="btn arrow-$Color" href="$Link"><span class="text"><span class="icon"></span>$Title</span></a></li>
		  <% end_control %>
        </ul>
      </aside>
      <aside class="filter-month">
        <ul>
          	<li>
				<a class="filter-month-btn" href="#">Filter By Month <span><img src="{$ThemeDir}/images/arrow-v.png" alt=" "></span></a>
				<% if ArchiveDates %>
				<ul>
					<% control ArchiveDates %>
					<li><a href="$Link">$Date.Format(M Y)</a></li>
					<% end_control %>
				</ul>
				<% end_if %>
			</li>
        </ul>
        <ul class="thumbnails example-sites">
			$Sidebar
        </ul>
      </aside>
    </article>
    <article class="rightcol blogArticleHolder">
	  <div id="BlogInfiniteScroll">
	  <% control BlogEntries %>
      <article class="blog_img post">
		<a href="$Link">
			<section>
				<div class="leftblogTitle">
					<time>$Date.Format(d F y)</time>
					<p>$Tags</p>
				</div>
				<div class="rightblogTitle">
					<h2>$Title <span class="readMore">read more &gt; </span></h2>
				</div>
			</section>
			$BlogImage
		</a>
	  </article>
	  <% end_control %>
	  </div>
	  <% if BlogEntries.MoreThanOnePage %>
      <article class="links_blog clearfix hidePagination" id="blogPagination">
			<% control BlogEntries.Pages %>
				<% if Link %>
					<a href="$Link" title="View page number $PageNum">$PageNum</a>
				<% end_if %>
			<% end_control %>
	  </article>
	  <% end_if %>
    </article>
    <!-- end rightcol --> 
</section>
<!-- end about-wrap -->