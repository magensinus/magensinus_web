// Initializer

bindEvents = function() {
  $(".off").altaiOff();

  $(".panel-one").setPanel({ trim: 210 });
  $(".panel-two").setPanel({ trim: 138 });

  $(".menu-dropdown").altaiToggle({
    effect: "fade",
    klass: ".menu-dropdown-trigger"
  });
  $(".menu-responsive").altaiToggle({
    effect: "slide",
    klass: ".menu-responsive-trigger"
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
