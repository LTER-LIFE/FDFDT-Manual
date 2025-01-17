# (PART\*) b. Storage {.unnumbered}

# Storing your data
Data is often stored locally on personal computers or external hard drives which makes the data unavailable to others and increases the risk of data loss. These drawbacks can be overcome by [mobilising](#mobilisation) your data to an online repository. 

## Which data to store?

Before choosing a suitable repository, you have to decide which version of your data you wish to share: your data in its original format (i.e., primary data) or your data in a [standard](#standardise) format. Data in its original format, provided that it is accompanied by detailed [metadata](#metadata) to enable optimal reuse (see section [4.1](#describe-data)), is closest to the raw data and can be shared without requiring additional effort to reformat the data. Alternatively, data in a common standard format can be reused by others in your community as well as more easily integrated with other datasets in the same format. You may also consider providing both versions of the data next to each other in the same repository allowing users to choose the version best suited for their own needs. 

Either way, it’s recommended to always share your metadata. Even when you are unable to share your data if, for example, it contains ecologically or personally sensitive information, metadata-only records are valuable resources. By sharing your metadata on an online repository, others can learn from the considerations you made when collecting data or the methods you followed, and easily assess whether they want to request your data.

### Sensitive information
Before you publish any data online, be aware that some data is not yours to publish and requires special protection. Personal information and any privacy information in your data or metadata has to be treated according to local privacy protection regulations (e.g., the [General Data Protection Regulation (GDPR)](https://commission.europa.eu/law/law-topic/data-protection/data-protection-eu_en) in the EU). 

Additionally, your data can contain biologically sensitive information, for example, about endangered or rare species. Options to handle this are, for example, making your data available with restricted access or providing spatial information at a lower resolution.

For the best advice on how to handle your data, you should consult the responsible person at your institution (e.g., data steward, data protection officer, or privacy officer).

## Choosing a repository 

The range of existing repositories is very large and while some are domain specific, there are other repositories that accept data from different disciplines. To find the repository that is best suited for your data it can be helpful to take the following points into consideration:

**Which data and metadata formats are accepted?**

Depending on the format your data/metadata is stored in, not every repository will accept your data/metadata. Many repositories however accept a wide range of formats but have preferred formats to upload your data in, as these formats have best long-term guarantees in sustainability and accessibility (see [here](https://dans.knaw.nl/en/file-formats/) for an example).

**What repository is commonly used in your organisation, community or discipline? **

Check which repositories your direct colleagues in your organisation, or other data providers in your community or field of research use. Using such repositories will likely make your data better linked to other datasets and found more easily by others in your discipline. 

**Is a persistent identifier assigned and explicitly mentioned?**

To ensure that your dataset can always be found, it is important that your data is associated with a [persistent identifier (PID)](#PID) and that this PID is explicitly mentioned in the metadata. Most repositories assign a PID when you submit your data, which is preferred over repositories in which you would need to assign the PID yourself. Different repositories also use different identifier systems which can be another selection criterion if you have personal preferences for a specific identifier system.   

**How can the dataset be accessed?**

Do users have to download the dataset directly from the repository's website or is there a more automated option available, such as an [API (Application Programming Interfaces)](#API)?  Is the repository using an open, free and standardised protocol, like the [Open Archives Initiative Protocol for Metadata Harvesting (OAI-PMH)](https://www.openarchives.org/pmh/), to make the data accessible?

**Is metadata stored persistently even when the data is no longer available?**

The metadata of your dataset should be stored persistently so that users can still find out about the existence of your data, even if it is no longer available on the repository itself. 

**Do you want version control?**

Version control means that changes in the data and reuploads are tracked and that multiple versions of your data are available. Not all repositories provide version control, so if this is important for you, make sure that the chosen repository provides this option. At [re3data.org](http://re3data.org), for example, you can directly filter for repositories with versioning. 

**Is the repository indexing the data?**

To make your data findable on the web by search engines, it has to be registered or indexed in a catalogue. Many repositories do this automatically and make your dataset findable, for example, through [Google dataset search](https://datasetsearch.research.google.com/). 


**Do you retain custody of your data or is it transferred to the repository?**

There are repositories that obtain the custody of your data once it is uploaded there, meaning that the [data management](#datamanagement) is done by the repository and your possibilities to manage the data are then very limited. This can be beneficial if you do not want to have further responsibility for your data, but if you still want to be able to manage the data yourself after uploading it, a repository where the custody stays with you will be better suited. 


## Repositories to store biodiversity data

Here are some examples of commonly used repositories for biodiversity data. This list is non-exclusive; other options might exist that are more suitable for your data.

### Global repositories

**GBIF**, the [Global Biodiversity Information Facility](http://gbif.org), is a data infrastructure and international network providing open access to biodiversity data. It holds species occurrence data from different sources, ranging from museum collections to field observations. In the coming years, GBIF is expanding to include a variety of other data types, including eDNA data, camera trap data, and data on species interactions (@GBIF_2021). Data is stored using data standards, such as [Darwin Core](#DwC), and is openly accessible to everyone. 

**OBIS**, the [Ocean Biodiversity Information System](https://obis.org/), is an international databank system for maritime biodiversity and biogeographic data with the objective to provide the largest knowledge base on the diversity, distribution and abundance of marine organisms. 

Both GBIF and OBIS use an Integrated Publishing Tool (IPT) as a way to submit data. It is a tool that facilitates the creation of metadata in a standard format and helps with mapping the data to Darwin Core and structure it in a [Darwin Core Archive](#DwC-A) (for more information see [later chapters](#darwin-core-archive)). There is extensive documentation on how to use the IPT by GBIF [here](https://ipt.gbif.org/manual/en/ipt/latest/dwca-guide). Once the dataset is published it is assigned a DOI.

**Dataverse** is an open-source repository software that has installations (i.e., repositories based on the software) all over the world. Data can only be published on a Dataverse instance if you are part of one of the collaborating institutions but is always accessible to everyone. A full list of Dataverse installations can be found [here](https://dataverse.org/installations).

[**Zenodo**](https://zenodo.org/) is an open European repository hosted by CERN and in contrast to the other repositories listed here not domain specific. It contains research data from several research domains, provides versioning, DOI assignment, restricted access options if wanted and assures persistent long-term storage of your data. 

### Dutch repositories
Since the project partners behind this guide are situated in the Netherlands, we also want to highlight some Dutch repositories. 

**[DataverseNL](https://dataverse.nl/)** is a Dutch installation of Dataverse and is hosted by DANS-KNAW. Researchers from all collaborating institutes within the Netherlands can store their data there and make it available to everybody. Reasons for uploading data to DataverseNL:

- It automatically gets a persistent identifier

- The metadata is findable through web services like [Google dataset search](https://datasetsearch.research.google.com/)

- The data is easily retrievable through an [API](#API) 

- There is versioning to track changes and re-uploads of the data

- The custody of the data stays with the data owners


**DANS Data Station Life Sciences**

The [DANS Data Station for Life Sciences](https://dans.knaw.nl/en/life-sciences/) is a repository hosted by DANS-KNAW which is based on the Dataverse software. It is open for every individual researcher independent of institution both to store and retrieve data. It is always free of charge to access data and up until a data size of 50 GB also to store data. The Data Station for life sciences is domain specific, accepting data of medical, health and green life sciences, while there are other Data Stations hosted by DANS for other domains, such as [social sciences](https://dans.knaw.nl/en/social-sciences-and-humanities/), [archeology](https://dans.knaw.nl/en/archaeology/) and [physical and technical sciences](https://dans.knaw.nl/en/physical-and-technical-sciences/). It also allows access restrictions, which is helpful if you want to store your data persistently but not necessarily make it open for everyone. 

## Tools to help you 

- [re3data.org](http://re3data.org) is a registry of repositories for research data where you can filter a broad range of repositories for different criteria, such as subject, country, persistent identifier system, versioning or licences.

- [fairsharing.org](http://fairsharing.org) is a registry that lists a variety of standards, databases and policies. To find repositories you can either directly search for a specific one and get detailed information on it or search all repositories/databases and filter for a range of options, such as country, subject or specific tags. 

- [DataCite Commons](https://commons.datacite.org/) provides a repository finder that integrates information on repositories from re3data within the [FAIRisFAIR](https://www.fairsfair.eu/) project. It allows users to search for repositories by keywords and filter the repositories for certificates, such as the CoreTrustSeal, or the software they are based on. 

## Our choice
For the dataset we owned ourselves within our department ([bud burst](#budburst)), we decided to store the primary data on DataverseNL. Besides the reasons listed above, we chose DataverseNL because it was already used by many other researchers from our institute and it was suitable for our data type. For us it was especially important that we retain the custody of our data, which was a reason to not choose the Data Station. Additionally, we wanted to store our data within the Netherlands and it was a natural choice to choose a repository hosted by one of the project partners. 
