$(document).on('turbolinks:load', function() {
  $('.parallax').parallax();
  var searchIcon = document.querySelector('.search');
  var $searchForm = $('#search');
  var $searchClose = $('.close');

  searchIcon.addEventListener('click', function() {
    $searchForm.toggleClass('scale-in');
  });

  $searchClose.click(function() {
    $searchForm.toggleClass('scale-in');
  });
});
