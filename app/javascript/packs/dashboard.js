// Dashboard
$('.btn-toggle-section-model').click(function() {
  var indexSectionModel = $(this).data('index-section-model');
  $(`#${indexSectionModel}`).slideToggle();
  $(this).find('.fa-arrow-down').toggleClass('arrow-dashboard-section-active');
});
