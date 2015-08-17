<section class="slider-wrapper background_none">
    <div class="flexslider gallery">
      <ul class="slides">
		<% loop Items %>
        <li caption="$Title" <% if First %>id="gallery-first-image"<% end_if %>>$Image</li>
		<% end_loop %>
      </ul>
    </div>
  </section>
  <!-- end slider-wrapper -->
  
  <section class="gallery-button-area clearfix"> 
	<a href="$Parent.Link" class="readmore"><span><img src="{$ThemeDir}/images/arrow-left.png" alt=" "></span>Gallery Index</a>
    <article class="slide-caption" id="slide-caption"></article>
    <a href="#" class="readmore f-right" id="sliderStartStop"><span class="arrow"><img src="{$ThemeDir}/images/arrow.png" alt=" "></span><span id="slideShowText">SlideShow</span></a> </section>
  <!-- end gallery-button-area -->
  
  <section class="page-info-wrap clearfix">
    <article class="page-info"> 
		<span><img src="{$ThemeDir}/images/camara2.png" alt=" "></span>
      	<p>You Are Here: <small>{$Title}</small></p>
    </article>
	<% if OtherGalleries %>
    <article class="gallery-nav">
		<span><img src="{$ThemeDir}/images/arow-orange.png" alt=" "> More galleries:</span> <% control OtherGalleries %><a href="$Link">$Title</a><% end_control %>
	</article>
	<% end_if %>
    <!-- end gallery-nav --> 
    
  </section>
  <!-- end page-info-wrap --> 
