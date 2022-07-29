class = "http://www.w3.org/2002/07/owl#Ontology"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {

    "http://www.w3.org/2002/07/owl#versionIRI" = {
      name = {
        en = "Version"
      }

      collection = {
        collection_handler = "CommaSeparatedList"
        object = {
          type = {
            literal = {
              object_handler = "ExternalLink"
            }
            iri = {
              object_handler = "ExternalLinkView"
            }
          }
        }
      }

    }

  }

  sections = [
    "related_ontology"]

  section {

    related_ontology {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Ontologies"
      }
      hint {
        en = "Related ontologies to this one."
      }
      expand = true
      config {
        number = 4
        classes = [
          "http://www.w3.org/2002/07/owl#Ontology"]
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