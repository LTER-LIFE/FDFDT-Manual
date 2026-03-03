:::{.examplebox .exampleimg}

**Bud burst**:

```{r eval = FALSE}
# Provide keywords and their thesaurus fo the EML term "keywordSet"
keywordSet <- list(list(keyword = list("bud burst", "trees", "ecology", "plant phenology"),
                      keywordThesaurus = "envThes"),
                 list(keyword = "oak",
                      keywordThesaurus = "GEMET"))
```

*keyword* and *keywordThesaurus* are the EML subterms of *keywordSet*, which looks like this in XML:

``` xml
<keywordSet>
  <keyword>bud burst</keyword>
  <keyword>trees</keyword>
  <keyword>ecology</keyword>
  <keyword>plant phenology</keyword>
  <keywordThesaurus>envThes</keywordThesaurus>
</keywordSet>
<keywordSet>
  <keyword>oak</keyword>
  <keywordThesaurus>GEMET</keywordThesaurus>
</keywordSet>
```
:::

The lists of all terms have to be combined in a final list that can then be converted into an XML file through the function `write_eml()` of the `EML` package.
Some EML terms require XML attributes (see EML terms). These can be assigned using the `xml2` package by first identifying all nodes for which the attribute should be set (`xml2::xml_find_all()`) and then setting the attribute with `xml2::xml_set_attr()`). 

:::{.examplebox .exampleimg}
**Bud burst**:

The following example shows how the final list is converted into the EML file and how to set the attribute "provider" for the taxonID. 

```{r eval = FALSE}
# Combine all components in one list
eml <- list(dataset =
              list(title = title,
                   creator = creator,
                   pubDate = publication_date,
                   language = language,
                   abstract = abstract,
                   keywordSet = keywords,
                   licensed = licensed,
                   coverage = coverage,
                   contact = contact_person,
                   methods = methods,
                   maintenance = maintenance,
                   intellectualRights = intellectualRights),
            packageId = packageId, 
            system = "uuid")

# Write EML file
EML::write_eml(EML, file = "cricket_EML.xml")          


# Add attributes for specific nodes -------------------------------

# Read EML file as XML file
EML <- xml2::read_xml("cricket_EML.xml")

# Identify all taxonId nodes for which attribute shall be set
taxonId_node <- xml2::xml_find_all(EML, xpath = "//taxonId")

# Set "provider" attribute for taxonId nodes
xml2::xml_set_attr(taxonId_node, attr = "provider", value = "https://www.gbif.org/")

```
:::

Once you set all required attributes, you should check whether your EML file is schema-valid. This can be done with the function `eml_validate()` of the `emld` package. 