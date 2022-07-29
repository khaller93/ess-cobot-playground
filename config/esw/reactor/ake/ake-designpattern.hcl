class = "star:DesignPattern"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {
    "star:hasPatternEffectOnQuality" = {
      name = {
        en = "Affected Quality"
      }

      collection = {
        collection_handler = "ResourceBox"
      }
    }
    "star:hasPatternDomain" = {
      name = {
        en = "Domains"
      }
    }
    "star:isAlternativeOf" = {
      name = {
        en = "Relevant Tactics"
      }
    }
  }

  sections = [
    "wiki_entry",
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
        en = "Shows design decisions that are related to this pattern."
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
        en = "Related Design Patterns"
      }
      hint {
        en = "Shows design patterns that share characteristics with this pattern."
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
  }
}
