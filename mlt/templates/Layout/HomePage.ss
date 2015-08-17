<section class="slider-wrapper home-slider-wrapper">
	<div class="flexslider">
		<ul class="slides">
			<% loop Slides %>
				<li>$Image.HomeSlide</li>
			<% end_loop %>
		</ul>
	</div>
	<section>
		<ul class="thumbnails example-sites">
			$Sidebar
		</ul>
	</section>
</section>
<!-- end slider-wrapper -->
<section class="tagline-wrap cam clearfix">
	<article class="tagline">$Intro<span><img src="{$ThemeDir}/images/camara.png" alt=" "></span></article>
	<!-- end tagline -->
</section>
<!-- end tagline-wrap -->
<section class="photgraphy-testimonial-wrap clearfix">
	<div class="titleRow">
		<h2>$AboutTitle</h2>
		<h2 class="last">$TestimonialTitle</h2>
	</div>
	<div class="contentRow">
		<article class="span6">
			$AboutContent
			<a href="$AboutPageLink" class="readmore"><span><img src="{$ThemeDir}/images/arrow.png" alt=" "></span>$AboutLinkText</a>
		</article>
		<!-- end span6 -->
		<article class="span6 last">

			$TestimonialContent
			<a href="$TestimonialLink" class="readmore"><span><img src="{$ThemeDir}/images/arrow.png" alt=" "></span>$TestimonialLinkText</a></article>
		</article>
		<!-- end span6 -->
	</div>
</section>
<!-- end photgraphy-testimonial-wrap -->