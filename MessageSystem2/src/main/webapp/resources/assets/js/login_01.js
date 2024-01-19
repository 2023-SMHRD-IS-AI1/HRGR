$(document).ready(function(){
    let reset  = $(".links").find("li").find("#reset")  ; 
   
   //----------- reset ---------------------
   reset.on("click",function(e){
     e.preventDefault();
     $(this).parent().parent().siblings("form")
     .find(".join_form").find(".form-control").val("");
   })
   reset.on("click",function(e){
     e.preventDefault();
     $(this).parent().parent().siblings("form")
     .find(".join_form").find(".form-check-input").prop("checked", false);
   })
});