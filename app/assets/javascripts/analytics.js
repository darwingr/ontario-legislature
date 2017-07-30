$(document).on('ready page:load', function() {
  if (typeof ga === 'function') {
    ga('send', 'pageview', window.location.pathname);
  }
});
