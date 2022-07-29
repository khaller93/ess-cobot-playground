class = "rdfs:Class"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {
    "rdfs:subClassOf" = {
      name = {
        en = "Parent Class",
      }
    }
  }

  sections = [
    "class_sample",
    "related_classes"]

  section {

    class_sample {
      sectionHandler = "ClassSampleSection"
      name {
        en = "Examples"
      }
      hint {
        en = "A ramdom sample of instances of given class."
      }
      expand = true
      config {
        number = 8
      }
    }

    related_classes {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Classes"
      }
      hint {
        en = "Related classes to the currently viewed one."
      }
      expand = true
      config {
        number = 4
        classes = [
          "http://www.w3.org/2000/01/rdf-schema#Class"]
        ranking {
          peer {
            step = "esm.exploit.sim.ldsd"
            weight = 1.0
          }
        }
      }
    }
  }
}