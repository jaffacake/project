// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.

//= require jquery
//= require jquery_ujs
//= require cocoon
//= require dataTables/jquery.dataTables
//= require bootstrap-alert
//= require bootstrap-tooltip
//= require bootstrap-transition
//= require bootstrap-button
//= require bootstrap-modal
//= require bootstrap-tab
//= require bootstrap-datepicker
//= require bootstrap-dropdown
//= require bootstrap-wizard
//= require bootstrap-lightbox
//= require bootstrap-tooltip
//= require jasny-bootstrap
//= require_tree .

$(document).ready(function () {
  $('body').tooltip({
    selector: '[rel=tooltip]'
});
});