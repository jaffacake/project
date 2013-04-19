# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#date_picker").datepicker({ dateFormat: "dd/mm/yy" });
  $("#date_picker").datepicker({ dateFormat: "dd/mm/yy" });
  $('#new_property').nestedFields();
  $('#ui-datepicker-div').removeClass('ui-helper-hidden-accessible');
  #$('#properties').dataTable({sPaginationType: "full_numbers", bJQueryUI: true, bProcessing: true, bServerSide: true, sAjaxSource: $('#properties').data('source'), sDom: '<"H"Tfr>t<"F"ip>', oTableTools: { aButtons: [ "copy", "csv", "xls", "pdf",{ sExtends: "collection", sButtonText: "Save", aButtons: [ "csv", "xls", "pdf" ]}]}});
  $('#properties').dataTable({"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>","sPaginationType": "bootstrap" });
  