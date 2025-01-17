# (PART\*) c. Standards {.unnumbered}

# Standardise your data

## Choose a data standard

Once you have considered the mobilisation of your data and metadata to an online repository, you can start to [standardise](#standardise) the data. The first step here is to choose a data standard, i.e., a standard format to name and organise the data. There is a wide range of standards available and many of them are directly tailored to a certain domain. Standards within the field of biodiversity are mostly maintained by the non-profit organisation [Biodiversity Information Standards (TDWG)](https://www.tdwg.org/). Which standard is best suited for your data depends on its content and format. In order to choose a standard, you should consider:

**Is the standard accepted and used by your community?**

If the community is already familiar with the standard the threshold to reuse your standardised data is likely lower.

**Is the standard well-maintained and stable?**

Data standards should be maintained, further developed and adapted by following the developments in the field they are tailored to and the needs of the community. Terms should also be stable and not change in meaning and always be referred to by a persistent identifier.

## Data standards for biodiversity data

[**Darwin Core (DwC)**](https://dwc.tdwg.org/) is a stable data standard tailored to describe biodiversity data by using a defined library of terms. It is an extension of the [Dublin Core](#dublincore) Metadata Initiative and maintained by TDWG (Biodiversity Information Standards). Darwin Core facilitates sharing of biodiversity data from various sources as every term has a clear definition and a [URL](#URI), which can be used irrespective of technology, e.g., [XML](#XML) or [RDF](#RDF).

[**ABCD (Access to Biological Collection Data)**](https://abcd.tdwg.org/) is a standard to facilitate the access to and exchange of data about specimens and observations. It is a highly structured, comprehensive and still evolving standard that is, for example, used within [GBIF](#GBIF). It is maintained by TDWG and consists of an [ontology](#ontology) of terms to describe the data.

## Tools to help you

-   A helpful tool to find a standard is [FAIRsharing](https://fairsharing.org/search?fairsharingRegistry=Standard), which is a registry that lists a variety of standards and provides detailed information, for example, about their maintenance, background and how they are linked to other standards. It also allows filtering for certain criteria, such as licensing, country or domain.

-   An overview of the standards maintained by TDWG can be found [here](https://www.tdwg.org/standards/).

## Our choice

For biodiversity data, a widely used data standard is Darwin Core. It is well suited to be used with species occurrence data that is either collected in the field, in experiments or comes from museum collections. For all the datasets we used to develop this guide, Darwin Core was a suitable standard, as it captures all the information in the data, is easy to apply through extensive documentation and applicable to the tabular format of our data. For this reason, we will focus mainly on Darwin Core in the following chapters, because we think that the tabular format is probably one of the most common formats biodiversity data is stored in.

### Why Darwin Core?

Darwin Core is widely used in the ecological community and required for publishing data on big ecological data infrastructures, such as GBIF and [OBIS](#OBIS). With its primary focus on taxa and their occurrences in nature, it is well suited to describe most ecological datasets, with the necessary flexibility to describe different types of data, such as observational or experimental data. Additionally, mapping variables of ecological data to Darwin Core terms is relatively straightforward and there is detailed description available on each Darwin Core term.

## Mapping your data to Darwin Core

### Darwin Core namespaces

Namespaces are prefixes used to distinguish between terms from different vocabularies or standards, ensuring there are no conflicts between similarly named terms. In the context of Darwin Core, four main namespaces are used:

- [*dwc*](http://rs.tdwg.org/dwc/terms/): marks standard Darwin Core terms and generally has string values (e.g., dwc:scientificName)

- [*dc:*](http://purl.org/dc/elements/1.1/): marks terms belonging to "elements/1.1" namespace of Dublin Core and generally has string values (e.g., dc:title)

- [*dwciri*](http://rs.tdwg.org/dwc/iri/): marks Darwin Core terms that must be used with [Internationalized Resource Identifier (IRI)](#URI) values and are generally used in [RDFs](#RDF) (e.g., dwciri:recordedBy)

- [*dcterms*](http://purl.org/dc/terms/): refers to terms coming from the "terms" namespace of Dublin Core and their values depend on the details of the respective term (e.g., dcterms:identifier)

### Darwin Core terms

Every column name in your data should be mapped to a Darwin Core term. This sometimes requires restructuring the data slightly or adding additional information in extra columns, e.g., units. The values within a column (i.e., DwC term) have to be compliant with the definitions given in the [Darwin Core List of terms](https://dwc.tdwg.org/list/). As Darwin Core is only a vocabulary, it does not have any required terms. Only if you later on want to organise your Darwin Core terms in a [Darwin Core Archive](#DwC-A), some of the terms are required (see [this section](#DarwinCore-Archive)).

:::{.tableDwCterms}
[**Table 6.1. Selected set of Darwin Core terms of each class.** Bold terms are described in more detail in the following sections. Note that none of the following terms are strictly required.]{style="font-size: 11px;"}

| Event             | Occurrence               | Taxon                | MeasurementOrFact         | Location                      | Organism                | MaterialEntity        | GeologicalContext           |
|:--------|:--------|:--------|:--------|:--------|:--------|:--------|:--------|
| **eventID**       | **occurrenceID**         | taxonID              | **measurementID**         | locationID                    | **organismID**          | materialEntityID      | geologicalContext           |
| **parentEventID** | recordedBy               | **kingdom**          | parentMeasurementID       | **country**                   | organismName            | preparations          | earliestEonOrLowestEonothem |
| eventType         | recordedByID             | **phylum**           | **measurementType**       | **countryCode**               | organismScope           | disposition           | earliestEraOrLowestErathem  |
| **eventDate**     | recordedByID             | **class**            | **measurementValue**      | **verbatimLocality**          | associatedOrganisms     | verbatimLabel         | earliestEpochOrLowestSeries |
| **eventTime**     | **individualCount**      | **order**            | **measurementUnit**       | **decimalLongitude**          | previousIdentifications | associatedSequences   | lowestBiostratigraphicZone  |
| **year**          | **organismQuantity**     | **family**           | **measurementMethod**     | **decimalLatitude**           | organismRemarks         | materialEntityRemarks | lithostratigraphicTerms     |
| **month**         | **organismQuantityType** | **genus**            | measurementAccuracy       | **geodeticDatum**             |                         |                       | formation                   |
| **day**           | sex                      | **specificEpithet**  | measurementDeterminedDate | coordinateUncertaintyInMeters |                         |                       | bed                         |
| samplingProtocol  | behavior                 | **scientificName**   | measurementDeterminedBy   | footprintWKT                  |                         |                       |                             |
| sampleSizeValue   | lifeStage                | acceptedNameUsage    | measurementRemarks        | minimumElevationInMeters      |                         |                       |                             |
| sampleSizeUnit    | degreeOfEstablishment    | nameAccordingTo      |                           | minimumDepthinMeters          |                         |                       |                             |
| samplingEffort    | occurrenceStatus         | higherClassification |                           | georeferenceProtocol          |                         |                       |                             |
| fieldNotes        | occurrenceRemarks        | taxonRank            |                           |                               |                         |                       |                             |
| eventRemarks      | catalogNumber            | vernacularName       |                           |                               |                         |                       |                             |

:::

### Terms of class Event

Before assigning the terms of the event class to your data, you should define what exactly one event in your data is. An event is generally defined as an action that occurs at a certain time and place. Depending on how your data is collected, there might also be some hierarchy in your events that should be accounted for. Defining how events are structured in your data and which measurements or occurrences belong together, makes it easier to properly map your data to the respective terms, especially eventID and parentEventID, and later on facilitates structuring of the data.

#### eventID & parentEventID {#eventID}

The eventID can be a globally unique identifier or an identifier specific to the dataset. For more information on how to create globally unique identifiers, see [this chapter](#GUIDcreation). If you choose to create identifiers specific to the dataset, we recommend establishing a structure that simultaneously is informative about the event. If there is a hierarchy in the events, eventIDs should build on the parentEventIDs. We recommend using separators (e.g., "\_" or "-") to indicate the different blocks of the event levels within an eventID.

::: {.infobox .infoimg}
Some guides about persistent identifiers (e.g., @Richards) state that IDs should be opaque, meaning that they do not give any information about what they describe or relationships between resources. By this it can be avoided that the ID contains information that might no longer be true at a later time (because the resource has changed). However, these guides mostly refer to opaque identifiers on the data or resource level and not on the record level, which is why we decided to increase human-readability by creating informative dataset-specific IDs. This problem does of course not occur if you choose GUIDs.
:::

::: {.examplebox .exampleimg}
**Bud burst**:

In the bud burst data, we have three different event levels. The highest level describes the event of going to the field in a certain year to a certain area. The eventID therefore consists of an area abbreviation and the year, e.g., HV2004. For the event level below, the sampling on a specific day within a year and area, the previous eventID becomes the parentEventID and the level 2 eventID extends the parentEventID by a separator and the day of the year, e.g., HV2004_99. The third and lowest event level describes the sampling of a specific tree on a day within an area and year. The eventID of level 2 becomes the parentEventID and the level 3 eventID extends the parentEventID by an underscore and the number of the tree, e.g. HV2004_99_5. This way, the eventID is easily human-readable and directly gives the most important information about the event.
:::

::: {.examplebox .exampleimg}
**Crickets**:

In the cricket data, there were two different event types, one relating to measurements that have been taken on plants and the other to measurements of individual crickets. For the plants, each plot-treatment combination was measured once, leading to one event for each of them. The eventIDs were therefore simply the plot name and a treatment code, for example, PM1-T1 (PM1 being the plot name, T1 the first treatment). Conversely, defining events for cricket measurements posed more challenges due to the lack of specific date and time information in the data. By using the publication belonging to the dataset and the documentation file accompanying the data, it was possible to identify which measurements were taken simultaneously, allowing them to be grouped into the same event. This approach yielded 18 distinct event groups per individual cricket from which we build the eventID by merging the cricket identifier with the event group number, e.g., Cr1-05 (indicating individual cricket number 1 and event group 5).
:::

#### Date information (eventDate, year, month, day)

**eventDate** is necessary to be filled but can vary in its precision. If a full date is available, use the [ISO standard (8601-1:2019)](https://www.iso.org/obp/ui/en/#iso:std:iso:8601:-1:ed-1:v1:en) date format of YYYY-MM-DD. You should always give the date as precise as possible, so if the exact day is not available, give at least the year and month, etc. You can also give an interval if a distinct point in time is not available by separating the days or months or years by a slash, e.g., 2014-04-01/08 meaning some time in the interval between the first April 2014 and the 08 April 2014. If the interval starts and ends at days of different months, also repeat the year (e.g., 2014-04-01/2014-07-01).

In addition to eventDate, we recommend to use the terms **year**, **month** and **day** (if applicable) as this can facilitate later analysis with the data. If eventDates of different levels are not all of the same format, for example the parent event only has the year (2024), while the child event has an exact date (2024-11-05), the event dates can be transformed to characters, as programs like R do not accept different date formats in the same column. In this case, the additional columns of year, month and day are especially helpful, as missing values can be left empty/filled with *NA*, while the rest is numeric.

#### Time information (eventTime)

If you also have time information in your data, this can either also be stored in eventDate or additionally in an extra column as **eventTime**. As with date, time should be given in time of day (in 24h system) following the [ISO standard 8601-1:2019](https://www.iso.org/obp/ui/en/#iso:std:iso:8601:-1:ed-1:v1:en). Time intervals can again be given by separating times with a slash, e.g., 13:00:00/15:30:00 (the interval between 13:00 and 15:30). If time information should be added to eventDate (which is recommended, as eventDate should be as precise as possible), the date and the time are separated with a "T", for example, 2018-08-29T15:19. Time Zones can be specified by adding a "Z" at the end, if the time is recorded in UTC (e.g., 2010-02-16T08:40Z) or by stating the deviation from UTC by adding a plus or minus and the number of hours of the deviation, e.g., 2010-02-16T08:40-0300 meaning UTC minus 3 hours. If neither of both is given, it is assumed that the time is given as the local time.

### Terms of class Location

#### Coordinates (decimalLonigtude, decimalLatitude, geodeticDatum)

Exact coordinates for locations can be given with the terms **decimalLongitude** and **decimalLatitude**. If these are filled, the term **geodeticDatum** should also be filled, giving the spatial reference system in which the coordinates are given. Best practice is to use the [EPSG codes](https://epsg.io/?q=%20kind%3AGEOGCRS). For hierarchical events, like in the bud burst case, coordinates should only be assigned to the event levels they were actually measured, e.g., only for level 3 events where the exact coordinates of the trees are known.

#### Geographic descriptions (verbatimLocality, continent, islandGroup, island, country, municipality, city, stateProvince, county, countryCode)

In addition to the coordinates, which we strongly recommend to include, the term **verbatimLocality** can sometimes be useful. It gives the original textual description of the location, which can be particularly useful if areas have well-known names and makes these locations easier recognisable. There is also a range of other terms that provide geographic description and can be used to determine the location of events, such as **continent**, **islandGroup**, **island**, **country**, **municipality**, **city**, **stateProvince** or **county**. In addition to country, you can also use **countryCode**, which gives the standard code for the country, ideally the two letter codes of [ISO 3166-1-alpha-2](https://www.iban.com/country-codes).

### Terms of class Organism

The term "organism" in Darwin Core is defined more broadly than in the strict biological sense and can refer to either a specific organism or a defined group of organisms that are taxonomically homogenous. This means a single cricket can be considered an organism, as well as a flock of birds belonging to the same species.

#### organismID

Individual organisms can be assigned a unique organismID. This is helpful, if you have several data records that belong to the same individual or organism for maintaining this link between records (e.g., measurements of the same tree in several years). Previously there was the DwC-term individualID, which nowadays is deprecated and replaced with organismID. As with other ID fields, the organismID can either be globally unique or specific to the dataset.

### Terms of class Occurrence

Occurrence is generally defined as the existence of an organism at a certain time and place.

#### occurrenceID {#occurrenceID}

The occurrenceID assigns a unique ID to every occurrence record. Several occurrenceIDs can be associated with a single eventID, for example when different species occurred at the same event. You can either assign GUIDs (see [here](#GUIDcreation)) or identifiers specific to the dataset. If you choose to create dataset-specific identifiers, we recommend creating informative IDs that give information about the occurrences they describe (see [eventID](#eventID) for more details). 

If your data also includes an eventID, we recommend proceeding with the block-structure of IDs we have already used there by extending the eventID of the corresponding event with a new block that numbers the occurrences of that event. However, if there are occurrence records for different event levels, extending the eventID may lead to unequal length of the occurrenceIDs from the different event levels. This can be confusing and lead to doubled IDs, as higher level occurrenceIDs then have the same length as for example lower level eventIDs (i.e., HV2004_99_5 as an eventID refers to a third level event but as an occurrenceID it could also refer to the fifth occurrence record of the higher level eventID HV2004_99). To avoid this confusion and ensure unique IDs, we therefore add the prefix “o” (for occurrence) in the block of the ID that numbers the occurrences, e.g., HV2004_99_5_o1. This method helps maintain clarity and uniqueness across different event levels.


::: {.examplebox .exampleimg}
**crickets**: occurrenceID = Cr1-05_1 (corresponding to eventID Cr1-05, indicating the first occurrence of that event)
:::

#### Taxonomic information

Taxonomic information should always be specified to the lowest level possible. Which level this is can be specified with the term **taxonRank**. We recommend to use at least the following DwC terms to describe taxon information:

-   **kingdom**

-   **phylum**

-   **class**

-   **order**

-   **family**

-   **genus**

-   **specificEpithet**

-   **scientificName**

The **specificEpithet** only contains the second part in the scientific name of a species, while the **scientificName** contains the full scientific name (i.e., genus + species epithet) together with author and date information, if available. Taxonomic information can be added manually but we recommend to directly query a biological [taxonomy](#taxonomy) for the complete classification of the taxa in your data, to avoid misspellings and/or the use of outdated classification.

Some taxa come with several authorship information or with synonym names. To deal with this, it can again be helpful to directly retrieve the taxonomic information from a biological taxonomy, as they also contain information on the accepted usage of classifications. Which taxonomies exist for this and tools to help you use them, will be explained in more detail in the section [biological taxonomies](#biological-taxonomies).

However, even if you retrieve taxonomic information automatically from a taxonomy, we strongly recommend to double check the retrieved information manually, as mistakes can easily occur in the case of rare species or taxa with similar names (e.g., for the plant genus *Convolvulus* and the animal genus *Conovulus*).

::: {.examplebox .exampleimg}
**Crickets**:

For the cricket dataset, we queried the taxonomic information of the European field cricket (*Gryllus campestris*) directly from GBIF, which resulted in the following taxonomic terms (table 6.1).

[**Table 6.1. Taxonomic information for *Gryllus campestris* as retrieved from GBIF stored in respective Darwin Core terms.**]{style="font-size: 11px;"}

|           scientificName            | kingdom  |   phylum   |  class  |   order    |  family   |  genus  | specificEpithet | taxonRank |
|:---------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|
| *Gryllus campestris* Linnaeus, 1758 | Animalia | Arthropoda | Insecta | Orthoptera | Gryllidae | Gryllus |   campestris    |  species  |
:::

::: {.examplebox .exampleimg}
**CLUE data**:

The CLUE data covers around 130 different plant species and many of them were either misspelt or synonym names were used. One example is shown in table 6.2 where the species name in the data was *Deschampsia flexuos* which is a synonym of the accepted species name *Avenella flexuosa*. This was automatically detected while retrieving the taxonomic information from GBIF and the corresponding information correctly assigned accordingly.

[**Table 6.2. Taxonomic information for *Deschampsia flexuosa*, which is a synonym of *Avenella flexuosa*, as retrieved from GBIF and stored in respective Darwin Core terms.**]{style="font-size: 11px;"}

|          scientificName           | kingdom |    phylum    |   class    | order  | family  |  genus   | specificEpithet | taxonRank |
|:--------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|
| *Deschampsia flexuosa* (L.) Trin. | Plantae | Tracheophyta | Liliopsida | Poales | Poaceae | Avenella |    flexuosa     |  species  |
:::

#### individualCount and organismQuantity

In the occurrence file, it is important to quantify how many organisms have occurred. There are two different terms to do so, **individualCount** and **organismQuantity**. While individualCount is unitless and only gives the number of individuals present at the time of the occurrence, organismQuantity is more flexible, as it describes the quantity of an organism. As organisms do not have to be individuals (see above), it can for example also give the percentage of biomass of an organism or quantify it on a certain scale. Therefore, organismQuantity always requires the additional term **organismQuantityType** that describes the corresponding quantification system. GBIF provides a [Quantity Type Vocabulary](https://rs.gbif.org/vocabulary/gbif/quantity_type_2015-07-10.xml) with terms they recommend to use to describe the organismQuantityType.

There is ongoing discussion on which of the two terms to use. Some suggest deprecating the term individualCount, as the same information can easily be stored in organismQuantity with higher flexibility. However, individualCount seems to be a standard term that is widely used in specific disciplines, where the terms are not necessarily viewed as redundant. Moreover, it was demanded that there should first be standardised vocabulary in place for organismQuantity and organismQuantityType. Based on the greater flexibility and the potential of deprecating individualCount, we recommend using organismQuantity when possible.

### Terms of class Measurement or fact {#mof}

The [measurement or fact](#measurementorfact) terms require your measurement records to be in a long format. As research data often is stored in a wide format, you will first need to pivot your data before mapping is possible, meaning that all your measured values (or facts) are in one column and have a variable description in a separate column.

:::{.infobox .infoimg}

**Wide versus long format**

When storing multiple measurements (or observations) of the same subject in a table, you can store this in a wide or in a long format. Data in the wide format is structured with each row representing a single subject and each column representing a different measure. In contrast, in the long format, each row represents a single measurement or observation and the measured value and measurement type are stored in separate columns. In Darwin Core, measurements are stored in a long format.

:::

#### measurementValue & measurementUnit

After transforming your data into the long format, the column containing the measured values or facts can be mapped to the Darwin Core term **measurementValue**. Measurements come with units, which are often either stored within the column heading or not specified at all in the raw data. Darwin Core accounts for that by the term **measurementUnit**, which has to be added if you use measurementValue. It is best practice to use SI (International System of Units) units if possible. For unitless measurements, the measurementUnit should still be present in the data but can be left empty/filled with *NA*.

#### measurementType & measurementMethod

With the long format and all measurements being stored in measurementValue, you additionally need to store **what** has been measured, i.e., what each measurement or fact means. This is done by the term **measurementType**. Additionally, you should use the term **measurementMethod** that states how each measurement was measured. For both terms, it is recommended to use controlled vocabulary where possible. For more information on the use of ontologies, see [section ontologies](#ontologies).

::: {.examplebox .exampleimg}
**Bud burst**:

To exemplify how the four terms measurementValue, measurementUnit, measurementType and measurementMethod are used, the following shows the previous state of the measurements in the bud burst raw data (top) and how the columns containing measurements are mapped to the Darwin Core terms (bottom).

[**Table 6.3. Bud burst data in original state.**]{style="font-size: 11px;"}

| Year | TreeID | TreeTopScore | TreeAllScore |
|:----:|:------:|:------------:|:------------:|
| 1988 |   61   |      2       |      2       |

[**Table 6.4. Bud burst data after mapping to Darwin Core terms.**]{style="font-size: 11px;"}

|                measurementType                 | measurementValue | measurementUnit |            measurementMethod             |
|:----------------------:|:-------------:|:-------------:|:------------------:|
| bud burst stage (PO:0025532) of the tree crown |        2         |       NA        | <https://doi.org/10.1098/rspb.2000.1363> |
| bud burst stage (PO:0025532) of the whole tree |        2         |       NA        | <https://doi.org/10.1098/rspb.2000.1363> |
:::

#### measurementID

The measurementID assigns a unique ID to every measurement or fact. Several measurementIDs can belong to one occurrenceID and/or eventID, for example when different characteristics of the same individual are measured. If you choose to create identifiers specific to the dataset, we recommend proceeding with the block-structure of IDs we have already used for the [eventID](#eventID) and [occurrenceID](#occurrenceID). If there are measurements at different event levels, extending the occurrenceID or eventID by a separator and a number for the measurement will lead to unequal length of measurementIDs from different event levels and increases the possibility that IDs are not unique within the dataset. To avoid this, we add the prefix "m" (for measurement) in the block of the ID that numbers the measurements.

::: {.examplebox .exampleimg}
**Budburst**: measurementID = HV2004_99_5_1_m2 for the second measurement of the eventID HV2004_99_5 and the occurrenceID HV2004_99_5_1

**Crickets**: measurementID = Cr1-05_1_m8 for the eighth measurement of eventID Cr1-05 and occurrenceID Cr-05_1
:::
