# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  updateCombo()

  $('#ticket_detail_category_id').change ->
    updateCombo()

  $('#ticket_client_name').autocomplete
    source: $('#ticket_client_name').data('autocomplete-source')
  $('#ticket_carrier_name').autocomplete
    source: $('#ticket_carrier_name').data('autocomplete-source')
  $('#ticket_trucker_name').autocomplete
    source: $('#ticket_trucker_name').data('autocomplete-source')

  $('#ticket_detail_gross').blur ->
    tare = $('#ticket_detail_tare').val()
    gross = $('#ticket_detail_gross').val()
    if gross == ""
      net = tare
    else
      net = parseInt(gross) - parseInt(tare)
    $('#ticket_detail_net').val(net)

updateCombo = () ->
  products = $('#ticket_detail_product_id').html()
  category = $('#ticket_detail_category_id :selected').text()
  options = $(products).filter("optgroup[label='#{category}']").html()
  $('#ticket_detail_product_id').html(options)
