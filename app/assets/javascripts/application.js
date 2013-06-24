//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {

  $('#add_form_line').click(function(){

    var clonedForm = $('#clone_template').clone();
    clonedForm.appendTo('#form_partial_wrapper');
    var numItems = $('.form_clone').length;

    incrementIDs( clonedForm, numItems )
  });

  $('#add_update_form_line').click(function(){

    var clonedForm = $('#clone_template').clone();
    clonedForm.appendTo('#form_partial_wrapper');
    var numItems = $('.form_count').length - 2;

    incrementIDs( clonedForm, numItems )
  });

  function incrementIDs(clonedForm, numItems) {
    clonedForm.find('select, input').each(function() {

      $(this).attr('name', incrementValue).attr('id', incrementValue);

      function incrementValue(i, val) {
        return val.replace(/\d+/, numItems);
      }
    });
  }

});