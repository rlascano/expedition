(() => {
  stimulus.register("weight", class extends Stimulus.Controller {
    static get targets() {
      return ["tare", "gross", "net"]
    }

    connect() {
      console.log(this.tare)
    }

    calculate() {
      this.netTarget.value = this.gross - this.tare      
    }

    get tare() {
      return +this.tareTarget.value
    }

    get gross() {
      return +this.grossTarget.value
    }
  })
})()
