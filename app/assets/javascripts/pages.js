$(document).on('turbolinks:load', function() {
  $('.parallax').parallax();
  var searchIcon = document.querySelector('.search');
  var searchForm = $('#search');

  searchIcon.addEventListener('click', function() {
    searchForm.toggleClass('open');
  });
});
