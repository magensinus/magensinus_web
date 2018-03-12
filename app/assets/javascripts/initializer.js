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

bindWrappers = function() {
  var $lines, holder;
  $lines = $(".w-col");
  holder = [];
  $lines.each(function(i, item) {
    holder.push(item);
    if (holder.length === 2) {
      $(holder).wrapAll('<div class="w-row" />');
      holder.length = 0;
    }
  });
  $(holder).wrapAll('<div class="w-row" />');
};

$(document).on( "turbolinks:load", function() {
  bindEvents();
  bindWrappers();
  Turbolinks.clearCache();
});

$(window).resize(function() {
  bindEvents();
  bindWrappers();
  Turbolinks.clearCache();
});

// $("#number_only").bind("keyup paste", function(){
//   this.value = this.value.replace(/[^0-9]/g, "");
// });
