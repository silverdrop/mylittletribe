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
	<article class="tagline"><span><img src="{$ThemeDir}/images/camara.png" alt=" "></span>$Intro</article>
	<!-- end tagline -->
</section>
<!-- end tagline-wrap -->
<section class="photgraphy-testimonial-wrap clearfix">
	<article>
		<h2>$AboutTitle</h2>
		<div class="content">
			$AboutContent
			<a href="$AboutPageLink" class="readmore"><span><img src="{$ThemeDir}/images/arrow.png" alt=" "></span>$AboutLinkText</a>
		</div>
	</article>
	<article class="last">
		<h2>$TestimonialTitle</h2>
		<div class="content">
			$TestimonialContent
			<a href="$TestimonialLink" class="readmore"><span><img src="{$ThemeDir}/images/arrow.png" alt=" "></span>$TestimonialLinkText</a></article>
		</div>
	</article>
</section>
<!-- end photgraphy-testimonial-wrap -->