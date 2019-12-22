(() => {
  stimulus.register("complete", class extends Stimulus.Controller {
    static get targets() {
      return ['form']
    }

    connect() {
      $('#ticket_client_name').autocomplete({source: $('#ticket_client_name').data('autocomplete-source')})
      $('#ticket_carrier_name').autocomplete({source: $('#ticket_carrier_name').data('autocomplete-source')})
      $('#ticket_trucker_name').autocomplete({source: $('#ticket_trucker_name').data('autocomplete-source')})
    }

    submitForm(e) {
      let isValid = this.validateForm(this.formTarget)

      if(!isValid) {
        e.preventDefault()
      }
    }

    validateForm() {
      let isValid = true;

      // Tell the browser to find any required fields
      let requiredFieldSelectors = 'textarea:required, input:required';
      let requiredFields = this.formTarget.querySelectorAll(requiredFieldSelectors);

      requiredFields.forEach((field) => {
        // For each required field, check to see if the value is empty
        // if so, we focus the field and set our value to false
        if (!field.disabled && !field.value.trim()) {
          field.focus();

          isValid = false;
        }
      });

      return isValid;
    }

  })
})()
