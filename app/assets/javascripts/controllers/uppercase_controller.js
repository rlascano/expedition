(() => {
  stimulus.register("uppercase", class extends Stimulus.Controller {
    static get targets() {
      return ['plate']
    }

    connect() {

    }

    toUppercase() {
      this.plateTargets.forEach((text) => {
        text.value = text.value.toUpperCase()
      })
    }

  })
})()
