# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#property_available_date").datepicker({ dateFormat: "dd/mm/yy" });
  $('#ui-datepicker-div').removeClass('ui-helper-hidden-accessible');
  $('#properties').dataTable({sPaginationType: "full_numbers", bJQueryUI: true, bProcessing: true, bServerSide: true, sAjaxSource: $('#properties').data('source')});
