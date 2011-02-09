$(document).ready(function(){
  $(".overlay, .shroud").hide();
  $(".entry").click(function(){
    $(".shroud").fadeIn(200);
    $('#'+$(this).attr('id')+"over").fadeIn(100);
    return false;
  });
  
  $(".shroud").click(function(){
    $(this).fadeOut(300);
    $(".overlay").fadeOut(200);
  });
  
  $(document).keydown(function(e){
    if (e.keyCode == 27){
      $(".shroud").fadeOut(300);
      $(".overlay").fadeOut( 200);
    }
  });
});