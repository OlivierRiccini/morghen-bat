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

import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import '../_carousel'
import '../_realizations_page'
import '../_navbar'
import '../_checkBoxes'
import '../_arrow_scroll_to_top'
