# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  products = $('#ticket_detail_product_id').html()
  $('#ticket_detail_category_id').change ->
    category = $('#ticket_detail_category_id :selected').text()
    options = $(products).filter("optgroup[label='#{category}']").html()
    $('#ticket_detail_product_id').html(options)

  $('#ticket_client_name').autocomplete
    source: $('#ticket_client_name').data('autocomplete-source')
  $('#ticket_carrier_name').autocomplete
    source: $('#ticket_carrier_name').data('autocomplete-source')
  $('#ticket_trucker_name').autocomplete
    source: $('#ticket_trucker_name').data('autocomplete-source')
