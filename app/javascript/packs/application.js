/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker');

$('#company-item, #company-sub-categories').hover(function() {
  $('#company-sub-categories').slideToggle();
});

$('.nav-item').hover(function() {
  $(this).toggleClass('nav-item-active');
});

$('#dropdown-menu-btn').click(function() {
  $('.nav-list-small-screen').slideToggle();
});

const page = document.querySelector(".page");
const navItems = document.querySelectorAll(".nav-item");

navItems.forEach(function(navItem) {
  if ( navItem.dataset.itemName == page.dataset.pageName) {
    navItem.classList.add('nav-item-active');
  };
});