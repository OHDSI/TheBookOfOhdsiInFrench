---
title: "Le Livre d'OHDSI"
author: "Observational Health Data Sciences and Informatics"
date: "2024-09-19"
classoption: 11pt
geometry:
- paperheight=10in
- paperwidth=7in
- margin=1in
- inner=1in
- outer=0.65in
- top=0.8in
- bottom=0.8in
mainfont: Times New Roman
bibliography:
- book.bib
- packages.bib
description: Un livre sur les sciences et l'informatique des données de santé observationnelles (OHDSI). Il décrit la communauté OHDSI, les standards ouverts et les logiciels open-source.
documentclass: book
favicon: images/favicon.ico
github-repo: OHDSI/TheBookOfOhdsi
link-citations: yes
cover-image: images/Cover/Cover.png
site: bookdown::bookdown_site
biblio-style: apalike
url: https://ohdsi.github.io/TheBookOfOhdsi/
---



# Préface {-}

<img src="images/Cover/Cover.png" width="250" height="375" alt="Cover image" align="right" style="margin: 0 1em 0 1em" /> Ce livre parle de la collaboration Observational Health Data Sciences and Informatics (OHDSI). La communauté OHDSI a écrit ce livre pour servir de référentiel central de connaissances sur tout ce qui concerne OHDSI. Le Livre est un document vivant, maintenu par la communauté à l'aide d'outils de développement open-source, et évolue continuellement. La version en ligne, disponible gratuitement sur [http://book.ohdsi.org](http://book.ohdsi.org), représente toujours la dernière version. Une copie physique du livre est disponible sur [Amazon](https://www.amazon.com/OHDSI-Observational-Health-Sciences-Informatics/dp/1088855199) au prix coûtant.


## Objectifs de ce Livre {-}

Ce livre vise à être un référentiel central de connaissances pour OHDSI, et se concentre sur la description de la communauté OHDSI, des normes de données OHDSI et des outils OHDSI. Il est destiné aussi bien aux nouveaux venus qu'aux vétérans d'OHDSI, et vise à être pratique, fournissant la théorie nécessaire et les instructions subséquentes sur la manière de faire les choses. Après avoir lu ce livre, vous comprendrez ce qu'est OHDSI et comment vous pouvez rejoindre le voyage. Vous apprendrez ce que sont le modèle de données commun et les vocabulaires standard, et comment ils peuvent être utilisés pour standardiser une base de données de soins de santé observationnelle. Vous apprendrez les trois principales utilisations de ces données : la caractérisation, l'estimation au niveau de la population et la prédiction au niveau des patients. Vous lirez sur les outils open-source d'OHDSI qui soutiennent ces trois activités et comment utiliser ces outils. Les chapitres sur la qualité des données, la validité clinique, la validité des logiciels et la validité des méthodes expliqueront comment établir la qualité des preuves générées. Enfin, vous apprendrez à utiliser les outils OHDSI pour exécuter ces études dans un réseau de recherche distribué.


## Structure du Livre {-}

Ce livre est organisé en cinq sections majeures :

I) La communauté OHDSI
II) Représentation uniforme des données
III) Analyse des données
IV) Qualité des preuves
V) Études OHDSI

Chaque section comporte plusieurs chapitres et, le cas échéant, chaque chapitre suit la séquence : Introduction, Théorie, Pratique, Résumé et Exercices.


## Contributeurs {-}

Chaque chapitre liste un ou plusieurs responsables de chapitre. Ce sont les personnes qui dirigent la rédaction du chapitre. Cependant, il y a beaucoup d'autres personnes qui ont contribué au livre, que nous aimerions reconnaître ici :


|                  |                 |                     |
|:-----------------|:----------------|:--------------------|
|Hamed Abedtash    |Mustafa Ascha    |Mark Beno            |
|Clair Blacketer   |David Blatt      |Brian Christian      |
|Gino Cloft        |Frank DeFalco    |Sara Dempster        |
|Jon Duke          |Sergio Eslava    |Clark Evans          |
|Thomas Falconer   |George Hripcsak  |Vojtech Huser        |
|Mark Khayter      |Greg Klebanov    |Kristin Kostka       |
|Bob Lanese        |Wanda Lattimore  |Chun Li              |
|David Madigan     |Sindhoosha Malay |Harry Menegay        |
|Akihiko Nishimura |Ellen Palmer     |Nirav Patil          |
|Jose Posada       |Nicole Pratt     |Dani Prieto-Alhambra |
|Christian Reich   |Jenna Reps       |Peter Rijnbeek       |
|Patrick Ryan      |Craig Sachson    |Izzy Saridakis       |
|Paola Saroufim    |Martijn Schuemie |Sarah Seager         |
|Anthony Sena      |Sunah Song       |Matt Spotnitz        |
|Marc Suchard      |Joel Swerdel     |Devin Tian           |
|Don Torok         |Kees van Bochove |Mui Van Zandt        |
|Erica Voss        |Kristin Waite    |Mike Warfe           |
|Jamie Weaver      |James Wiggins    |Andrew Williams      |
|Seng Chan You     |                 |                     |


## Versions des Logiciels {-}

Une grande partie de ce livre concerne les logiciels open-source d'OHDSI, et ces logiciels évolueront au fil du temps. Bien que les développeurs fassent de leur mieux pour offrir une expérience cohérente et stable aux utilisateurs, il est inévitable qu'au fil du temps les améliorations apportées aux logiciels rendent certaines des instructions de ce livre obsolètes. La communauté mettra à jour la version en ligne du livre pour refléter ces changements, et de nouvelles éditions de la version imprimée seront publiées au fil du temps. Pour référence, voici les numéros de version des logiciels utilisés dans cette version du livre :

- ACHILLES : version 1.6.6
- ATLAS : version 2.7.3
- EUNOMIA : version 1.0.0
- Packages de la Methods Library : voir le Tableau \@ref(tab:packageVersions)


Table: (\#tab:packageVersions)Versions des packages dans la Methods Library utilisés dans ce livre.

|Package                  |Version |
|:------------------------|:-------|
|CaseControl              |1.6.0   |
|CaseCrossover            |1.1.0   |
|CohortMethod             |3.1.0   |
|Cyclops                  |2.0.2   |
|DatabaseConnector        |2.4.1   |
|EmpiricalCalibration     |2.0.0   |
|EvidenceSynthesis        |0.0.4   |
|FeatureExtraction        |2.2.4   |
|MethodEvaluation         |1.1.0   |
|ParallelLogger           |1.1.0   |
|PatientLevelPrediction   |3.0.6   |
|SelfControlledCaseSeries |1.4.0   |
|SelfControlledCohort     |1.5.0   |
|SqlRender                |1.6.2   |


## Licence {-}

Ce livre est sous licence [Creative Commons Zero v1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/).

![](images/Preface/cc0.png)


## Développement du Livre {-}

Le livre est écrit en [RMarkdown](https://rmarkdown.rstudio.com) en utilisant le package [bookdown](https://bookdown.org). La version en ligne est automatiquement reconstruite depuis le dépôt source sur [https://github.com/OHDSI/TheBookOfOhdsi](https://github.com/OHDSI/TheBookOfOhdsi) via le système d'intégration continue ["travis"](http://travis-ci.org/). À intervalles réguliers, un instantané de l'état du livre est pris et marqué comme une "édition". Ces éditions seront disponibles sous forme de copies physiques sur Amazon.
