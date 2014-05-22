
console.log("am i here")
var longboard_javascript = function(){
  console.log($("div.board_type"))
  $("div.board_type").on("change", "select", function(){ 
    $.ajax({
      type: "GET",
      dataType: "script",
      url: $(this).attr('board_url'),
      data: {board_type: $(this).val()}
    })
  console.log("how about here?")
  }); 

$("div.graphics").tooltip(); 
$("div.instructions").tooltip();

}

// $('#surfboard_fin_setup')
//     .find('options_for_select')
//     .remove()
//     .end()
//     .append(options_for_select(Surfboard::LONGBOARD_OPTIONS, @surfboard.fin_setup))
// ;

// $("#fin_setup option[value = 'Surfboard::FIN_SETUP']").each(function() {
//     $(this).remove();
// });




$(document).ready(longboard_javascript);
$(document).on("page:load", longboard_javascript);


// if(".board_type" === "longboard")

//     else if(".board_type" === "shortboard"){
      
//     }

//     else if(".board_type" === "funboard") {

//     }

//     else if(".board_type" === "fish") {

//     }