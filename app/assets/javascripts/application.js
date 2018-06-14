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
//= require cookieconsent
//= require_tree .
//


BlogLibrary = {};

BlogLibrary.registerHooks = function() {
  jQuery('#add-new-chapter').on('click', function(event) {
    var form_chapter = jQuery('.new-chapter').last().clone();

    var next_form_count = parseInt(
      form_chapter.html().match(/\[(\d+)\]/)[1],
      10
    ) + 1;

    form_chapter = String.replace(
      form_chapter.get()[0].outerHTML,
      /\[\d+\]/,
      '[' + next_form_count +']'
    );

    jQuery('fieldset.chapters').append(form_chapter);
    BlogLibrary.registerDynamicHooks();
  });

  BlogLibrary.registerDynamicHooks();
};

BlogLibrary.registerDynamicHooks = function() {
  jQuery('.markdown-editor-wysiwyg').each(function(index, element) {
    new SimpleMDE({ element: element });
  })
  jQuery('.remove-chapter').on('click', function(event) {
    var target = jQuery(event.currentTarget);
    var chapter_block = jQuery(target.parents()[2]);
    if (chapter_block.hasClass('new-chapter')) {
      chapter_block.remove();
    } else {
      console.log(chapter_block.find('input[type=hidden]'))
      chapter_block.find('input[type!=hidden]').prop('disabled', true);
      chapter_block.find('input[type=hidden]').prop('disabled', false);
      chapter_block.hide();

    }
  });
};


// Callback welcher ausgeführt wird, wenn die Seite komplett geladen ist
jQuery(document).ready(function() {
  BlogLibrary.registerHooks();

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
