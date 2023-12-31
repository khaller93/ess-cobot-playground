/*
  TITLE

  it defines the title of the application, which will
  be visible in the UI, but also as meta information in
  the served HTML code.
*/
title = "Cobot Explorer"

/*
  SHORT TITLE

  it defines the short title of the application, which
  will be used in the UI for cases, where not enough
  space is given for the full title.
*/
short_title = "Cobot"

/*
  SUPPORTED LANGUAGES

  it defines the number of languages that are supported and might
  be selected (or automatically matched through the browser
  locale information) by the user. If a new language is added
  to the list, a translation file for the application is expected
  in src/i18n/translations. Moreover, it is recommended that the
  accessed knoledge graph has good coverage of descriptive language
  literals for this language. Furthermore, you should provide
  the correct translations in the required places of this
  configuration (e.g. see the categories example in this file).
*/
supported_languages = [
  "de", "en"]

/*
   ENABLE FEATURES

   in this section, features can be enabled or explicetely
   disabled. If this section is missing, no extra features
   are enabled.
*/
enable {
  sparql = true,
  treeview = true,
}

/*
  ROLES

  it optionally specifies a number of roles that a user might
  switch too. it is possible to define a different search
  experience for the user based on their selected role.
*/
roles {

  Robotics {
    name {
      en = "Robotics Engineer"
    }
  }

  Software {
    name {
      en = "Software Engineer"
    }
  }

}

/*
  DEFAULT ROLE

  it specifies the id of the role that a user is assumed to take by
  default.
*/
default_role = "Robotics"

/*
  CATEGORY DEFINITIONS
*/
categories {

  list = [
    "Plant",
    "Robot",
    "RobotType",
    "EndEffector",
    "EndEffectorType",
    "Skills",
    "DesignPattern",
    "DesignDecision",
    "Qualities",
    "UseCases"
  ]

  category {

    Plant {

      name {
        en = "Production Plant"
      }

      classes = [
        "http://data.ifs.tuwien.ac.at/star2/ontology#ProductionPlant"
      ]

    }

    Robot {
      name {
        en = "Robot"
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star2/ontology#Robot"]
    }

    RobotType {
      name {
        en = "Robot Type",
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star2/ontology#RobotType"]
    }

    EndEffector {
      name {
        en = "End Effector",
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star2/ontology#EndEffector"]
    }

    EndEffectorType {
      name {
        en = "End Effector Type",
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star2/ontology#EndEffectorType"]
    }

    HandlingSystem {
      name {
        en = "Handling System"
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star2/ontology#HandlingSystem"]
    }

    Skills {
      name {
        en = "Skills"
      }
      classes = [
        "http://pokemon.outofbits.com/ontology#Skills"]
    }

    DesignPattern {
      name {
        en = "Design Pattern"
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star/ontology#DesignPattern",
        "http://data.ifs.tuwien.ac.at/star/ontology#DesignTactic"
      ]
    }

    DesignDecision {
      name {
        en = "Design Decision"
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star/ontology#DesignDecision"
      ]
    }

    Qualities {
      name {
        en = "Qualities"
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star/ontology#ArchitecturalQuality"
      ]
    }

    UseCases {
      name {
        en = "Use Cases"
      }
      classes = [
        "http://data.ifs.tuwien.ac.at/star/ontology#Requirement",
        "http://data.ifs.tuwien.ac.at/star/ontology#UseCase",
        "http://data.ifs.tuwien.ac.at/star/ontology#Domain"
      ]
    }

  }
}
