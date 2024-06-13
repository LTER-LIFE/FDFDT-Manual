# Standardise and structure your metadata

Once you have described your data and assigned [metadata](#metadata) to it (see [chapter 4](#describe-data)), you can make your data more FAIR by also mapping your metadata to a standard format. Similar to data standards described in a previous section, there are also several metadata standards available to do so. The distinction between metadata standards and data standards is however often not that clear and [Darwin Core](#DwC) sometimes is also referred to as a metadata standard.

## Metadata standards (for biodiversity data)

As with the data standards, a wide range of metadata standards exists, partly tailored to specific research domains.

For ecological data, a widely used metadata standard, for example by [OBIS](#OBIS) and [GBIF](#GBIF), is the [**Ecological metadata language (EML)**](#eml), which is also the required format for metadata in the [Darwin Core Archives](#DwC-A). It consists of a set of defined terms used to describe metadata and is compatible with other community standards. EML uses a readable [XML](#XML) markup syntax that balances the machine and human readability and is structured in modules making it relatively flexible in describing metadata. The developers provide a good overview of all the modules and EML terms together with important details and definitions in their [interactive schema documentation](https://eml.ecoinformatics.org/schema/).

**Dublin Core** is a metadata standard consisting of a set of 15 terms used to describe metadata. The terms themselves consist of several dozen properties, classes, data types, and vocabulary encoding schemes and are maintained by the [Dublin Core Metadata Initiative (DCMI)](https://dublincore.org/).

## Tools to help you

-   The [metadata standard catalog](https://rdamsc.bath.ac.uk/), provides a nice overview of the different metadata standards and is searchable, for example, for specific topics.

## Our choice

For all of our datasets we choose EML as the metadata standard because it is very flexible and provides all the necessary terms to describe our metadata. Especially through its terms about spatial, temporal and taxonomic coverage it captures the key elements of our datasets and is much better suited to describe ecological data then Dublin Core, for example. Additionally, as we went with Darwin Core Archives to structure the data, EML was required to use as a metadata standard.

## EML terms

EML consists of a wide range of terms of which some are required, while others might just be nice to have depending on what information your metadata contains. In general, terms can have several levels of subterms and we will not cover all of them here (detailed information on every term can be found [here](https://eml.ecoinformatics.org/schema/) and some best practices [here](https://ediorg.github.io/data-package-best-practices/eml-best-practices.html)). For all terms containing text the "xml:lang" attribute should be added if the language is not English. Be aware that EML terms use the spelling of American English. 

<span style="color: #d111d4ff;">**Required terms**</span>

EML comes with only three terms that are required to make the EML document schema valid.

-  <span style="color: #d111d4ff;">`<title>`</span>: a brief title that provides enough information to distinguish this dataset or resource from others and makes clear what the data is about. The "xml:lang" attribute can be used to specify in which language the title is given, which is especially useful if you want to give alternative titles in different languages.

- <span style="color: #d111d4ff;">`<creator>`</span>: information on the person or organisation that created the dataset

- <span style="color: #d111d4ff;">`<contact>`</span>: information on the person or organisation that contacted about the data, e.g., if questions arise

<span style="color: #dd7f08ff;">**Highly recommended terms**</span>

The following set of terms is not strictly required by EML but we would highly recommend to provide as much of them as possible, as this increases the richness of the metadata and provides valuable information about the data that is helpful for others to understand and reuse the data.

-   <span style="color: #dd7f08ff;">`<metadataProvider>`</span>: information about the person that has provides the metadata in the EML file

    **Creator, contact and metadataProvider** 
    The creator and the contact can either be a named person, a certain position that is always staying the same even though the people in the position might change, or an organisation. For each of these cases, different subterms exist in all three terms (including metadataProvider) to describe the person/position/organisation accordingly. It is therefore required to choose at least one of the terms `<individualName>`, `<organizationName>` or `<positionName>`.

    -   `<individualName>`: the name of an individual person can be given with three subterms:

        - `<salutation>`: can be a title (e.g., “Dr.”) or another salutation (“Mr.”/”Ms.”)
        - `<givenName>`
        - `<surName>`
    - `<organisationName>`
    - `<positionName>`
    - `<address>`
    - `<city>`
    - `<postalCode>`
    - `<country>`
    - `<electronicMalAddress>`
    - `<userID>`: an identifier that links the person or organisation to a directory if individuals, e.g., an ORCID. This terms requires the attribute `<directory>` to state which directory the ID refers to and will generally be an URL (e.g., https://orcid.org)

The contact, creator and metadataProvider can be different people/organisations/positions but can also all be the same. In the latter case, do this.

- <span style="color: #dd7f08ff;">`<language>`</span>: provides the language the resource is written in and can either be a well-known language name or ideally, a [ISO language code](https://www.w3schools.com/tags/ref_language_codes.asp)

- <span style="color: #dd7f08ff;">`<abstract>`</span>: a short summary of the data that includes basic information to give an idea what the data is about. 
    - `<para>`: Text is stored in this subterm, which can either directly have a text string or a set of subterms consisting of markup tags allowing for formatting of the text.
    
- <span style="color: #dd7f08ff;">`<keywordSet>`</span>: can either be one or many keywords describing the resource
    - `<keyword>`: each keyword is stored separately in this subterm as text. 
    - `<keywordThesaurus>`: If the keywords are part of a thesaurus, it can be specified which thesaurus they are derived from.
    
- <span style="color: #dd7f08ff;">`<coverage>`</span>: Describes the spatial, temporal and taxonomic coverage of the resource.
    - <span style="color: #dd7f08ff;">`<temporalCoverage>`</span>: information on what time span is covered in the data. Use [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) (i.e., YYYY-MM-DD) for date and time information. Needs either one of the subterms:
        - `<singleDateTime>`: describes a single date and time either by describing a calendar date or a geologic date, using the subterms:
        - `<calendarDate>`
        - `<time>`
        - `<alternativeTimeScale>`: can describe alternative time scale, e.g., geological date, with a range of subterms
        - `<rangeOfDates>`: allows to describe a time range by specifying start and end date (with the same subterms as for singleDateTime). Can be repeated if there are several time ranges that need to be described. 
        - `<beginDate>`
        - `<endDate>`
        
    - <span style="color: #dd7f08ff;">`<geographicCoverage>`</span>: information about the spatial extent of the data that should be given as text and coordinates with the subterms:
        - `<geographicDescription>`: short text explanation of the spatial extent
        - `<boundingCoordinates>`: stating the four edges of a bounding box, by giving:
        - `<westBoundingCoordinate>`
        - `<eastBoundingCoordinate>`
        - `<northBoundingCoordinate>`
        - `<southBoundingCoordinate>`
        
    - <span style="color: #dd7f08ff;">`<taxonomicCoverage>`</span>: information about the taxa covered in the data
        - `<generalTaxonomicCoverage>`: text description of the taxa included in the data
        - `<taxonomicClassification>`: taxonomic classification of the range of taxa included in the data, specified through a set of subterms:
            - `<taxonRankName>`: taxonomic level of information
            - `<taxonRankValue>`: taxonomic nam
            - `<commonName>`
            - `<taxonID>`: identifier of the taxon from a certain provider that has to be specified with the attribute “provider” containing a [URI](#URI) (e.g., provider = “https://eol.org” if the taxon ID is retrieved from EOL)
        
- <span style="color: #dd7f08ff;">`<maintenance>`</span>: information on with which frequency the data is updated and whether data collection is still ongoing
    - `<maintenanceUpdateFrequency>`: needs to be filled with a term of the EML MaintUpFreqType, for example: annually, asNeeded, biannually, daily, irregular or unknown
    - `<description>`: text description of maintenance stated with subterm 
    - `<para>`
    
- <span style="color: #dd7f08ff;">`<methods>`</span>: stepwise information on methods for data collection
    - `<methodStep>`: can be repeated for each method step and includes a range of subterms to specify instruments, software, protocols, descriptions and citations of the methods 
    
- <span style="color: #dd7f08ff;">`<pubDate>`</span>: publication date of the resource in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) (i.e., YYYY-MM-DD)

- <span style="color: #dd7f08ff;">`<licensed>`</span>: information on the licence of the data and how it can be used by others, for information in which licence to assign see chapter licencing
    - `<licenseName>`: official name of the licence
    - `<url>`: [URL](#URI) referring to the licence (e.g., https://creativecommons.org/licenses/by/4.0/)

<span style="color: #14d16eff;">**Other terms**</span>

There are plenty of other terms that can be suitable to use for your data. The following are just some examples, for a full overview check the EML schema documentation.

- <span style="color: #14d16eff;">`<project>`</span>: broader background information on the project in which the data was collected, needs to have the subterms 
    - `<title>`
    - `<personnel>`
    - Optional subterms:
        - `<abstract>`
        - `<funding>`
        - `<studyAreaDescription>`
        
- <span style="color: #14d16eff;">`<intellectualRights>`</span>: information on the intellectual property rights as text using subterm
    - `<para>`
    
- <span style="color: #14d16eff;">`<alternateIdentifier>`</span>

- <span style="color: #14d16eff;">`<additionalInfo>`</span>: Can capture any information that cannot be captured by the remaining terms and is filled with text using subterm
    - `<para>`
    
- <span style="color: #14d16eff;">`<introduction>`</span>: overview of background and context of the dataset, similar to an introduction of a journal article

- <span style="color: #14d16eff;">`<usageCitation>`</span>: citation to articles or other products where the data is used, consists of a range of subterms


## Structural metadata - The meta.xml file
The meta-file contains the structural metadata and is required by the Darwin Core Archive. It describes how the files are organised, i.e., which file is the [core](#core), which are the [extensions](#extension), and it links every column of each file to its corresponding Darwin Core term by providing its [IRI](#URI) (Internationalized Resource Identifier). The file format of the meta-file is [XML](#xml).


## Create XML files in R 
Both the EML and the meta file are XML files. Creating XML files in R is facilitated by a range of useful packages, such as `emld`, `EML` and `xml2`. 

The key for creating the EML file are lists. The content of every EML term has to be stored as a character in a list. If terms consist of subterms they have to be stored in nested lists within the list of the parent term. <add code example>

In contrast to the EML file, where the metadata is specific to the dataset and has to be filled in by hand, the meta file always consists of the same content only depending on the file and column names of the individual Darwin Core Archive. Instead of creating the meta file by hand, this process can be more easily automated. We created a R function that can be found here, which takes every column name and directly retrieves its IRI from the corresponding namespace. 
