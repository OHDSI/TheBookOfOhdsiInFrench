# OHDSI Network Research {#NetworkResearch}

*Responsables du chapitre : Kristin Kostka, Greg Klebanov & Sara Dempster*

La mission d'OHDSI est de générer des preuves de haute qualité grâce à la recherche observationnelle. Un moyen principal pour y parvenir est de mener des études de recherche collaborative. Dans les chapitres précédents, nous avons discuté de la manière dont la communauté OHDSI a établi des normes et des outils pour faciliter une recherche de haute qualité et reproductible, notamment les Vocabularies standardisés OMOP, le Modèle de Données Commun (CDM), les packages de méthodes analytiques, ATLAS et les étapes de l'étude (Chapitre \@ref(StudySteps)) pour mener une étude rétrospective sur base de données. Les études du réseau OHDSI représentent l'aboutissement d'une manière transparente, cohérente et reproductible de conduire la recherche à travers un grand nombre de données dispersées géographiquement. Dans ce chapitre, nous discuterons de ce qui constitue une étude du réseau OHDSI, comment mener une étude de réseau et nous aborderons les technologies habilitantes comme le Réseau de Recherche ARACHNE.

## OHDSI en tant que Réseau de Recherche

\index{réseau de recherche}

Le réseau de recherche OHDSI est une collaboration internationale de chercheurs visant à faire progresser la recherche sur les données observationnelles en santé. Aujourd'hui, le réseau est composé de plus de 100 bases de données standardisées selon le modèle de données commun OMOP, représentant collectivement plus d'un milliard de dossiers de patients. OHDSI est un réseau ouvert, invitant les institutions de santé du monde entier disposant de données au niveau des patients à rejoindre le réseau en convertissant leurs données au CDM OMOP et en participant aux études de recherche du réseau. Une fois les conversions de données terminées, les collaborateurs sont invités à signaler les informations du site dans le recensement du Réseau de Données tenu par le [Responsable du Programme OHDSI](mailto:contact@ohdsi.org). Chaque site du réseau OHDSI participe volontairement. Il n'y a pas d'obligations strictes. Chaque site choisit de participer à chaque étude du réseau. Dans chaque étude, les données restent sur le site derrière un pare-feu. **Aucun regroupement de données au niveau des patients n'a lieu entre les sites du réseau.** **Seuls les résultats agrégés sont partagés.**

\BeginKnitrBlock{rmdimportant}
**Avantages pour un Propriétaire de Données de Rejoindre le Réseau OHDSI**

- **Accès à des outils gratuits :** OHDSI publie des outils gratuits et open source pour la caractérisation des données et les analyses standardisées (par ex. parcourir les concepts cliniques, définir et caractériser des cohortes, mener des études d'Estimation au Niveau de la Population et de Prédiction au Niveau des Patients).
- **Participer à une communauté de recherche de premier plan :** Rédiger et publier des recherches en réseau, collaborer avec des leaders de divers disciplines et groupes de parties prenantes.
- **Opportunité de comparer les soins :** Les études de réseau peuvent permettre des benchmarks de caractérisation clinique et d'amélioration de la qualité entre partenaires de données.

\EndKnitrBlock{rmdimportant}

## Études en réseau OHDSI

\index{étude en réseau}

Dans le chapitre précédent (Chapitre \@ref(StudySteps)), nous avons discuté des considérations générales de conception pour mener une étude en utilisant le CDM. En général, une étude peut être menée sur un seul CDM ou sur plusieurs CDM. Elle peut être réalisée au sein des données CDM d’une seule institution ou à travers de nombreuses institutions. Dans cette section, nous discuterons des raisons pour lesquelles vous pourriez vouloir étendre vos analyses à plusieurs institutions pour en faire une étude en réseau.

### Motivations pour mener une étude en réseau OHDSI

Un cas d'utilisation typique pour les études observationnelles est d'examiner l'efficacité comparative ou la sécurité d'un traitement dans un cadre "réel". Plus spécifiquement, vous pouvez chercher à reproduire un essai clinique dans un cadre post-commercialisation pour répondre aux préoccupations concernant la généralisabilité des résultats d'un essai clinique. Dans d'autres scénarios, vous pouvez vouloir mener une étude comparant deux traitements qui n'ont jamais été comparés dans un essai clinique parce qu'un traitement est utilisé hors AMM. Ou bien vous pouvez avoir besoin d'étudier un effet indésirable rare en post-commercialisation qu'un essai clinique n'avait pas la puissance pour observer. Pour répondre à ces questions de recherche, il peut ne pas suffire de mener une seule étude observationnelle dans une ou même deux bases de données à votre site car vous obtenez une réponse qui est significative dans le contexte d'un groupe particulier de patients seulement.

Les résultats d'une étude observationnelle peuvent être influencés par de nombreux facteurs qui varient en fonction de l'emplacement de la source de données tels que l'adhérence, la diversité génétique ou les facteurs environnementaux, l'état de santé global: facteurs qui n'auraient peut-être pas été possibles à varier dans le contexte d'un essai clinique, même si celui-ci existe pour votre question d'étude. Une motivation typique pour mener une étude observationnelle dans un réseau est donc d'augmenter la diversité des sources de données et potentiellement des populations d'étude pour comprendre dans quelle mesure les résultats sont généralisables. En d'autres termes, les résultats de l'étude peuvent-ils être reproduits dans plusieurs sites ou diffèrent-ils, et si oui, des idées peuvent-elles être tirées pour expliquer pourquoi?

Les études en réseau offrent donc l'opportunité d'enquêter sur les effets des facteurs "réels" sur les résultats des études observationnelles en examinant un large éventail de contextes et de sources de données.

### Définition d'une étude en réseau OHDSI

\BeginKnitrBlock{rmdimportant}
**Quand une étude est-elle considérée comme une étude en *réseau*?** Une étude OHDSI devient une étude en réseau OHDSI lorsqu'elle est menée sur plusieurs CDM dans différentes institutions.

\EndKnitrBlock{rmdimportant}
L'approche OHDSI pour la recherche en réseau utilise le CDM OMOP et des outils et paquets d'étude standardisés qui spécifient entièrement tous les paramètres pour mener une étude. Les analyses standardisées OHDSI sont conçues spécifiquement pour réduire les artefacts et améliorer l'efficacité et l'évolutivité des études en réseau.

Les études en réseau sont une partie importante de la communauté de recherche OHDSI. Cependant, il n'y a aucune obligation pour une étude OHDSI d'être emballée et partagée à travers l'ensemble du réseau OHDSI. Vous pouvez toujours mener des recherches en utilisant le CDM OMOP et la bibliothèque de méthodes OHDSI au sein d'une seule institution ou limiter une étude de recherche à seulement certaines institutions choisies. Ces contributions de recherche sont tout aussi importantes pour la communauté. Il est à la discrétion de chaque chercheur si une étude est conçue pour être menée sur une seule base de données, mener une étude à travers un ensemble limité de partenaires ou ouvrir l'étude à la pleine participation du réseau OHDSI. Ce chapitre vise à parler des études en réseau ouvertes à tous que la communauté OHDSI mène.

**Éléments d'une étude en réseau OHDSI *ouverte* :**
Lorsque vous menez une étude en réseau OHDSI ouverte, vous vous engagez à une recherche totalement transparente. Voici quelques composants qui rendent la recherche OHDSI unique. Cela inclut :

- Toute la documentation, le code de l'étude et les résultats ultérieurs sont rendus disponibles publiquement sur le GitHub de OHDSI.
- Les chercheurs doivent créer et publier un protocole d'étude public détaillant la portée et l'intention de l'analyse à réaliser.
- Les chercheurs doivent créer un paquet d'étude (typiquement avec R ou SQL) avec du code conforme au CDM.
- Les chercheurs sont encouragés à assister aux appels communautaires OHDSI pour promouvoir et recruter des collaborateurs pour leur étude en réseau OHDSI.
- À la fin de l'analyse, les résultats agrégés de l'étude sont rendus disponibles sur le GitHub de OHDSI.
- Dans la mesure du possible, les chercheurs sont encouragés à publier des applications R Shiny d'étude sur [data.ohdsi.org](http://data.ohdsi.org).

Dans la prochaine section, nous parlerons de la manière de créer votre propre étude en réseau ainsi que des considérations uniques de conception et logistiques pour la mise en œuvre d'une étude en réseau.

### Considérations de conception pour une étude en réseau OHDSI

\index{considérations de conception pour la recherche en réseau}

Concevoir une étude à réaliser sur le réseau OHDSI nécessite un changement de paradigme dans la façon de concevoir et d'assembler votre code d'étude. Ordinairement, vous pouvez concevoir une étude avec un ensemble de données cible à l'esprit. Ce faisant, vous pouvez écrire du code en fonction de ce que vous savez être vrai dans les données que vous utilisez pour votre analyse. Par exemple, si vous assembliez une cohorte d'angioedème, vous pourriez choisir uniquement des codes concepts pour l'angioedème qui sont représentés dans votre CDM. Cela pourrait être problématique si vos données se trouvent dans un cadre de soins spécifique (par exemple, soins primaires, soins ambulatoires) ou spécifique à une région (par exemple, centrée sur les États-Unis). Vos sélections de codes pourraient biaiser votre définition de cohorte.

Dans une étude en réseau OHDSI, vous ne concevez et n'assemblez plus un paquet d'étude uniquement pour vos données. Vous construisez un paquet d'étude à exécuter sur plusieurs sites à travers le monde. Vous ne verrez jamais les données sous-jacentes des sites participants en dehors de votre propre institution. Les études en réseau OHDSI ne partagent que des fichiers de résultats. Votre paquet d'étude peut seulement collecter les données disponibles dans les domaines du CDM. Vous aurez besoin d'une approche exhaustive pour la création de l'ensemble des concepts afin de représenter la diversité des cadres de soins dans lesquels les données de santé observationnelles sont capturées. Les paquets d'étude OHDSI utilisent souvent la même définition de cohorte dans tous les sites. Cela signifie que vous devez penser de manière holistique pour éviter de biaiser une définition de cohorte afin de ne représenter qu'un sous-ensemble de données éligibles (par exemple, données centrées sur les réclamations ou données spécifiques des DSE) dans le réseau. Vous êtes encouragés à écrire une définition de cohorte exhaustive qui peut être portée à travers plusieurs CDM. Les paquets d'étude OHDSI utilisent le même ensemble de code paramétré dans tous les sites - avec seulement des personnalisations mineures pour se connecter à la couche de base de données et stocker les résultats locaux. Plus tard, nous discuterons des implications pour l'interprétation des résultats cliniques provenant de diverses données.

En plus de la variation du codage clinique, vous devrez concevoir en anticipant les variations dans l'infrastructure technique locale. Votre code d'étude ne sera plus exécuté dans un seul environnement technique. Chaque site du réseau OHDSI fait son propre choix indépendant de la couche de base de données. Cela signifie que vous ne pouvez pas coder en dur un paquet d'étude dans un dialecte de base de données spécifique. Le code d'étude doit être paramétré à un type de SQL qui peut être facilement modifié pour les opérateurs dans ce dialecte. Heureusement, la communauté OHDSI a des solutions telles que ATLAS, [DatabaseConnector](https://ohdsi.github.io/DatabaseConnector/) et [SqlRender](https://ohdsi.github.io/SqlRender/) pour vous aider à généraliser votre paquet d'étude pour la conformité CDM à travers différents dialectes de base de données. Les chercheurs OHDSI sont encouragés à solliciter l'aide d'autres sites d'étude en réseau pour tester et valider que le paquet d'étude peut être exécuté dans différents environnements. Lorsque des erreurs de codage surviennent, les chercheurs OHDSI peuvent utiliser les [Forums OHDSI](http://forums.ohdsi.org) pour discuter et déboguer les paquets.

### Considérations logistiques pour une étude en réseau OHDSI

\index{logistique de la recherche en réseau}

OHDSI est une communauté de science ouverte, et le centre coordonnateur central d’OHDSI fournit une infrastructure communautaire pour permettre à ses collaborateurs de mener et de participer à la recherche communautaire. Chaque étude en réseau OHDSI nécessite un chercheur principal, et cela peut être n'importe quel collaborateur de la communauté OHDSI. Les études en réseau OHDSI nécessitent une coordination entre le chercheur principal, les chercheurs collaborateurs et les partenaires de données du réseau participant. Chaque site doit effectuer sa propre diligence raisonnable pour assurer l’approbation et l’autorisation du protocole d’étude pour être exécuté sur le CDM local, si requis. Les analystes de données peuvent avoir besoin de faire appel à l'équipe informatique locale pour activer les autorisations appropriées pour exécuter l'étude. La taille et la portée de l'équipe d'étude à chaque site seront fonction de la taille et de la complexité de l'étude en réseau proposée ainsi que de la maturité de l'adoption par le site du CDM OMOP et de la pile d'outils OHDSI. Le niveau d'expérience qu'un site a avec la réalisation d'une étude en réseau OHDSI impactera également le personnel requis.

Pour chaque étude, les activités de démarrage sur site peuvent inclure :

- Enregistrer l'étude auprès du comité d'examen institutionnel (ou équivalent), si requis
- Recevoir l'approbation du comité d'examen institutionnel pour exécuter l'étude, si requis
- Recevoir les autorisations de niveau base de données pour lire/écrire un schéma au CDM approuvé
- Assurer la configuration d'un environnement RStudio fonctionnel pour exécuter le paquet d'étude
- Examiner le code de l'étude pour toute anomalie technique
- Travailler avec l'équipe informatique locale pour permettre et installer les packages R dépendants nécessaires pour exécuter le package dans les contraintes techniques

\BeginKnitrBlock{rmdimportant}
**Qualité des données et études en réseau :** Comme discuté dans le chapitre \@ref(ExtractTransformLoad), le contrôle de qualité est une pièce fondamentale et itérative du processus ETL. Cela doit être fait régulièrement en dehors du processus d'étude en réseau. Pour une étude en réseau, un responsable d'étude peut demander à examiner les rapports de qualité des données des sites participants ou concevoir des requêtes SQL personnalisées pour comprendre les variations potentielles dans les sources de données contributrices. Pour plus de détails sur les efforts de qualité des données en cours au sein d’OHDSI, veuillez consulter le chapitre \@ref(DataQuality).

\EndKnitrBlock{rmdimportant}

Chaque site aura un analyste de données local qui exécute le paquet d'étude. Cet individu doit examiner les résultats du paquet d'étude pour s'assurer qu'aucune information sensible n'est transmise, bien que toutes les données dans le CDM aient déjà été anonymisées. Lorsque vous utilisez des méthodes OHDSI préconstruites telles que l'estimation d'effet à niveau de population (PLE) et la prédiction à niveau de patient (PLP), il existe des paramètres configurables pour le nombre de cellules minimal pour une analyse donnée. L'analyste de données est tenu de revoir ces seuils et de s'assurer qu'ils suivent les politiques locales de gouvernance.

Lors du partage des résultats d'étude, l'analyste de données doit respecter toutes les politiques locales de gouvernance, y compris la méthode de transmission des résultats et le respect des processus d'approbation pour la publication des résultats à l'extérieur. **Les études en réseau OHDSI ne partagent pas de données de niveau patient.** En d'autres termes, les données de niveau patient provenant de différents sites ne sont jamais regroupées dans un environnement central. Les paquets d'étude créent des fichiers de résultats conçus pour être des résultats agrégés (par exemple, statistiques sommaires, estimations ponctuelles, graphiques de diagnostic, etc.) et ne partagent pas d'informations de niveau patient. De nombreuses organisations n'exigent pas que des accords de partage de données soient conclus entre les membres de l'équipe d'étude participant. Cependant, en fonction des institutions impliquées et des sources de données, il peut être nécessaire d'avoir des accords de partage de données plus formels en place et signés par des membres spécifiques de l'équipe d'étude. Si vous êtes un propriétaire de données intéressé par la participation à des études en réseau, vous êtes encouragés à consulter votre équipe de gouvernance locale pour comprendre quelles politiques sont en place et doivent être respectées pour rejoindre les études communautaires OHDSI.

## Exécution d'une étude en réseau OHDSI

\index{running network research}

L'exécution d'une étude en réseau OHDSI comporte trois grandes étapes distinctes :

- Conception et faisabilité de l'étude
- Exécution de l'étude
- Diffusion et publication des résultats

### Conception et faisabilité de l'étude

L'étape de faisabilité de l'étude *(ou l'étape de pré-étude)* définit une question d'étude et décrit le processus pour répondre à cette question via le protocole de l'étude. Cette étape vise à évaluer la faisabilité d'exécuter le protocole de l'étude sur les sites participants.

Le résultat de l'étape de faisabilité est la génération d'un protocole finalisé et d'un paquet d'étude publié, prêt pour l'exécution en réseau. Le protocole formel détaillera l'équipe d'étude, y compris le responsable désigné de l'étude (souvent l'auteur correspondant pour les besoins de publication), et des informations sur le calendrier de l'étude. Le protocole est un élément crucial pour que les sites du réseau supplémentaires puissent examiner, approuver et exécuter l'ensemble du paquet d'étude sur leurs données CDM. Un protocole doit inclure des informations sur la population de l'étude, les méthodes utilisées, la manière dont les résultats seront stockés et analysés ainsi que la manière dont les résultats de l'étude seront diffusés après leur achèvement (par ex. une publication, une présentation lors d'une conférence scientifique, etc.).

L'étape de faisabilité n'est pas un processus bien défini. C'est une série d'activités fortement dépendantes du type d'étude proposée. Au minimum, le responsable de l'étude passera du temps à identifier les sites du réseau pertinents qui contiennent la (les) population(s) de patients ciblés avec les expositions médicamenteuses requises, les informations de procédure, les informations sur les conditions ou les données démographiques. Lorsque cela est possible, le responsable de l'étude doit provisoirement utiliser son propre CDM pour concevoir les cohortes cibles. Cependant, il n'est pas obligatoire qu'un responsable de l'étude ait accès à un OMOP CDM en direct avec des données réelles de patients pour mener une étude en réseau. Le responsable de l'étude peut concevoir sa définition de cohorte cible en utilisant des données synthétiques (par ex. CMS Synthetic Public Use Files, SyntheticMass de Mitre ou Synthea) et demander à des collaborateurs sur les sites du réseau OHDSI d'aider à valider la faisabilité de cette cohorte. Les activités de faisabilité peuvent inclure la demande aux collaborateurs de créer et de caractériser des cohortes en utilisant des fichiers JSON de définitions de cohortes provenant d'ATLAS ou de tester des paquets d'étude R et d'exécuter des diagnostics initiaux comme discuté au Chapitre \@ref(StudySteps). Dans le même temps, le responsable de l'étude peut avoir à initier tout processus spécifique à l'organisation pour approuver une étude OHDSI dans l'institution organisatrice, si nécessaire - comme une approbation interne de l'Institutional Review Board (IRB). Il est de la responsabilité du responsable de l'étude de mener à bien ces activités spécifiques à l'organisation pendant la phase de faisabilité.

### Exécution de l'étude

Après avoir terminé les exercices de faisabilité, l'étude passe à la phase d'exécution. Cette période représente le moment où les sites du réseau OHDSI peuvent choisir de participer à l'analyse. C'est à cette phase que les considérations de conception et de logistique que nous avons discutées deviennent les plus importantes.

Une étude passera à l'exécution lorsque le responsable de l'étude contactera formellement la communauté OHDSI pour annoncer une nouvelle étude en réseau OHDSI et commencera officiellement à recruter des sites participants. Le responsable de l'étude publiera le protocole d'étude sur le GitHub de l'OHDSI. Le responsable de l'étude annoncera l'étude lors de l'appel communautaire hebdomadaire de l'OHDSI et sur le [Forum OHDSI](http://forums.ohdsi.org), invitant les centres et les collaborateurs participants.  À mesure que les sites choisissent de participer, un responsable d'étude communiquera directement avec chaque site et fournira des informations sur le dépôt GitHub où le protocole et le code de l'étude sont publiés, ainsi que des instructions sur la façon d'exécuter le paquet d'étude. Idéalement, une étude en réseau sera effectuée en parallèle par tous les sites, de sorte que les résultats finaux soient partagés simultanément, garantissant qu'aucun membre de l'équipe de site ne soit biaisé par la connaissance des résultats d'une autre équipe.

Sur chaque site, l'équipe d'étude s'assurera que l'étude suit les procédures institutionnelles pour obtenir l'approbation de participer à l'étude, exécuter le paquet et partager les résultats à l'extérieur. Cela inclura probablement l'obtention d'une exemption ou d'une approbation de l'IRB (Institutional Review Board) ou équivalent pour le protocole spécifié. Lorsque l'étude est approuvée pour être menée, les data scientists/statisticiens du site suivront les instructions du responsable de l'étude pour accéder au paquet d'étude OHDSI et générer les résultats dans le format standardisé suivant les lignes directrices OHDSI. Chaque site participant suivra les processus institutionnels internes concernant les règles de partage des données. Les sites ne doivent partager les résultats que si l'approbation ou l'exemption a été obtenue de l'IRB ou d'autres processus d'approbation institutionnels.

Le responsable de l'étude sera responsable de communiquer comment il souhaite recevoir les résultats (par ex. via SFTP ou un bucket Amazon S3 sécurisé) et le délai pour retourner les résultats. Les sites peuvent spécifier si la méthode de transmission n'est pas conforme au protocole interne et un contournement peut être développé en conséquence.

Pendant la phase d'exécution, l'équipe d'étude collective (comprenant le responsable de l'étude et les équipes des sites participants) peut itérer sur les résultats, si des ajustements raisonnables sont nécessaires. Si la portée et l'étendue du protocole évoluent au-delà de ce qui est approuvé, il est de la responsabilité du site participant de communiquer cela à leur organisation en travaillant avec le responsable de l'étude pour mettre à jour le protocole, puis resoumettre le protocole pour examen et ré-approbation par l'IRB local.

Il est finalement de la responsabilité du responsable de l'étude et de tout data scientist/statisticien de support d'effectuer l'agrégation des résultats entre les centres et de réaliser une méta-analyse, le cas échéant. La communauté OHDSI a validé des méthodologies pour agréger les fichiers de résultats partagés par plusieurs sites du réseau en une réponse unique. Le paquet [EvidenceSynthesis](https://github.com/OHDSI/EvidenceSynthesis) est un paquet R disponible gratuitement contenant des routines pour combiner les preuves et les diagnostics de multiples sources, telles que les multiples sites de données dans une étude distribuée. Cela inclut des fonctions pour effectuer des méta-analyses et des graphiques en forêt.

Le responsable de l'étude devra surveiller la participation des sites et aider à éliminer les obstacles à l'exécution du paquet en vérifiant régulièrement avec les sites participants. L'exécution de l'étude n'est pas unique pour tous les sites. Il peut y avoir des défis liés à la couche de base de données (par ex. droits d'accès / autorisations de schéma) ou à l'outil analytique dans leur environnement (par ex. impossibilité d'installer des paquets requis, impossibilité d'accéder aux bases de données via R, etc.). Le site participant sera au volant et communiquera quels obstacles existent pour exécuter l'étude. Il est finalement à la discrétion du site participant d'enrôler les ressources appropriées pour aider à résoudre les problèmes rencontrés dans leur CDM local.

Bien que les études OHDSI puissent être exécutées rapidement, il est conseillé de permettre un délai raisonnable pour que tous les sites participants exécutent l'étude et reçoivent les approbations appropriées pour publier les résultats. Les nouveaux sites du réseau OHDSI peuvent trouver que la première étude en réseau à laquelle ils participent est plus longue que la normale car ils résolvent des problèmes de configuration de l'environnement tels que les autorisations de base de données ou les mises à jour de la bibliothèque analytique. Le support est disponible de la part de la Communauté OHDSI. Les problèmes peuvent être publiés sur le [Forum OHDSI](http://forums.ohdsi.org) lorsqu'ils sont rencontrés.

Un responsable de l'étude doit définir des jalons de l'étude dans le protocole et communiquer la date de clôture prévue à l'avance pour aider à gérer le calendrier général de l'étude. Si le calendrier n'est pas respecté, il est de la responsabilité du chef d'étude d'informer les sites participants des mises à jour du calendrier de l'étude et de gérer le progrès global de l'exécution de l'étude.

### Diffusion et publication des résultats

Lors de la phase de diffusion et de publication des résultats, le responsable de l'étude collaborera avec les autres participants sur diverses tâches administratives, telles que le développement de manuscrits et l'optimisation des visualisations de données. Une fois l'étude exécutée et les résultats stockés de manière centralisée pour que le responsable de l'étude puisse les analyser plus en détail, le responsable de l'étude est responsable de la création et de la diffusion des résultats complets de l'étude (par ex. une application Shiny) pour examen par les centres participants. Si le responsable de l'étude utilise un squelette d'étude OHDSI, soit généré par Atlas soit modifié manuellement à partir du code GitHub, l'application Shiny sera créée automatiquement. Dans le cas où un responsable de l'étude crée du code personnalisé, il peut utiliser le Forum OHDSI pour demander de l'aide afin de créer sa propre application Shiny pour son paquet d'étude.

\BeginKnitrBlock{rmdimportant}
Vous ne savez pas où publier votre étude en réseau OHDSI ? Consultez JANE (Journal/Author Name Estimator), un outil qui prend votre résumé et scanne les publications pour pertinence et adéquation.[^janeUrl]


\EndKnitrBlock{rmdimportant}

[^janeUrl]: http://jane.biosemantics.org/

Au fur et à mesure que les manuscrits sont rédigés, chaque collaborateur participant est encouragé à revoir et à s'assurer que le produit respecte les processus de publication externe. Au minimum, le site participant doit désigner un responsable de publication – cette personne s'assurera que les processus internes sont respectés pendant la préparation et la soumission du manuscrit. Le choix du journal dans lequel soumettre une étude est à la discrétion du responsable de l'étude, bien qu'il doit être le résultat de discussions collaboratives au début d'une étude. Tous les coauteurs des études OHDSI sont censés satisfaire aux lignes directrices d'attribution de paternité de l'ICMJE.[^icmjeUrl] La présentation des résultats peut se faire dans tout forum de leur choix (par ex. un Symposium OHDSI, une autre procédure académique ou dans une publication de journal). Les chercheurs sont également invités à présenter des études en réseau OHDSI lors des appels communautaires hebdomadaires OHDSI et lors des Symposiums OHDSI à travers le monde.

[^icmjeUrl]: http://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html
## Regard vers l'avenir : Utilisation de l'automatisation des études en réseau

\index{arachne}

Le processus actuel des études en réseau est manuel, avec des membres de l'équipe d'étude utilisant divers mécanismes (y compris Wiki, GitHub et email) pour collaborer sur la conception de l'étude, partager le code et les résultats. Ce processus n'est pas cohérent ni évolutif et pour résoudre ce problème, la communauté OHDSI travaille activement à systématiser les processus d'étude.

\begin{figure}[h]

{\centering \includegraphics[width=0.9\linewidth]{images/NetworkStudies/ARACHNE} 

}

\caption{The ARACHNE Network Study Process.}(\#fig:arachne)
\end{figure}

ARACHNE est une plateforme conçue pour rationaliser et automatiser le processus de réalisation des études en réseau. ARACHNE utilise les standards OHDSI et établit un processus de recherche observationnelle cohérent, transparent, sécurisé et conforme entre plusieurs organisations. ARACHNE standardise le protocole de communication pour accéder aux données et échanger les résultats d'analyse, tout en permettant l'authentification et l'autorisation pour les contenus restreints. Il réunit les organisations participantes - fournisseurs de données, chercheurs, sponsors et data scientists - en une seule équipe d'étude collaborative et facilite une coordination d'étude observationnelle de bout en bout. L'outil permet la création d'un environnement d'exécution complet et basé sur les normes pour R, Python et SQL, y compris des flux de travail d'approbation contrôlés par le responsable des données.

ARACHNE est conçu pour offrir une intégration transparente avec d'autres outils OHDSI, y compris les rapports ACHILLES et la possibilité d'importer des artefacts de conception ATLAS, de créer des packages autonomes et de les exécuter automatiquement sur plusieurs sites. La vision future est de permettre à terme le lien entre plusieurs réseaux afin de mener des recherches non seulement entre organisations au sein d'un même réseau, mais également entre organisations de plusieurs réseaux.

\begin{figure}[h]

{\centering \includegraphics[width=0.9\linewidth]{images/NetworkStudies/ARACHNENON} 

}

\caption{The ARACHNE Network of Networks.}(\#fig:arachneNon)
\end{figure}


## Meilleures pratiques pour les études en réseau OHDSI

\index{best practice for network research}

Lorsque vous menez une étude en réseau, la communauté OHDSI est disponible pour vous aider à vous conformer aux meilleures pratiques pour les études en réseau OHDSI.

**Conception et faisabilité de l'étude :** Lors de la réalisation d'une étude en réseau, assurez-vous de ne pas biaiser la conception de votre étude en faveur d'un type de données unique. La tâche d'harmonisation des définitions de cohorte pour représenter des populations cohérentes dans tous les sites peut être plus ou moins complexe selon l'hétérogénéité des types de données et selon la rigueur avec laquelle le site d'étude a suivi toutes les conventions standardisées pour convertir les données au modèle de données commun OMOP (CDM). Cela est crucial en raison de la nécessité de contrôler les différences de captation, de représentation et de transformation des données entre les sites du réseau par rapport à celles qui sont cliniquement significatives. En particulier, pour les études d'efficacité comparative, des défis peuvent surgir pour garantir des cohortes d'exposition et des définitions de cohortes de résultats concordantes entre les sites. Par exemple, les informations sur l'exposition aux médicaments peuvent provenir de diverses sources de données ayant des potentiels de classification erronée différents. Une réclamation de délivrance de médicament par une pharmacie issue d'un plan d'assurance santé peut être validée, ce qui signifie qu'il y a de bonnes chances que la personne ait effectivement récupéré son ordonnance. Cependant, une ordonnance saisie dans un DCE (dossier clinique électronique) peut être tout ce qui est disponible, sans lien avec d'autres données pour déterminer si l'ordonnance a été délivrée ou consommée. Il peut y avoir un décalage entre l'enregistrement de la prescription par un médecin, le moment où le pharmacien délivre le médicament, celui où le patient récupère son médicament à la pharmacie, et celui où le patient consomme effectivement sa première pilule. Cette erreur de mesure peut potentiellement biaiser les résultats pour tout cas d'utilisation analytique. Il est donc important de réaliser une étude de faisabilité pour évaluer la pertinence de la participation à la base de données lors de l'élaboration du protocole d'étude.

**Exécution de l'étude :** Dans la mesure du possible, les responsables de l'étude sont encouragés à utiliser ATLAS, la bibliothèque de méthodes OHDSI et les squelettes d'étude OHDSI pour créer du code d'étude utilisant autant que possible des packages analytiques standardisés. Le code d'étude doit toujours être conforme au CDM, en restant indépendant de la couche de base de données et en utilisant les packages OHDSI. Assurez-vous de paramétrer toutes les fonctions et variables (par exemple, ne pas coder en dur la connexion à la base de données, le chemin du disque local, présumer d'un certain système d'exploitation). Lors du recrutement de sites participants, un responsable d'étude doit garantir que chaque site du réseau est conforme au CDM et met régulièrement à jour les vocabulaires standardisés OMOP. Un responsable d'étude doit effectuer une diligence raisonnable afin de garantir que chaque site du réseau a effectué et documenté des contrôles de qualité des données sur son CDM (par exemple, s'assurer que l'ETL a suivi les règles commerciales et les conventions THEMIS, que les données correctes ont été placées dans les bonnes tables et champs du CDM). Chaque analyste de données est conseillé de mettre à jour ses packages R locaux aux dernières versions des packages OHDSI avant d'exécuter le package d'étude.

**Résultats et diffusion :** Un responsable d'étude doit veiller à ce que chaque site respecte les règles de gouvernance locales avant de partager les résultats. La science ouverte et reproductible signifie que tout ce qui est conçu et exécuté devient disponible. Les études en réseau OHDSI sont entièrement transparentes avec toute la documentation et les résultats ultérieurs publiés sur le dépôt GitHub d'OHDSI ou sur le serveur R Shiny de data.ohdsi.org. Lors de la préparation de votre manuscrit, le responsable de l'étude doit réviser les principes du CDM OMOP et des vocabulaires standardisés pour s'assurer que le journal comprend comment les données peuvent varier entre les sites du réseau OHDSI. Par exemple, si vous réalisez une étude en réseau utilisant des bases de données de réclamations et des DCE, il se peut que les relecteurs du journal vous demandent d'expliquer comment l'intégrité de la définition de la cohorte a été maintenue à travers plusieurs types de données. Un relecteur pourrait vouloir comprendre comment la période d'observation OMOP (comme discuté au chapitre \@ref(CommonDataModel)) se compare à un fichier d'éligibilité - un fichier qui existe dans les bases de données de réclamations pour attribuer les périodes couvertes ou non par un fournisseur d'assurance. Cette demande porte intrinsèquement sur un élément artificiel des bases de données elles-mêmes et se concentre sur l'ETL de comment le CDM transforme les enregistrements en observations. Dans ce cas, le responsable de l'étude en réseau pourrait trouver utile de référencer comment la période d'observation du CDM OMOP est créée et de décrire comment les observations sont créées à partir des rencontres dans le système source. La discussion du manuscrit pourrait nécessiter de reconnaître les limitations de la manière dont les données de DCE, contrairement aux données de réclamations qui reflètent toutes les rencontres payées pendant la période où elles sont couvertes, ne registrent pas lorsque une personne voit un prestataire utilisant un autre DCE, provoquant ainsi des interruptions dans les périodes d'observation en raison des soins obtenus auprès d'un prestataire hors DCE. Cela est une propriété des données capturées dans le système. Ce n'est pas une différence cliniquement significative mais peut prêter à confusion pour ceux qui ne connaissent pas comment le CDM OMOP dérive la table de période d'observation. Il est utile de l'expliquer dans la section de discussion pour clarifier cette convention méconnue. De même, un responsable d'étude peut trouver utile de décrire le service de terminologie fourni par les vocabulaires standardisés OMOP, permettant à un concept clinique d'être le même partout où il est capturé. Il y a toujours des décisions prises lors du mappage des codes sources aux concepts standard, cependant les conventions THEMIS et les contrôles de qualité du CDM peuvent aider à fournir des informations sur où l'information doit aller et à quel point une base de données a adhéré à ce principe.


## Résumé

\BeginKnitrBlock{rmdsummary}
- Une étude OHDSI devient une étude en réseau OHDSI lorsqu'elle est réalisée sur plusieurs CDM dans différentes institutions.
- Les études en réseau OHDSI sont ouvertes à tous. N'importe qui peut diriger une étude en réseau. Toute personne possédant une base de données conforme au CDM OMOP peut choisir d'y participer et de contribuer aux résultats.
- Besoin d'aide pour mener une étude en réseau ? Consultez le comité d'encadrement des études OHDSI pour vous aider à concevoir et exécuter votre étude.
- **Partager c'est se soucier.** Toute la documentation de l'étude, le code et les résultats sont publiés sur le GitHub d'OHDSI ou dans une application R Shiny. Les responsables des études sont invités à présenter leur recherche lors des événements OHDSI.


\EndKnitrBlock{rmdsummary}
