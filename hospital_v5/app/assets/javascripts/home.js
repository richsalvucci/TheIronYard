// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function() {
  $(".submit").hide();
  $(".object-name").keyup(function() {
    if ($(".object-name").val())
    $(".submit").show();
    $(".required").fadeOut(2000);
  });

  $(".notice").fadeOut(2000);

  pageLength = 10;

  displayPage = function(page){
    $(".patient").hide();
    $(".patient").each(function(p){
      if(p >= pageLength * (page - 1) && p < pageLength * page)
        $(this).show();
      
    });
  }

  displayPage(1);

  $(".link li a").click(function() {
      displayPage(parseInt($(this).text()))
  });



















});