// Initializer

bindEvents = function() {
  $(".panel-one").setPanel({
    trim: 206
  });
  $(".panel-two").setPanel({
    trim: 138
  });
  $(".menu-dropdown").altaiToggle({
    effect: "fade",
    klass: ".menu-dropdown-trigger"
  });
};

$(document).on( "turbolinks:load", function() {
  bindEvents();
  Turbolinks.clearCache();
});

$(window).resize(function() {
  bindEvents();
  Turbolinks.clearCache();
});

// $("#number_only").bind("keyup paste", function(){
//   this.value = this.value.replace(/[^0-9]/g, "");
// });
