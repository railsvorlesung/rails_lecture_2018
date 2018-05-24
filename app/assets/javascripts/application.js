// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
// require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .
//


jQuery(document).ready(function() {
  jQuery('.markdown-editor-wysiwyg').each(function(index, element) {
    new SimpleMDE({ element: element });
  })

  jQuery('img#zoom').hover(function() {
    jQuery(this).stop();
    jQuery(this).animate({
      height: '300px',
      width:  '300px',
      opacity: 0.8
    }, 250);
  }, function() {
    jQuery(this).stop();
    jQuery(this).animate({
      height: '70px',
      width:  '70px',
      opacity: 1.0
    }, 250);
  });


  jQuery('.blog-post-entry').hover( function(){
    console.log(this);
    jQuery(this).stop();
    jQuery(this).animate({
      marginLeft: '-25px'
    }, 65);

  }, function(){
    jQuery(this).stop();
    jQuery(this).animate({
      marginLeft: '-15px'
    } ,125);
  });
});
