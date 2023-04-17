import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = [ "unitSelect" ]
  change(event) {
    let dimension = event.target.selectedOptions[0].value
    let target = this.unitSelectTarget.id

    get(`/conversions/units?target=${target}&dimension=${dimension}`, {
     responseKind: "turbo-stream",
    })
  }
}
