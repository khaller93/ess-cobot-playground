class = "rdf:Property"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  sections = [
    "related_properties"]

  section {

    related_properties {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Properties"
      }
      hint {
        en = "Related properties to the currently viewed one."
      }
      expand = true
      config {
        number = 4
        classes = [
          "rdf:Property"]
        ranking {
          peer {
            step = "esm.exploit.sim.ldsd"
            weight = -1.0
          }
        }
      }
    }
  }
}