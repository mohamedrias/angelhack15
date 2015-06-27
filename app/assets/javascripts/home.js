// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $("#location").click(function(e){
    e.preventDefault();
    console.log("loc");
    $.ajax({
      url: 'locations',
      data: {
        one_teacher :$('input[name="destination"]').val()
      },
      dataType: "script",
      success:function(){
        new AnimOnScroll( document.getElementById('grid'), {
          minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
        } );
      }
    });

  });
})
