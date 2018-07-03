// Dashboard
$('.btn-toggle-section-model').click(function() {
  var indexSectionModel = $(this).data('index-section-model');
  $(`#${indexSectionModel}`).slideToggle();
  $(this).find('.fa-arrow-down').toggleClass('arrow-dashboard-section-active');
});


// $('.remove-fields-btn').click(function() {
//   $(this).prevAll("input[type=hidden]").first().val("1");
//   $(this).parent().hide();
// });

// function add_fields(link, association, content) {
//   var new_id = new Date().getTime();
//   var regexp = new RegExp("new_" + association, "g")
//   $(link).up().insert({
//     before: content.replace(regexp, new_id)
//   });
// }
