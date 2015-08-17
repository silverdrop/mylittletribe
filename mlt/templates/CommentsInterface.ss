<article class="comment-area">
    <h3>$Comments.Count comment</h3>
	<% if Comments %>
		<% loop Comments %>
    	<h4> <span> <img src="{$ThemeDir}/images/comment.png" alt=" "> </span> $AuthorName.XML | $Created.Format(d M' y - h:i:a)</h4>
    	<p>$Comment.XML</p>
		<% end_loop %>
	<% end_if %>

	
	<% if AddCommentForm %><% if CanPost %>
    <article class="form-wrap">
      <h3>Leave comment</h3>
		$AddCommentForm
    </article>
	<% end_if %><% end_if %>
    <!-- end form-wrap --> 
  </article>