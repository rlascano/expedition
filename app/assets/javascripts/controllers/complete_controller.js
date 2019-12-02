(() => {
  stimulus.register("complete", class extends Stimulus.Controller {
    static get targets() {
      return []
    }

    connect() {
      $('#ticket_client_name').autocomplete({source: $('#ticket_client_name').data('autocomplete-source')})
      $('#ticket_carrier_name').autocomplete({source: $('#ticket_carrier_name').data('autocomplete-source')})
      $('#ticket_trucker_name').autocomplete({source: $('#ticket_trucker_name').data('autocomplete-source')})
    }
  })
})()
