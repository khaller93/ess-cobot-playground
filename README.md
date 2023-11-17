# COBOT Use Case - ESS Prototype

The COBOT use case is concerned with the challenge of low utilization and 
limited awareness of manufacturing technology in the Aspern pilot factory, which
is an Austrian learning and experimentation facility. The factory provides
access to a range of industrial machines, including collaborative robots. 
However, the detailed capabilities of these robots are unknown to potential
users due to factors such as limited public availability, contextual dependence,
and continuous evolution. 

To tackle this issue, we proposed an exploratory search system that allows
students, researchers, and companies to explore and learn about the available
equipment.

Components of the knowledge graph:

* COBOT ontology
* COBOT data from stakeholder interviews and scraping of public data sources
* STAR1 ontology about software architectural knowledge
* STAR1 data from the central knowledge management system of a software
engineering company

Source code of the prototype:

* Middleware: [khaller93/es-middleware](https://github.com/khaller93/es-middleware)
* Web application: [khaller93/es-web-app](https://github.com/khaller93/es-web-app)

## Playground
To clone the repository and its submodules, use the following command:

```bash
git clone --recursive https://github.com/khaller93/cobot-playground
```
If you've already cloned the repository and want to load its submodules, use the
following commands:

```bash
git submodule init
git submodule update
```

## Running ESS prototype

```bash
docker-compose up
```

Then, the web application is available at [http://localhost:9080](http://localhost:9080).

## Running triplestore independently

```bash
docker-compose -f docker-compose.db.yml up
```

Then, the triplestore is available at [http://localhost:7280](http://localhost:7280).

## Citation

If you make use of this work, please cite the following.

```bibtex
@inproceedings{Haller2022,
  author    = {Kevin Haller and
               Fajar J. Ekaputra and
               Marta Sabou and
               Florina Piroi},
  title     = {Enabling Exploratory Search on Manufacturing Knowledge Graphs},
  booktitle = {Proceedings of the Seventh International Workshop on the Visualization
               and Interaction for Ontologies and Linked Data co-located with the
               21st International Semantic Web Conference {(ISWC} 2022), Virtual
               Event, Hangzhou, China, October 23, 2022},
  series    = {{CEUR} Workshop Proceedings},
  volume    = {3253},
  pages     = {16--28},
  publisher = {CEUR-WS.org},
  year      = {2022},
  url       = {http://ceur-ws.org/Vol-3253/paper2.pdf},
}
```

# Contact

* Kevin Haller - [contact@kevinhaller.dev](mailto:contact@kevinhaller.dev)