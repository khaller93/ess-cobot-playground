class = "star:DesignTactic"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {
    "star:hasTacticDomain" = {
      name = {
        en = "Domains"
      }

    }

    "star:hasTacticEffectOnQuality" = {
      priority = -10
      name = {
        en = "Affected Qualities"
      }

      collection = {
        collection_handler = "ResourceBox"
      }

    }

  }

  sections = [
    "wiki_entry",
    "related_tactics",
    "related_pattern",
    "related_decisions"]

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
        en = "Shows design decisions that are related to this tactic."
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

    related_pattern {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Design Pattern"
      }
      hint {
        en = "Shows design patterns that are related to this tactic."
      }
      expand = true
      config {
        number = 4
        classes = ["star:DesignPattern"]
        ranking {
          ldsd {
            step = "esm.exploit.sim.ldsd"
            weight = -1.0
          }
        }
      }
    }

    related_tactics {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Design Tactics"
      }
      hint {
        en = "Shows design tactics that share characteristics with this tactic."
      }
      expand = true
      config {
        number = 4
        classes = ["star:DesignTactic"]
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
