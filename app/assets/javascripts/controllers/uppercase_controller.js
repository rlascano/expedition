(() => {
  stimulus.register("uppercase", class extends Stimulus.Controller {
    static get targets() {
      return ['plate']
    }

    connect() {
      console.log("uppercase")
      this.toUppercase()
    }

    toUppercase() {
      this.plateTarget.value = this.plateTarget.value.toUpperCase()
    }

  })
})()
