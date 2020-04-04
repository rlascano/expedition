(() => {
  stimulus.register("select", class extends Stimulus.Controller {
    static get targets() {
      return [ "output" ]
    }

    connect() {
      this.products = document.querySelector("#ticket_ticket_detail_product_id").innerHTML
      this.updateSelect()
    }

    updateSelect() {
      let category = $('#ticket_ticket_detail_category_id :selected').text()
      let options = $(this.products).filter(`optgroup[label="${category}"]`).html()
      $('#ticket_ticket_detail_product_id').html(options)
    }
  })
})()
