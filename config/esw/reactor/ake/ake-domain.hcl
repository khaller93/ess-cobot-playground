class = "star:Domain"

extends = [
  "rdfs:Resource"]

widget infobox perspective _ {

  sections = [
    "wiki_entry",
    "related_domains"]

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

    related_domains {
      sectionHandler = "SimilaritySection"
      name {
        en = "Related Domains"
      }
      hint {
        en = "Shows design domains that share characteristics with this domain."
      }
      expand = true
      config {
        number = 4
        classes = ["star:Domain"]
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