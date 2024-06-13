# Describe your data - Metadata (content) {#describe-data}

The first step before you store your data properly should always be to describe and annotate it. This type of description is called [metadata](#metadata) and basically provides information about your dataset that helps to understand it. We can differentiate into administrative metadata that, for example, contains information about the authors, the contents, coverage and the maintenance of the described data and structural metadata, which is giving information on how the data set is organised and how single data files connect to each other.

Many repositories require a minimal set of metadata for uploading data, which can either directly be entered in a fill-in form provided by the repository or added in a separate file that is uploaded together with the data. The simplest form of metadata is a README text file containing some basic information on what the data is about. There are however no regulations on what information a README should contain and in reality, the extent of it varies a lot. In general, the richer the data is described the better.

Based on best practices of writing readme files and in terms of [standardising](#standardise) the metadata in a later step, we recommend to gather the following information about your data:

About the dataset:

-   Title of the dataset

-   Short description what contents each data file contains

-   Short description of the methods used for data collection

-   Responsible parties, including who created the data and who can be contacted about the data

-   When was the data collected? Which time span is covered?

-   Where has the data been collected?

-   Licencing information: How can others use your data? To find out more about different licences, see section Licencing.

-   Changes in the data or updates should ideally also be recorded in the README

About individual data files:

-   What do columns mean?

-   Which units belong to each column?

If you include personal information, like email addresses, of other people in the metadata that is made available online later on, it should always be asked for permission beforehand.

## Licencing

If you deposit your data online it is important to communicate to potential users what permissions they have and arrange a legal agreement in the form of a licence. A commonly used set of licences are the copyright licences of [Creative Commons (CC)](https://creativecommons.org/share-your-work/cclicenses/. Scientific datasets most often are published under a CC BY licence, but Creative Commons also offers other licensing options, as stated in Table 4.1. They also offer an interactive tool ([License chooser](https://chooser-beta.creativecommons.org/)) that can help you to choose the best suited licence for your data.

**Table 4.1. Creative commons licences and their meanings.**

|                                Licence                                |                                                                                   | What can users do with your data?                                                                                                                                                        |
|:-------------------:|:-----------------:|:--------------------------------|
|         [CC BY](https://creativecommons.org/licenses/by/4.0/)         |       [<img src="images/CCBY_logo.png" width="100"/>](images/CCBY_logo.png)       | users can use, distribute and build upon the data but have to give credits to the creator                                                                                                |
|      [CC BY-NC](https://creativecommons.org/licenses/by-nc/4.0/)      |    [<img src="images/CCBY-NC_logo.png" width="100"/>](images/CCBY-NC_logo.png)    | users can use, distribute and build upon the data but have to give credits to the creator and data **cannot** be used commercially                                                       |
|      [CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)      |    [<img src="images/CCBY-SA_logo.png" width="100"/>](images/CCBY-SA_logo.png)    | users can use, distribute and build upon the data, they have to give credits to the creator and adaptations need to be shared under the same terms                                       |
|   [CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/)   | [<img src="images/CCBY-NC-SA_logo.png" width="100"/>](images/CCBY-NC-SA_logo.png) | users can use, distribute and build upon the data, they have to give credits to the creator, adaptations need to be shared under the same terms and data **cannot** be used commercially |
|      [CC BY-ND](https://creativecommons.org/licenses/by-nd/4.0/)      |    [<img src="images/CCBY-ND_logo.png" width="100"/>](images/CCBY-ND_logo.png)    | users are not allowed to adapt or modify the data, but can copy or distribute it if they give credits to the creator                                                                     |
|   [CC BY-NC-ND](https://creativecommons.org/licenses/by-nc-nd/4.0/)   | [<img src="images/CCBY-NC-ND_logo.png" width="100"/>](images/CCBY-NC-ND_logo.png) | users are not allowed to adapt or modify the data, but can copy or distribute it if they give credits to the creator and data cannot be used commercially                                |
| [CC0 ("CC Zero")](https://creativecommons.org/publicdomain/zero/1.0/) |    [<img src="images/CC-Zero_logo.png" width="100"/>](images/CC-Zero_logo.png)    | copyrights are given up and work is put into the public domain                                                                                                                           |

::: {#Note-licence .infobox .infoimage}
**Note:** Carefully consider which licence to choose. It cannot be revoked and every user of the data needs to comply with the licence's conditions of use, even if the data is no longer distributed.
:::
