::: {.examplebox .exampleimg}
**Bud burst**:

One of the tree species in the bud burst data is the Pedunculate oak (*Quercus robur*). To get detailed taxonomic information for this species, we query it from the GBIF backbone taxonomy. As the results are presented in a list, we additionally bind the rows into a data frame using the dplyr package [@dplyr_2023]. Note that we truncate the output here for readability.

    taxonInfo <- taxize::get_gbifid_(sci = "Quercus robur") |>
        dplyr::bind_rows()
  
    taxonInfo[1:7, 1:13]

```
##   usagekey             scientificname    rank   status matchtype
## 1  2878688           Quercus robur L. species ACCEPTED     EXACT
## 2  8206510 Quercus robur (Ten.) A.DC. species  SYNONYM     EXACT
## 3  7586523        Quercus robur Pall. species DOUBTFUL     EXACT
## 4  7911626   Quercus robur Asso, 1779 species DOUBTFUL     EXACT
## 5 12375765     Quercus roboris Wallr. species  SYNONYM     FUZZY
## 6  2879532  Quercus robusta C.H.Mull. species ACCEPTED     FUZZY
## 7  2880539           Quercus rubra L. species ACCEPTED     FUZZY
##     canonicalname confidence kingdom       phylum   order   family   genus
## 1   Quercus robur         97 Plantae Tracheophyta Fagales Fagaceae Quercus
## 2   Quercus robur         97 Plantae Tracheophyta Fagales Fagaceae Quercus
## 3   Quercus robur         96 Plantae Tracheophyta Fagales Fagaceae Quercus
## 4   Quercus robur         96 Plantae Tracheophyta Fagales Fagaceae Quercus
## 5 Quercus roboris         92 Plantae Tracheophyta Fagales Fagaceae Quercus
## 6 Quercus robusta         91 Plantae Tracheophyta Fagales Fagaceae Quercus
## 7   Quercus rubra         10 Plantae Tracheophyta Fagales Fagaceae Quercus
##            species
## 1    Quercus robur
## 2    Quercus robur
## 3    Quercus robur
## 4    Quercus robur
## 5    Quercus robur
## 6  Quercus robusta
## 7    Quercus rubra
```

There are four matches of our taxon in the GBIF backbone taxonomy. In this example, they differ in their scientific name and the author information given there. If we look at the column "status", is becomes clear that only one of the matches contains the accepted scientific name, while the second match is a synonym and the others are considered "doubtful". We therefore want to filter the results for only the matches that have the status "accepted" and the matchtype "exact", which means that the canonical name matches our input name letter by letter. We again use the package dplyr to filter the data, which leaves us with one match.
:::

::: {.examplebox .exampleimg}
**Bud burst**:

    taxonInfo |> 
      dplyr::filter(status == "ACCEPTED" & matchtype == "EXACT") |> 
      dplyr::select(1:13)


```
##   usagekey   scientificname    rank   status matchtype canonicalname confidence
## 1  2878688 Quercus robur L. species ACCEPTED     EXACT Quercus robur         97
##   kingdom       phylum   order   family   genus       species
## 1 Plantae Tracheophyta Fagales Fagaceae Quercus Quercus robur
```

If you have more than one taxon in your data, you can also directly query the taxonomic information for a number of species at once.

    tree_species <- c("Quercus robur", "Quercus rubra", "Larix kaempferi", 
                  "Pinus sylvestris", "Betula pendula")

    taxize::get_gbifid_(sci = tree_species) |>
      dplyr::bind_rows() |>
      dplyr::filter(status == "ACCEPTED" & matchtype == "EXACT") |> 
      dplyr::select(1:13)

```
##   usagekey                   scientificname    rank   status matchtype
## 1  2878688                 Quercus robur L. species ACCEPTED     EXACT
## 2  2880539                 Quercus rubra L. species ACCEPTED     EXACT
## 3  2686157 Larix kaempferi (Lamb.) Carrière species ACCEPTED     EXACT
## 4  5285637              Pinus sylvestris L. species ACCEPTED     EXACT
## 5  5331916              Betula pendula Roth species ACCEPTED     EXACT
##      canonicalname confidence kingdom       phylum   order     family   genus
## 1    Quercus robur         97 Plantae Tracheophyta Fagales   Fagaceae Quercus
## 2    Quercus rubra         97 Plantae Tracheophyta Fagales   Fagaceae Quercus
## 3  Larix kaempferi         97 Plantae Tracheophyta Pinales   Pinaceae   Larix
## 4 Pinus sylvestris         98 Plantae Tracheophyta Pinales   Pinaceae   Pinus
## 5   Betula pendula         99 Plantae Tracheophyta Fagales Betulaceae  Betula
##            species
## 1    Quercus robur
## 2    Quercus rubra
## 3  Larix kaempferi
## 4 Pinus sylvestris
## 5   Betula pendula
```
:::