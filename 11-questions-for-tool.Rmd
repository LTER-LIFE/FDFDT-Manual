# Questions for FAIR + Structure Evaluation Tool {#questions-tool}

Please answer every question with yes/no. If your answer is no, please go through the linked section in this guide to further enrich your dataset.

#### Metadata {.unnumbered}

Metadata is data about your data and contains information about the who, where, what, when and how of data collection allowing another user of your data to find, understand and reuse it. 

**Q1. Does the data have detailed metadata?**

- info: Metadata is “data about data” and describes the dataset. It can provide information (amongst others) about the creator of the data, data collection, geographic and temporal extent and access conditions. Metadata is relevant for different properties of FAIR which makes it important that it is detailed (also often called “rich”) enough to give a user with no prior knowledge enough information about the data to reuse it.  
- Go through [4.1 Describe your data](#describe-data)

**Q2. Does the dataset have a licence?**

- info: As soon as your dataset is made available to others, it is important to clarify if and under which conditions others can use it. This is done by assigning a licence, which is basically a legal agreement between the data owner and the user. 
- Go through [4.1.1 Licencing](#licencing)

**Q3. Does the metadata include provenance details?**

- info: Provenance details provide information about the history of the dataset, which includes people and parties that were involved in its creation, as well as how, where and when the data was created. Additionally, the provenance details should inform about previous versions of the data.
- Go through [4.1 Describe your data](#describe-data)

**Q4. Is the metadata mentioning the persistent identifier (PID) of the dataset?**

- info: The metadata usually is stored in a different file than the data itself. To make a clear link between the two, the metadata file should always directly refer to the data by including the unique, persistent identifier that has been assigned to it.
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q5. Does the metadata include qualified reference to other (meta)data?**

- info: Next to your dataset, there can be other, related datasets, metadata files or other complementary information stored elsewhere, which should be linked to your data to increase its contextual knowledge. This can be done by a proper citation/reference in the metadata, ideally using the persistent identifier of the linked datasets, if available. Additionally, it should be specified if one dataset builds upon another, whether another dataset is needed to complete your data and how they link to each other scientifically.
- Go through [4.1 Describe your data](#describe-data)

**Q6. Does the data include qualified reference to other (meta)data?**

- info: Next to your dataset, there can be other, related datasets, metadata files or resources describing the same concepts as your data. These should be linked to your dataset to increase its contextual knowledge. This can be done by a proper citation/reference in the data, ideally using the persistent identifier of the linked datasets, or a mapping that describes how different data sources are linked.
- Go through [6.9 Cross-referencing other resources in the data](#crossref-in-data)


#### Storage {.unnumbered}
Storage is about whether your data is stored persistently and in a way that makes it findable and accessible to others. 

**Q7. Does the dataset have a persistent and globally unique identifier?**

- info: A persistent identifier (also known as a “PID”) is a permanent reference to the dataset that is globally unique and always directs the user (both humans and machines) directly to the dataset. Some identifiers assigned to datasets might be unique but not necessarily persistent. Having any identifier is already helpful but the key for making the data FAIR is the persistence of that identifier.
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q8. Is the data stored in a repository?**

- info: A data repository is a storage location where data and metadata can be collected, stored and managed. Storing data on a repository prevents data loss compared to storing it locally and thereby improves the longevity of the data. A repository also facilitates sharing and accessing the data, as well as making it findable for others.
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q9. Is the metadata stored in a repository?**

- info: A data repository is a storage location where data and metadata can be collected, stored and managed. Storing the metadata on a repository facilitates sharing and accessing the dataset and making it findable for others.
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q10. Is the data registered or indexed in a searchable resource/catalogue?**

- info: To make your data findable on the internet and thereby increase its visibility, it has to be indexed or registered in a catalogue. This allows search engines (e.g., Google Scholar) to find your data and inform others about it. Repositories often automatically index your data.
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q11. Is the metadata registered or indexed in a searchable resource/catalogue?**

- info: To make your metadata findable on the internet and thereby increase its visibility, it has to be indexed or registered in a catalogue. This allows search engines (e.g., Google Scholar) to find your metadata and inform others about your dataset. Repositories often automatically index your metadata.
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q12. Is the data retrievable through a standardised communication protocol, that allows for authentication and authorisation procedure where necessary?**

- info: The retrieval of the data and metadata should not be dependent on a method or tool that is specialised or related to someone's ownership. Instead, the protocol should be free and open(source) ensuring that everybody is able to at least access the metadata. Additionally, as FAIR data does not have to be open, accessibility should be specified in a way that machines can automatically interpret it and authentication and authorisation are implemented, if necessary. An example for such a protocol would be the [Open Archives Initiative Protocol for Metadata Harvesting](https://www.openarchives.org/pmh/) (OAI-PMH).
- Go through [5.2 Choosing a repository](#choosing-a-repository)

**Q13. Is the metadata persistently accessible also when data is no longer available?**

- info: The metadata should be preserved even if the data itself is no longer available so that all published references are persistently linking to the metadata of the dataset and remain resolvable. Even if the data is no longer available, the metadata assures discovery and citation of the data and can be helpful for future reuse.
- Go through [5.2 Choosing a repository](#choosing-a-repository)


#### Standards {.unnumbered}
Standards describe uniform, community-accepted formats in which both data and metadata are stored and which enhance compatibility with other datasets. This also includes that data records use standardised vocabulary, where possible to avoid ambiguity of terms.

**Q14. Is the metadata in a standard format?**

- info: Metadata is easier to reuse and to be interpreted correctly if the terms that organise it, are in a standard format, which is ideally domain-specific. Following the same standard, different metadata files become more compatible (interoperable) with each other as they use the same terminology and are organised in a standardised way.
- Go through [8 Standardise and structure your metadata](#standardise-and-structure-your-metadata)

**Q15. Is the data in a standard format?** 

- info: Data is easier to reuse and to be interpreted correctly if the terms that organise it (e.g., column headers in tabular data) are in a standard format, which is ideally domain-specific. Following the same standard, different dataset become more compatible (interoperable) with each other as they use the same terminology and are organised in a standardised way.
- Go through [6 Standardise your data](#standardise-your-data)

**Q16. Does the metadata use standard vocabulary/ontologies?**

- info: Standard or controlled vocabulary are lists of defined terms of a specific context that are stored, for example, in thesauri or ontologies and used on the record-level to describe the data contents. Using controlled vocabularies increases understandability of the data as ambiguity of terms can be avoided, which also enables easier linking and discovery of the data. It also improves interoperability with other data as datasets that use the same terminology cover the same information.
- Go through [6.6 Ontologies and controlled vocabulary](#ontologies)

**Q17. Does the data use standard vocabulary/ontologies?**

- info: Standard or controlled vocabulary are lists of defined terms of a specific context that are stored, for example, in thesauri or ontologies and used on the record-level to describe the data contents. Using controlled vocabularies increases understandability of the data as ambiguity of terms can be avoided, which also enables easier linking and discovery of the data. It also improves interoperability with other data as datasets that use the same terminology cover the same information.
- Go through [6.6 Ontologies and controlled vocabulary](#ontologies)

**Q18. Is the metadata machine readable according to a generally accepted standard?**

- info:  (Meta)data and other digital objects should be easily readable by humans but also by computers. For the latter, the language that is used for knowledge representation should have a formal specification about its syntax and grammar and these specifications should be shared and accessible to others. Additionally, the language should be usable in different contexts to increase interoperability. This can be reached by using RDFs (Resource description framework) or OWL (Web Ontology Language) to represent your (meta)data.
- Go through [9 How to reach full interoperability](#fully-interoperable)

**Q19. Is the data machine readable according to a generally accepted standard?**

- info:  (Meta)data and other digital objects should be easily readable by humans but also by computers. For the latter, the language that is used for knowledge representation should have a formal specification about its syntax and grammar and these specifications should be shared and accessible to others. Additionally, the language should be usable in different contexts to increase interoperability. This can be reached by using RDFs (Resource description framework) or OWL (Web Ontology Language) to represent your (meta)data.
- Go through [9 How to reach full interoperability](#fully-interoperable)


#### Structure (tabular data) {.unnumbered}
Structure is about whether your data is organised in a consistent and logical way that makes the data easier to understand for others. While structure is important for all types of data, the questions here are *explicitly tailored to tabular data* and should not be answered, if your data is in another, non-tabular format.

**Q20. Is the data structured in rows, each of which contains information about a single entity and in which each row has the same number of cells?**

- info: Tabular data consists of rows and columns, where rows represent information horizontally and often describe observations. Each row should describe only one entity (e.g., one individual bird) and all rows should have the same number of cells. Cells can be empty if there is no information on that entity for a property/column.
- Go through [4.2 Structuring your tabular data](#structuring-your-tabular-data)

**Q21. Do cells in the same column describe (or provide values for) the same property of the entities described by each row?**

- info: Tabular data consists of rows and columns, where columns display  information vertically and describe a property of the rows, which are often measured values. A column should always describe the same property for all rows and all columns should have the same number of cells. Cells can be empty if there is no information of this property for an entity/row.
- Go through [4.2 Structuring your tabular data](#structuring-your-tabular-data)

**Q22. Do you describe how different files within the dataset and/or tables within files link to each other?**

- info: A dataset can consist of several files or several tables within a single data file that can be connected to each other, e.g., by an identifier. For users of the data to understand whether and how files and tables are linked, this should be clearly described, for example, in a README file.
- Go through [4.1 Describe your data](#describe-data)

**Q23. Do you provide a comprehensive description of the columns in your files?**

- info: To help users correctly interpret and understand the data, best practice is to create a data dictionary, a codebook, or a similar overview in a README. This data dictionary provides an overview of the definitions, data types (e.g., integer, text, date), units, and accepted values of the data stored in columns. 
- Go through [4.1 Describe your data](#describe-data)
