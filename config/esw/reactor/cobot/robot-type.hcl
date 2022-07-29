class = "cobot:RobotType"

extends = [
  "rdfs:ResourceType"]

widget infobox perspective _ {

  property = {
    "http://data.ifs.tuwien.ac.at/star2/ontology#isCompatibleWithActuatorType" = {
      priority = -10
      name = {
        en = "Compatible End Effectors"
      }

      collection = {
        collection_handler = "ResourceBox"
      }
    }
    "http://data.ifs.tuwien.ac.at/star2/ontology#offersHandlingFunction" = {
      priority = -20
      name = {
        en = "Offered Handling Functions"
      }

      collection = {
        collection_handler = "ResourceBox"
      }
    }

    "http://data.ifs.tuwien.ac.at/star2/ontology#offersSkill" = {
      priority = -30
      name = {
        en = "Offered Skills"
      }

      collection = {
        collection_handler = "ResourceBox"
      }
    }

  }

  sections = ["related_robot_types"]

  section {

    related_robot_types {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Robot Types"
      }
      hint {
        en = "Shows robot types that are somehow related to this type."
      }
      expand = true
      config {
        number = 4
        classes = ["cobot:RobotType"]
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