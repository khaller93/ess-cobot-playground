class = "cobot:ProductionPlant"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {

    "foaf:homepage" = {
      priority = 100
    }

    "cobot:isHousingActuator" = {
      name = {
        en = "Available End Effectors"
      }
      collection = {
        collection_handler = "ResourceBox"
      }
    }
    "cobot:isHousingRobot" = {
      name = {
        en = "Available Robots"
      }
      collection = {
        collection_handler = "ResourceBox"
      }
    }
  }

  sections = ["related_resources"]

  section {

    related_resources {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Resource Types"
      }
      hint {
        en = "Shows resource types that are somehow related to this production plant"
      }
      expand = true
      config {
        number = 4
        classes = ["cobot:ResourceType"]
        ranking {
          ldsd {
            step = "esm.exploit.sim.ldsd"
            weight = -1.0
          }
        }
      }
    }

  }

}