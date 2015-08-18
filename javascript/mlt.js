/*
	By Osvaldas Valutis, www.osvaldas.info
	Available for use under the MIT License
*/
;(function(e,t,n,r){e.fn.doubleTapToGo=function(r){if(!("ontouchstart"in t)&&!navigator.msMaxTouchPoints&&!navigator.userAgent.toLowerCase().match(/windows phone os 7/i))return false;this.each(function(){var t=false;e(this).on("click",function(n){var r=e(this);if(r[0]!=t[0]){n.preventDefault();t=r}});e(n).on("click touchstart MSPointerDown",function(n){var r=true,i=e(n.target).parents();for(var s=0;s<i.length;s++)if(i[s]==t[0])r=false;if(r)t=false})});return this}})(jQuery,window,document);

(function($){
	$("document").ready(function(){
		$(".SubscribeToWidget").click(function(){
			$("#MailChimpHolder").fadeIn();
			$("#Curtain").fadeIn();
			return false;
		});

		$("#CloseMailChimp").click(function(){
			$("#MailChimpHolder").fadeOut();
			$("#Curtain").fadeOut();
			return false;
		});
		
		$("#mc-embedded-subscribe").click(function(){
			window.setTimeout(function(){
				$("#MailChimpHolder").fadeOut();
				$("#Curtain").fadeOut();
			}, 2000);
		});
		
	});
	
	$(".toggleNav").click(function(){$("nav").toggleClass('open')});
	$( '.nav li:has(ul)' ).doubleTapToGo();
	
	if(document.getElementById("SidebarVimeoVideo")){
		
		$(document).ready(setSidebarVideoSize);
		
		$(window).resize(setSidebarVideoSize)
		
		function setSidebarVideoSize(){
			var newWidth = $("#videoContainer").width();
			var newHeight = (newWidth * 256) / 456;
			document.getElementById("SidebarVimeoVideo").width = newWidth;
			document.getElementById("SidebarVimeoVideo").height = newHeight;
			$("#videoContainer").css("height", newHeight);
		}
		
	}
	
	
	if(document.getElementById("BlogInfiniteScroll")){
		$('#BlogInfiniteScroll').infinitescroll({
		  loading: {
		    finished: undefined,
		    finishedMsg: "<em>Congratulations, you've reached the end of the internet.</em>",
		    img: "http://www.infinite-scroll.com/loading.gif",
		    msg: null,
		    msgText: "<em>Loading the next set of posts...</em>",
		    selector: null,
		    speed: 'fast',
		    start: undefined
		  },
		  state: {
		    isDuringAjax: false,
		    isInvalidPage: false,
		    isDestroyed: false,
		    isDone: false, // For when it goes all the way through the archive.
		    isPaused: false,
		    currPage: 1
		  },
		  callback: undefined,
		  debug: false,
		  behavior: undefined,
		  binder: $(window), // used to cache the selector
		  nextSelector: "#blogPagination a:first",
		  navSelector: "#blogPagination",
		  contentSelector: null, // rename to pageFragment
		  extraScrollPx: 150,
		  itemSelector: ".post",
		  animate: false,
		  pathParse: undefined,
		  dataType: 'html',
		  appendCallback: true,
		  bufferPx: 40,
		  errorCallback: function () { },
		  infid: 0, //Instance ID
		  pixelsFromNavToBottom: undefined,
		  path: undefined
		});
		
	}
	
	$("#mc-embedded-subscribe-form").find("input[type='text'],input[type='email']").focus(function(){
		var value = $(this).val();
		var original = $(this).attr('original');
		if(value == original){
			$(this).val("");
		}
	});
	$("#mc-embedded-subscribe-form").find("input[type='text'],input[type='email']").blur(function(){
		var value = $(this).val();
		var original = $(this).attr('original');
		if(value == ""){
			$(this).val(original);
		}
	});
	
	
	$.each($("#Form_CommentsForm").find("input[type='text'],input[type='email'],textarea"), function(){
		$(this).attr("original", $(this).val());
	});
	
	$("#Form_CommentsForm").find("input[type='text'],input[type='email'],textarea").focus(function(){
		var value = $(this).val();
		var original = $(this).attr('original');
		if(value == original){
			$(this).val("");
		}
	});

/*	$("#Form_CommentsForm").find("input[type='text'],input[type='email'],textarea").blur(function(){
		var value = $(this).val();
		var original = $(this).attr('original');
		if(value == ""){
			$(this).val(original);
		}
	});
*/	
	$("#Form_CommentsForm").validate({
		rules: {
			Name: "required",
			Email: "required",
			Comment: "required"
		},
		messages: {
			Email: "Please enter your email",
			Name: "Please enter your  name",
			Comment: "Please enter your comments"
		}
	});
	
	$("#mc-embedded-subscribe-form").validate({
			rules: {
				EMAIL: "required",
				FNAME: "required",
				LNAME: "required",
				//MMERGE4: "required"//,
				//EMAILTYPE: "required"
			},
			messages: {
				EMAIL: "Please enter your email",
				FNAME: "Please enter your first name",
				LNAME: "Please enter your surname",
				//MMERGE4: "Please enter your contact number"//,
			//	EMAILTYPE: "Please enter the email type you wish to recieve"
			}
		});
		
		$('section .thumbnails li').last().css({background: 'none', paddingBottom: '0px',marginBottom: '0px'});
	//	stLight.options({publisher: "ur-f96a53a5-c79e-96a7-fa3d-7f5954e56d96"});
	
})(jQuery);



jQuery("form").find("input[type='text'], textarea, input[type='email']").focus(function(){
	if(jQuery(this).val() == ""){
		jQuery(this).parent().parent().find("label").hide();
	}
});

jQuery("form").find("input[type='text'], textarea, input[type='email']").blur(function(){
	if(jQuery(this).val() == ""){
		jQuery(this).parent().parent().find("label").show();
	}
});
