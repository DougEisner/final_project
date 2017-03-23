
$(document).ready(function() {
  const $search = $('#search');
  const baseURL = window.location.href.split('?')[0];

  $search.keypress(function(e) {
    if (e.keyCode != 13) return;
    e.preventDefault();
    window.location = baseURL + "?search=" + $search.val();
  });
});
