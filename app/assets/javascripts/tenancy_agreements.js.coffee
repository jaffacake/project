# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#tenancy_agreement_start_date").datepicker({ dateFormat: "dd/mm/yy" });
  #$('#ui-datepicker-div').removeClass('ui-helper-hidden-accessible');
  
  $("#tenancy_agreement_end_date").datepicker({ dateFormat: "dd/mm/yy" });
  #$('#ui-datepicker-div').removeClass('ui-helper-hidden-accessible');
  
  $("#tenancy_agreement_payment_date").datepicker({ dateFormat: "dd/mm/yy" });
  #$('#ui-datepicker-div').removeClass('ui-helper-hidden-accessible');