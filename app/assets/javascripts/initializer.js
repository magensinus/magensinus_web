// Initializer

bindEvents = function() {
  $(".panel-one").setPanel({
    trim: 138
  });
  $(".panel-two").setPanel({
    trim: 138
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
