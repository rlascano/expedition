(() => {
  stimulus.register("observations", class extends Stimulus.Controller {
    static get targets() {
      return ['observationList', 'description']
    }

    onPostSuccess(event) {
      let [data, status, xhr] = event.detail;
      this.observationListTarget.innerHTML += xhr.response;
      this.descriptionTarget.value = "";
    }

  })
})()
