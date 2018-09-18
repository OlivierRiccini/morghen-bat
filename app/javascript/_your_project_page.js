$('.your-project-category-button').hover(function() {
  var category = $(this).data('category');
  $(`#sun-${category}`).slideToggle();
});
