//Show/hide top right social menu
jQuery( document ).ready(function($) {
	

// smooth scroll to anchor links
	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash;
	    var $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 900, 'swing');
	});

//edits to Pro Sites signup page - all using page id 19

	// add our logo instead of the page title
	$('#post-19 h1.entry-title').replaceWith('<img class="logo" src="http://actorscompass.com/wp-content/uploads/2016/01/ac-logo.png" alt="Actors Compass">');

	//replace helper text with our own
	text = $('#post-19 .username').contents().eq(2);
	text.replaceWith('Must be at least 4 characters. Letters and numbers only.');

	emailtext = $('#post-19 .email').contents().eq(3);
	emailtext.replaceWith('We send your registration email to this address so please double-check it before continuing.');

	$('.blogname label').text('Your Website URL:');

	blognametext = 'Do not include spaces or symbols. We recommend you enter your stage name. For example, if you’re known professionally as  Marie Edwin, enter \"marieedwin\" and your site will be \"marieedwin.actorscompass.com\".';
	$('.blogname span').after('<p>'+blognametext+'</p>');

	$('.blog_title label').text('Your Website Title:');

	blogtitletext = 'This is the title of your website. It will appear in the title bar of your web browser. We recommend you enter your stage name with proper capitalization and spacing (example: \"Marie Edwin\").';
	$('.blog_title input').after('<p>'+blogtitletext+'</p>');

	$('#check-prosite-blog').val('Set Up Your Site Now!');

}); // end jquery document ready
