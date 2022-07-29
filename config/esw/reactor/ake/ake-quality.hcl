class = "star:ArchitecturalQuality"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  property = {

    "star:requiredBy" = {
      name = {
        en = "Domain"
      }
    }

    "star:isQualityAffectedBy" = {
      priority = -10
      name = {
        en = "Affected By"
      }
      collection = {
        collection_handler = "ResourceBox"
      }
    }

  }

  sections = [
    "wiki_entry",
    "related_qualities",
    "related_pattern"]

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

    related_qualities {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Qualities"
      }
      hint {
        en = "Shows qualities that are related to this pattern."
      }
      expand = true
      config {
        number = 4
        classes = [
          "star:ArchitecturalQuality"]
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
        en = "Shows design patterns that are somehow related to this quality."
      }
      expand = true
      config {
        number = 4
        classes = [
          "star:DesignPattern"]
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
