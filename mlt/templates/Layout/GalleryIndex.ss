<section id="filter-gallery">
    <article id="projects">
      <ul id="filterNav" class="clearfix">
		<% loop Filters %>
        <li><a href="#" data-filter=".{$ClassFilter}">$Title</a></li>
		<% end_loop %>
        <li class="allBtn"><a href="#" data-filter="*" id="allSelectorLink" class="selected">All</a></li>
      </ul>
      <div class="thumbs masonry">
		<% loop Children %>
			<div class="project small ajx <% loop Filters %>{$ClassFilter} <% end_loop %> $IncrementPos">
				<a href="$Link">
					<% with Thumb %><img src="$GalleryIndex.URL" class="padding-background hover-1" /><% end_with %>
				</a>
			</div>
			<% loop Items %>
        	<div class="project small ajx <% loop Page.Filters %>{$ClassFilter} <% end_loop %><% if Fourth %> fourth<% end_if %>">
				<a href="{$Page.Link}?start={$GalleryOrder}">
					<% if Thumb %>
						<% with Thumb %><img src="$GalleryIndex.URL" class="padding-background hover-1" /><% end_with %>
					<% else %>
						<% with Image %><img src="$GalleryIndex.URL" class="padding-background hover-1" /><% end_with %>
					<% end_if %>
				</a>
			</div>
			<% end_loop %>
		<% end_loop %>
      </div>
    </article>
  </section>