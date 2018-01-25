// Set Panel

(function($, window, document) {
  $.fn.extend({
    setPanel: function(options) {
      // Object
      object = $(this);

      // Settings
      settings = {
        trim: 0,
        debug: false
      };
      settings = $.extend(settings, options);

      // Log
      log = function(msg) {
        if (settings.debug) {
          typeof console !== "undefined" && console !== null ? console.log(msg) : void 0;
        }
      };

      // Action
      action = function() {
        total = $(window).outerHeight() - settings.trim;
        object.css({ minHeight: total + "px" });
        log("Panel Activated");
      };

      // Run if found
      if (object.length > 0) {
        this.each(function() {
          action();
        });
      }
    }
  });
})(jQuery, window, document);
