
var when_page_is_ready = function() {
  console.log("am i here")
  $(document.body).on("click", "a.change_workflow", function() {
    console.log ("can we see this")
    $.ajax({
      type: "PATCH",
      url: $(this).attr("que_url"),
      dataType: "script"
    })
  });
  $(".flash_message").fadeOut(2000)
}
$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);