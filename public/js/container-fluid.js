$(function() {
   // hovers para las areas del home
   $( ".area-hover1" ).hover(
      function() {
         $( ".default-text" ).css("display", "none");
         $( ".strategy-hover" ).css("display", "block");
      }, function() {
         $( ".default-text" ).css("display", "block");
         $( ".strategy-hover" ).css("display", "none");
      }
   );

   $( ".area-hover2" ).hover(
      function() {
         $( ".default-text" ).css("display", "none");
         $( ".experience-hover" ).css("display", "block");
      }, function() {
         $( ".default-text" ).css("display", "block");
         $( ".experience-hover" ).css("display", "none");
      }
   );

   $( ".area-hover3" ).hover(
      function() {
         $( ".default-text" ).css("display", "none");
         $( ".develop-hover" ).css("display", "block");
      }, function() {
         $( ".default-text" ).css("display", "block");
         $( ".develop-hover" ).css("display", "none");
      }
   );

   $( ".area-hover4" ).hover(
      function() {
         $( ".default-text" ).css("display", "none");
         $( ".rd-hover" ).css("display", "block");
      }, function() {
         $( ".default-text" ).css("display", "block");
         $( ".rd-hover" ).css("display", "none");
      }
   );
});
