$('.col-project').hover(function() {
  var indexProject = $(this).data('project-index');
  $(`#project-${indexProject}-details`).slideToggle();
});
