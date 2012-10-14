$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  var converter = new Showdown.converter();

  $('table .best_in_place').bind("ajax:success", function(){
    var markdown = $(this).html();
    var new_html = converter.makeHtml(markdown);
    $(this).data('original-content', markdown);
    $(this).html(new_html);
  });

});