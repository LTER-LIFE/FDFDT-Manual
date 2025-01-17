---
title: "A hands-on guide to FAIR and structured ecological data"
author: "[Cherine C. Jantzen](https://orcid.org/0009-0006-0723-2682) & [Stefan J.G. Vriend](http://orcid.org/0000-0002-9006-5988)"
date: "2025-01-17"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
url: https://lter-life.github.io/FDFDT-Manual 
description: |
  This hands-on manual provides step by step guidance on how to make your ecological data more FAIR (findable, accesible, interoperable and reusable) and structured.
favicon: images/LTER-LIFE-logo.svg 
link-citations: yes
github-repo: LTER-LIFE/FDFDT-Manual
---

# Preface {.unnumbered}

This interactive manual aims to provide ecologists and other data owners of ecological data with a hands-on guide on how to make your ecological data more structured and more [FAIR](#FAIR) and tackle the problems that can occur along this process. 

### Availability of example code {.unnumbered}

This guide was developed based on practical work on [different datasets](#example-datasets). Throughout this guide, we refer to examples and code snippets from this work. The complete R code can be found on this [GitHub repository](https://github.com/LTER-LIFE/FDFDT).

### How to cite and licence {.unnumbered}

If you want to cite this guide, please refer to it as:

Jantzen, C.C., & Vriend, S.J.G. (2024). A hands-on guide to FAIR and structured ecological data. https://lter-life.github.io/FDFDT-Manual

This guide is licensed under a [Creative Commons Attribution-Noncommercial 4.0 International licence](https://creativecommons.org/licenses/by-nc/4.0/) (CC BY-NC 4.0). [<img src="images/CCBY-NC_logo.png" width="80"/>](images/CCBY-NC_logo.png)

### Release notes {.unnumbered}

For the changelog of this guide, see the [release notes](https://github.com/LTER-LIFE/FDFDT-Manual?tab=readme-ov-file#release-notes).

### How to provide feedback {.unnumbered}

If you have any suggestions, questions or comments while reading through this guide or want to provide any other feedback on how to improve this guide, we are happy to receive your feedback through [the Github repository](https://github.com/LTER-LIFE/FDFDT/issues/new) where you can add your remarks as a new issue! 


::: {.disclaimer .disclaimerimg}
[**Disclaimer**]{style="font: 22px 'Asap';"}

-   We want to emphasise here that there is no one-size-fits-all solution and every dataset will bring its own challenges that need individual solutions. We cannot tackle all of these challenges but only give recommendations based on our own work with a range of different ecological datasets.

-   The FAIR principles are not set in stone but rather intended as guidance. Practical implications should be interpreted by each community individually, while sticking as closely as possible to the principles themselves (cf. [Maturity Indicator Authoring Group](https://fairsharing.github.io/FAIR-Evaluator-FrontEnd/#!/)). We therefore also want to stress that the way we implement FAIR in this guide is **only one way** of operationalising it and is based on our own interpretations and extensions of the FAIR principles (@Wilkinson_2016).
:::

## Acknowledgements {.unnumbered}

We would like to thank the FAIR Data for Digital Twins team - Cees Hof, Kim Ferguson, and Eric Kuijt - for the regular discussions, feedback and suggestions on the evaluation tool and guide. We thank Marcel E. Visser and Wim Hugo for their input and advice on the overall project.

Thanks to Parinaz Rashidi, W. Daniel Kissling, Geerten M. Hengeveld and others involved in [LTER-LIFE](https://lter-life.nl/en), for their contributions to the guide and for their efforts in continuing the development of this work through LTER-LIFE.

Many thanks to the custodians of the datasets that are used as examples throughout this guide. The lessons learned from FAIRifying and structuring these datasets form the bedrock for the design and implementation of the workflow. We thank Judith Risse, Marcel E. Visser (bud burst data), Joost Vogels, Wilco C.E.P. Verberk (cricket data), G.F. (Ciska) Veen, Freddy ten Hooven, and Wim H. van der Putten (CLUE data), as well as all the people who contributed to the many years of data collection.

We thank the Royal Netherlands Academy of Arts and Sciences (KNAW) for their financial support through the Institutes Research Fund 2022.
