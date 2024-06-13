# Glossary

#### API {- #API}
An Application Programming Interface (API) defines a way of communication between two applications based on requests and responses, which allows data exchange between these applications. 

- Source: https://www.ibm.com/topics/api

#### Core file {- #core}
The core file is the central element of the Darwin Core Archive to which all other files are linked. Different files are possible to be used as the core depending on the type of the data. While checklist data requires a taxon file as the core, occurrence data requires an occurrence file and sampling-event data an event file. 

- More information: https://ipt.gbif.org/manual/en/ipt/latest/dwca-guide 

#### Darwin Core (DwC) {- #DwC}
Darwin Core is a stable data standard maintained by TDWG (Biodiversity Information Standards) tailored to describe biodiversity data by using a defined library of terms. It is an extension of the Dublin Core Metadata Initiative and facilitates sharing of biodiversity data from various sources. Every term has a clear definition and a URL, which can be used irrespective of technology, e.g., XML or RDF. 

- Source: https://www.tdwg.org/standards/dwc/ 

#### Darwin Core Archive {- #DwC-A}
Darwin Core Archives are a way of structuring a dataset that uses the Darwin Core standard. It consists of a core file and a number of extension files, as well as two files describing the metadata of the dataset. The first is called meta.xml and is a XML file describing the structural metadata, i.e., the organisation of the files and maps each column name (i.e., Darwin Core term) to its identifier. The second metadata file is the EML file containing the descriptive and administrative metadata using the metadata standard Ecological metadata language. 

- More information: https://ipt.gbif.org/manual/en/ipt/latest/dwca-guide

#### Data lifecycle {- #datalifecycle}
The data lifecycle describes the stages that the data goes through, starting with planning of data collection, followed by the data collection or acquisition. Afterwards the data is processed to then be used and analysed. After that, the data should be properly stored and curated to be preserved in the long run, which finally leads to publishing and sharing the data, allowing others to reuse it, with which the cycle can start again. There are however different versions of the data lifecycle, differing slightly in the respective steps. 

- More information: ??

#### Dublin Core {- #dublincore}
Dublin Core is a metadata standard consisting of a set of 15 terms used to describe metadata. The terms themselves consist of several dozen properties, classes, data types, and vocabulary encoding schemes and are maintained by the Dublin Core Metadata Initiative (DCMI).

- More information: https://www.dublincore.org/specifications/dublin-core/dcmi-terms/

#### EML {- #eml}
EML, the Ecological metadata language, is a metadata standard commonly used for ecological data. It consists of a set of terms with which metadata can be described. EML uses a readable XML markup syntax that balances the machine and human readability and is structured in modules making it relatively flexible in describing metadata.

- More information: https://eml.ecoinformatics.org/schema/

#### Event {- #event}
Event is a Darwin Core class describing an action that occurs at some location during some time. In the context of Darwin Core archives events can be stored in an event-file that stores information on the time and place of the events, but also more administrative information, such as the data collector, sampling effort or sample size.

- Sources: https://dwc.tdwg.org/terms/#event; https://rs.gbif.org/core/dwc_event_2024-02-19.xml

#### Extension file {- #extension}
Extension files are a file type that can exist in Darwin Core Archives next to the core file. There can be an unlimited number of extensions, each holding a different kind of information and each row within an extension file directly links to a record in the core file through the core identifier. Commonly used extensions for biodiversity data collected on living organisms are occurrence, taxon or measurement or fact. 

- More information: https://ipt.gbif.org/manual/en/ipt/latest/dwca-guide

#### FAIR {- #FAIR}
FAIR stands for Findable, Accessible, Interoperable and Reusable and comes with 15 guiding principles developed by Wilkinson et al. in 2015. Findability means that the metadata (and the data) can easily be found by humans and computers and that machine-readable metadata allows for automatic discovery of the data by machines. Additionally, it is clearly stated how the user can access the data and whether, for example, authorisation or authentication are required (Accessibility). Interoperability means that the data is fully compatible with other data making it integrable with other data resources and allows to incorporate it into workflows or applications. In easier words this means that data resources should ‘speak the same language’ to be used together. The ultimate goal of the FAIR concept is to make the data reusable (Reusability), which means that there is proper annotation in the form of metadata that allows users (and machines) to understand the data and correctly interpret it. 

- More information: https://www.go-fair.org/fair-principles/

#### GBIF {- #GBIF} 
GBIF, the global biodiversity information facility, is a data infrastructure and international network providing open access to biodiversity data.

- Source: https://www.gbif.org/

#### IRI, URI and URL {- #URI}
Uniform resource identifiers (URI) are a standardised way to identify resources of information on the internet. One of the most common forms of the URI is the URL, the uniform resource locator, often also called a web address. The IRI (Internationalized Resource Identifier) is an internationalised expansion of the URI supporting a wider range of characters besides the Latin alphabet. While URL is location oriented and describes the physical location of a resource on the internet, the URI is identifier oriented and refers to the resource itself. They are however often treated the same way.

- Sources and more information: 
    - GBIF (2011). A Beginner’s Guide to Persistent Identifiers, version 1.0. Released on 9 February 2011. Authors Kevin Richards, Richard White, Nicola Nicolson, Richard Pyle, Copenhagen: Global Biodiversity Information Facility, 33 pp, accessible online at http://links.gbif.org/persistent_identifiers_guide_en_v1.pdf
    - https://www.w3.org/2001/Talks/0912-IUC-IRI/paper.html

#### MeasurementOrFact {- #measurementorfact}
Measurement or fact is a Darwin Core class describing measurement values and or facts about a resource. It can also be an extension file of the Darwin Core archive storing the measurements or facts belonging to the events or occurrences described in the core file. 

- Source: https://dwc.tdwg.org/terms/#measurementorfact

#### Metadata {- #metadata}
Metadata contains information about other data and provides descriptions that make the data easier to understand and reuse. Structural metadata contains information about how the data is organised, what variables mean and how files relate to one another, while administrative metadata provides information about ownership, preservation and rights and licences of the data. Thirdly, descriptive metadata describes the background of the data, such as how, where and when it was collected, who is responsible and what contents the data cover.  

#### Meta.xml {- #metaxml}
The meta.xml file is a component of the Darwin Core Archive and contains its structural metadata in an XML file. The file describes how the data files in the archive are linked to each other and provides for each column the identifier of the corresponding Darwin Core term.  

- More information: https://ipt.gbif.org/manual/en/ipt/latest/dwca-guide

#### Mobilisation {- #mobilisation}
Transferring data that is stored locally to an online repository.

#### OBIS {- #OBIS}
OBIS, the Ocean Biodiversity Information System, is an international databank system for maritime biodiversity and biogeographic data with the objective to provide the largest knowledge base on the diversity, distribution and abundance of marine organisms. 

- Source: https://obis.org/about/

#### Occurrence {- #occurrence}
Occurrence is a Darwin Core class describing the existence or presence of an organism at a certain place and time. In the context of Darwin Core archives, occurrences are stored in an occurrence-file that contains quantitative information about organisms, as well as taxonomic information. 

- Source: https://dwc.tdwg.org/terms/#occurrence; https://rs.gbif.org/core/dwc_occurrence_2024-02-23.xml

#### Ontology {- #ontology}
Ontologies provide definitions of terms by defining their relation to other terms in a human interpretable way and thereby create a semantic model of the concepts that are used within a specific research domain.

- More information: https://www.ontotext.com/knowledgehub/fundamentals/what-are-ontologies/ 

#### Persistent identifier (PID) {- #PID}
A persistent identifier is a unique identification code belonging to a digital resource that ensures persistent identification of the resource, even if the web address of the creator of the resource changes. For detailed information on different PID systems see [here](https://www.pidwijzer.nl/en). 

#### RDF {- #RDF}
RDF, the resource description framework, is a framework to represent interconnected data on the web. In RDF, objects are linked using semantic triples consisting of two objects and the link between them, often referred to as subject (= object 1), predicate ( = link) and object (= object 2). RDFs are machine readable and allow high interoperability between different data sources. 

- Source: https://www.w3.org/RDF/

#### Standardisation {- #standardise}
Converting data and/or metadata to a standard format.

#### Star schema {- #starschema}
The star schema is the way the core file and the extension files are organised in the Darwin Core Archive. Each of the extension files directly links to the core file, while they cannot link to one another, creating what is considered to be a star-shape. 

- More information: https://ipt.gbif.org/manual/en/ipt/latest/dwca-guide

#### Taxonomy {- #taxonomy}
Taxonomy is a standard way of describing, naming and classifying things in a hierarchical way and in a biological context, classifying living and extinct organisms and the relationship between taxa. 

- Source: http://purl.obolibrary.org/obo/NCIT_C17469; http://purl.obolibrary.org/obo/GSSO_004259 

#### XML {- #XML}
Extensible markup language, XML, is a hardware- and software independent tool for storing and transmitting data by balancing human-readability with machine-readability. It is the file format used for the two metadata files in the Darwin Core Archive. 

- Source: https://www.w3schools.com/xml/
