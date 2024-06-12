# Standardise and structure your metadata

Once you have described your data and assigned metadata to it, you can make your data more FAIR by also mapping your metadata to a standard format. Similar to data standards described in a previous section, there are also several metadata standards available to do so. The distinction between metadata standards and data standards is however often not that clear and Darwin Core sometimes is also referred to as a metadata standard. 

## Metadata standards (for biodiversity data)

As with the data standards, a wide range of metadata standards exists, partly tailored to specific research domains. 

For ecological data, a widely used metadata standard, for example by OBIS and GBIF, is the **Ecological metadata language (EML)**, which is also the required format for metadata in the Darwin Core Archives. It consists of a set of defined terms used to describe metadata and is compatible with other community standards. EML uses a readable XML markup syntax that balances the machine and human readability and is structured in modules making it relatively flexible in describing metadata. The developers provide a good overview of all the modules and EML terms together with important details and definitions in their [interactive schema documentation](https://eml.ecoinformatics.org/schema/). 

**Dublin Core** is a metadata standard consisting of a set of 15 terms used to describe metadata. The terms themselves consist of several dozen properties, classes, data types, and vocabulary encoding schemes and are maintained by the [Dublin Core Metadata Initiative (DCMI)](https://dublincore.org/).

## Tools to help you

- The [metadata standard catalog](https://rdamsc.bath.ac.uk/), provides a nice overview of the different metadata standards and is searchable, for example, for specific topics. 

## Our choice
For all of our datasets we choose EML as the metadata standard because it is very flexible and provides all the necessary terms to describe our metadata. Especially through its terms about spatial, temporal and taxonomic coverage it captures the key elements of our datasets and is much better suited to describe ecological data then Dublin Core, for example. Additionally, as we went with Darwin Core Archives to structure the data, EML was required to use as a metadata standard. 

## EML terms
EML consists of a wide range of terms of which some are required, while others might just be nice to have depending on what information your metadata contains. In general, terms can have several levels of subterms and we will not cover all of them here (detailed information on every term can be found [here](https://eml.ecoinformatics.org/schema/) and some best practices [here](https://ediorg.github.io/data-package-best-practices/eml-best-practices.html)). 
For all terms containing text the “xml:lang” attribute should be added if the language is not English. Be aware that EML terms use the spelling of American English. 
