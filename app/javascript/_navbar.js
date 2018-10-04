// $('#company-item, #company-sub-categories').hover(function() {
//   $('#company-sub-categories').slideToggle();
// });

$('.nav-item').hover(function() {
  if (this.dataset.itemName !== "home") {
    $(this).toggleClass('nav-item-active');
  } else {
    $('#company-navbar-item ul').toggleClass('company-navbar-item-active');
  }
});

$('#dropdown-menu-btn').click(function() {
  $('.nav-list-small-screen').slideToggle();
});

const page = document.querySelector(".page");
const navItems = document.querySelectorAll(".nav-item");

navItems.forEach(function(navItem) {
  if (( navItem != null && page != null ) && navItem.dataset.itemName == page.dataset.pageName ) {
    navItem.classList.add('nav-item-active');
  };
});

$('.project-details-hover-display').click(function() {
  $(this).slideToggle();
});
