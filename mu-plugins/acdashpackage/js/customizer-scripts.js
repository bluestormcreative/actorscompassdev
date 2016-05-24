jQuery(document).ready(function($){

  $('.ac-admin-bar, .poweredby').hide();

  if ($('#main h1#name').text().length < 1) {
    $('#main h1#name').text('Your Name Here').addClass('empty-text');
  }

  if ($('img.headshot').attr('src').length < 1) {
    $('img.headshot').attr('src', '/wp-content/themes/AClite/img/avatar.jpg');
  }

  if ($('#main .bio').children().length < 1) {
    $('#main .bio').html('<div class="empty-box"><span class="overlay-text empty-text">Add your 1-paragraph bio</span></div>');
  }

  if ($('#main .reel').children().length < 1) {
    $('#main .reel').html('<div class="empty-box"><span class="overlay-text empty-text">Upload your reel</span></div>');
  }

  if ($('#main .credits').children().length < 1) {
    $('#main .credits').html('<div class="empty-box"><span class="overlay-text empty-text">Add your 5 best credits</span></div>');
  }

  if ($('#main .training').children().length < 1) {
    $('#main .training').html('<div class="empty-box"><span class="overlay-text empty-text">Add your training</span></div>');
  }

  if ($('#main .skills').children().length < 1) {
    $('#main .skills').html('<div class="empty-box"><span class="overlay-text empty-text">Add your skills</span></div>');
  }

  if ($('#main .representation').children().length < 1) {
    $('#main .representation').html('<div class="empty-box"><span class="overlay-text empty-text">Add your representation</span></div>');
  }


});
