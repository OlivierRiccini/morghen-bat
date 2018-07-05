/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require summernote/summernote-bs4.min
//= require summernote-init
//= require activestorage
//= require turbolinks
//= require_tree .

console.log('Hello World from Webpacker');
import 'carousel'

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
  if (( navItem != null && page != null ) && navItem.dataset.itemName == page.dataset.pageName ) {
    navItem.classList.add('nav-item-active');
  };
});

$('.project-details-hover-display').click(function() {
  $(this).slideToggle();
  console.log('test');
});

// Realizations page
$('.col-project').hover(function() {
  var indexProject = $(this).data('project-index');
  $(`#project-${indexProject}-details`).slideToggle();
});
