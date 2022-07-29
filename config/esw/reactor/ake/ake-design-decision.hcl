class = "star:DesignDecision"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {
    "star:hasDecisionDomain" = {
      name = {
        en = "Domains"
      }

    }
  }

  sections = ["wiki_entry", "related_decisions"]

  section {
    wiki_entry {
      sectionHandler = "HTMLSection"
      name {
        en = "Wiki Entry"
      }
      expand = true
      config {
        property = "star:wikiEntry"
      }
    }

    related_decisions {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Design Decisions"
      }
      hint {
        en = "Shows design decisions that are related somehow related to this one."
      }
      expand = true
      config {
        number = 4
        classes = ["star:DesignDecision"]
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