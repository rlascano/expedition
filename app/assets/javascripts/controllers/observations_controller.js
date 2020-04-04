(() => {
  stimulus.register("observations", class extends Stimulus.Controller {
    static get targets() {
      return ['observationList', 'description']
    }

    connect() {
      console.log("Observation connected")
    }

    onPostSuccess(event) {
      console.log(event.detail)
      let [data, status, xhr] = event.detail;
      this.observationListTarget.innerHTML += xhr.response;
      this.descriptionTarget.value = "";
    }

  })
})()
