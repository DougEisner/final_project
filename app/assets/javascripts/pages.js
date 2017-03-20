$(document).on('turbolinks:load', function() {
  $('.parallax').parallax();
  $(".dropdown-button").dropdown();
  $(".button-collapse").sideNav();

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
