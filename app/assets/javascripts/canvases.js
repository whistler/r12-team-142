$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  var converter = new Showdown.converter();

  $('.best_in_place').bind("ajax:success", function(){
    var new_html = converter.makeHtml($(this).html());
    $(this).html(new_html);
  });

});