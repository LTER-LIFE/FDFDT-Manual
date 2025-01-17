# (PART\*) a. Data preparation {.unnumbered}

# Primary data 

## Describe your data (Metadata) {#describe-data}

Independent of whether you aim to publish your data, it is always important to properly describe and annotate the data. This type of description is called [metadata](#metadata) and provides information about your dataset that helps to find, understand, and reuse it. We can distinguish between administrative, descriptive and structural metadata:

- Administrative metadata includes information about the authors, usage (i.e., licence), and maintenance of the data

- Descriptive metadata includes information about the contents, [provenance](#provenance) (i.e., the source and/or history), and coverage (e.g., time, geographic location) of the data

- Structural metadata provides details about how the dataset is organised and how individual data files are related to each other

Many repositories require a minimal set of metadata when uploading data, which can either directly be entered in a fill-in form provided by the repository or added in a separate file that is uploaded together with the data. The simplest form of metadata is a README text file containing some basic information on what the data is about. There are, however, no regulations on what information a README should contain and in practice, the extent and detail of it varies a lot. In general, the richer the data is described the better. 

::: {.disclaimer .disclaimerimg}
[**Be aware**]{style="font: 22px 'Asap';"}

There is another section on [standardising your metadata](#standardise-and-structure-your-metadata) that builds on the current section as it assumes that metadata has already been gathered. If you want to both gather and standardise metadata, you can do both steps at once and directly write the metadata in the standard format instead of creating a README first. 
:::

Based on best practices of writing README files and in terms of [standardising](#standardise) the metadata in a later step, we recommend to gather the following information about your data:

Recommended best practises for minimum metadata: 
 
-   Title of the dataset

-   Short description of the contents of each data file

-   Short description of the methods used for data collection

-   Responsible parties, including those who created the data and those who can be contacted to answer questions about the data

-   When was the data collected? Which time span is covered?

-   Where has the data been collected?

-   Licencing information: How can others use your data? To find out more about different licences, see section [Licencing](#Licencing)

-   Changes in the data or updates should ideally also be recorded in the README

- Do different tables within a file and/or different files in the dataset link to each other? If yes, a short description of how they link (e.g., by which identifier)

- Describe the context of the dataset by cross-referencing other relevant and related datasets or metadata. These links should be meaningful by qualifying how different resources link to each other (e.g., *dataset A is a derivative of dataset B* or *B contains complementary information to A*).

::: {.infobox .infoimg}
A template that covers these minimum metadata fields can be found here: [README template](https://github.com/LTER-LIFE/FDFDT/blob/main/readme-templates/README-template.md). Or follow this [example](https://github.com/LTER-LIFE/FDFDT/blob/main/readme-templates/README-example-budburst.md) of the bud burst data.
:::

**For tabular data**:

In addition to providing metadata at the dataset level, as listed above, it is recommended for tabular data to provide a [data dictionary](#data-dictionary) (sometimes called a codebook). A data dictionary provides the meaning of the columns and values in your data files. It serves as a reference guide for people who want to reuse your data, as it improves the interpretation and understanding of the data. 

For data stored in a relational database, the data dictionary is an active document, meaning that it is updated whenever the tables and columns in the database change. In most other cases, data dictionaries are static documents that need to be created manually. When you do so, describe:

- The meaning or definition of columns

- The data type (e.g., integer, string, datetime)

- The unit in which the measurement is given

- The accepted values for a column, including the meaning of codes (e.g., 0 = absent, 1 = present) (*optional*)


If you include personal information, like email addresses, of other people in the metadata that is made available online later on, it should always be asked for permission beforehand.

### Licencing

If you deposit your data online, it is important to communicate to potential users what permissions they have and arrange a legal agreement in the form of a licence. A commonly used set of licences are the copyright licences of [Creative Commons (CC)](https://creativecommons.org/share-your-work/cclicenses/). Scientific datasets most often are published under a CC BY licence, but Creative Commons also offers other licensing options, as stated in Table 4.1. They also offer an interactive tool ([License chooser](https://chooser-beta.creativecommons.org/)) that can help you to choose the best suited licence for your data.

[**Table 4.1. Creative commons licences and their meanings.**]{style="font-size: 11px;"}

|                                Licence                                |                                                                                   | What can users do with your data?                                                                                                                                                        |
|:-------------------:|:-----------------:|:--------------------------------|
|         [CC BY](https://creativecommons.org/licenses/by/4.0/)         |       [<img src="images/CCBY_logo.png" width="100"/>](images/CCBY_logo.png)       | users can use, distribute and build upon the data but have to give credits to the creator                                                                                                |
|      [CC BY-NC](https://creativecommons.org/licenses/by-nc/4.0/)      |    [<img src="images/CCBY-NC_logo.png" width="100"/>](images/CCBY-NC_logo.png)    | users can use, distribute and build upon the data but have to give credits to the creator and data **cannot** be used commercially                                                       |
|      [CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)      |    [<img src="images/CCBY-SA_logo.png" width="100"/>](images/CCBY-SA_logo.png)    | users can use, distribute and build upon the data, they have to give credits to the creator and adaptations need to be shared under the same terms                                       |
|   [CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/)   | [<img src="images/CCBY-NC-SA_logo.png" width="100"/>](images/CCBY-NC-SA_logo.png) | users can use, distribute and build upon the data, they have to give credits to the creator, adaptations need to be shared under the same terms and data **cannot** be used commercially |
|      [CC BY-ND](https://creativecommons.org/licenses/by-nd/4.0/)      |    [<img src="images/CCBY-ND_logo.png" width="100"/>](images/CCBY-ND_logo.png)    | users are not allowed to adapt or modify the data, but can copy or distribute it if they give credits to the creator                                                                     |
|   [CC BY-NC-ND](https://creativecommons.org/licenses/by-nc-nd/4.0/)   | [<img src="images/CCBY-NC-ND_logo.png" width="100"/>](images/CCBY-NC-ND_logo.png) | users are not allowed to adapt or modify the data, but can copy or distribute it if they give credits to the creator and data cannot be used commercially                                |
| [CC0 ("CC Zero")](https://creativecommons.org/publicdomain/zero/1.0/) |    [<img src="images/CC-Zero_logo.png" width="100"/>](images/CC-Zero_logo.png)    | copyrights are given up and work is put into the public domain                                                                                                                           |

:::{.infobox .infoimg} 

Carefully consider which licence to choose. It cannot be revoked and every user of the data needs to comply with the licence's conditions of use, even if the data is no longer distributed.

:::
