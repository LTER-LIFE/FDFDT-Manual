::: {.examplebox .exampleimg}
**Bud burst**:

One of the tree species in the bud burst data is the Pedunculate oak (*Quercus robur*). To get detailed taxonomic information for this species, we query it from the GBIF backbone taxonomy. As the results are presented in a list, we additionally bind the rows into a data frame using the dplyr package [@dplyr_2023]. Note that we truncate the output here for readability.

```{r message = FALSE, echo = TRUE}

taxonInfo <- taxize::get_gbifid_(sci = "Quercus robur") |>
  dplyr::bind_rows()
  
taxonInfo[1:8, 1:13]
```

There are four matches of our taxon in the GBIF backbone taxonomy. In this example, they differ in their scientific name and the author information given there. If we look at the column "status", is becomes clear that only one of the matches contains the accepted scientific name, while the second match is a synonym and the others are considered "doubtful". We therefore want to filter the results for only the matches that have the status "accepted" and the matchtype "exact", which means that the canonical name matches our input name letter by letter. We again use the package dplyr to filter the data, which leaves us with one match.

```{r echo = TRUE}
taxonInfo |> 
  dplyr::filter(status == "ACCEPTED" & matchtype == "EXACT") |> 
  dplyr::select(1:13)
```

If you have more than one taxon in your data, you can also directly query the taxonomic information for a number of species at once.

```{r message = FALSE, echo = TRUE}

tree_species <- c("Quercus robur", "Quercus rubra", "Larix kaempferi", "Pinus sylvestris", "Betula pendula")

taxize::get_gbifid_(sci = tree_species) |>
  dplyr::bind_rows() |>
  dplyr::filter(status == "ACCEPTED" & matchtype == "EXACT") |> 
  dplyr::select(1:13)
```
:::