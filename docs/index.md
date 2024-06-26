---
title: "A hands-on guide to FAIR and structured ecological data"
author: "[Cherine C. Jantzen](https://orcid.org/0009-0006-0723-2682) & [Stefan J.G. Vriend](http://orcid.org/0000-0002-9006-5988)"
date: "2024-06-26"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
# url: your book url like https://bookdown.org/yihui/bookdown
# cover-image: images/Fig2_MSSS-FAIR.png
description: |
  This hands-on manual provides step by step guidance on how to make your ecological data more FAIR (findable, accesible, interoperable and reusable).
link-citations: yes
github-repo: CherineJ/FDFDT-Manual
---

# (PART\*) - I. Background - {.unnumbered}

# Preface {.unnumbered}

This interactive manual aims to provide ecologists and other data owners of ecological data with a hands-on guide on how to make your ecological data more structured and more [FAIR](#FAIR) and tackle the problems that can occur along this process. 

### Availability of example code {.unnumbered}

This guide was developed based on practical work on [different data sets](#example-datasets). Throughout this guide, we refer to examples and code snippets from this work. The complete R code can be found on this [GitHub repository](https://github.com/LTER-LIFE/FDFDT).

## How to cite and licence {.unnumbered}

This guide is licenced under a [Creative Commons Attribution-Noncommercial 4.0 International license](https://creativecommons.org/licenses/by-nc/4.0/) (CC BY-NC 4.0). [<img src="images/CCBY-NC_logo.png" width="80"/>](images/CCBY-NC_logo.png)


::: {.disclaimer .disclaimerimg}
[**Disclaimer**]{style="font: 22px 'Asap';"}

-   We want to emphasise here that there is no one-size-fits-all solution and every dataset will bring its own challenges that need individual solutions. We cannot tackle all of these challenges but only give recommendations based on our own work with a range of different ecological datasets.

-   The FAIR principles are not set in stone but rather intended as guidance. Practical implications should be interpreted by each community individually, while sticking as closely as possible to the principles themselves (cf. [Maturity Indicator Authoring Group](https://fairsharing.github.io/FAIR-Evaluator-FrontEnd/#!/)). We therefore also want to stress that the way we implement FAIR in this guide is only one way of operationalizing it and is based on our own interpretations and extensions of the FAIR principles @Wilkinson_2016.
:::

## Acknowledgements {.unnumbered}

Thanks!
