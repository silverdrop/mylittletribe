<section class="blog-wrap clearfix">
    <article class="leftcol">
 	<a href="$TopPage.Link" class="headerHolder"><h1 id="fittext1"><span>$TopPage.Title</span></h1></a>
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
          	<li> <a class="filter-month-btn" href="#">Filter By Month <span><img src="{$ThemeDir}/images/arrow-v.png" alt=" "></span></a>
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
      <article class="blog_img">
        <article class="para clearfix">
		  <section class="articleHeader">
          	<h1>$Title</h1>
          	<p class="authorDate">
				<span>$Date.Format(d M Y) |</span><% if Author %><span class="light-gray">POSTED BY: $Author</span><% end_if %>
				<span class="tagCollection">$TagsWithLinks</span>
			</p>
		  </section>
          $BlogImage
		  <section class="wysiwyg">	
          $Content
		  </section>
		  <div class="shareZone">
			  <span class='st_fblike_hcount' displayText='Facebook Like'></span>
			  <span class='st_twitter_hcount' displayText='Tweet'></span>
		  </div>
		  $PageComments
        </article>
      </article>
      <article class="links_blog clearfix">
			<% if PreviousPost %><a class="f-left" href="$PreviousPost.Link">< Previous post</a><% end_if %>
			<% if NextPost %><a class="f-right" href="$NextPost.Link">Next post ></a> <% end_if %>
	  </article>
    </article>
    <!-- end rightcol --> 
  </section>
