# Définitions de cohortes {#CohortDefinitions}

Cet appendice contient les définitions des cohortes utilisées tout au long du livre.


## Inhibiteurs de l'ECA {#AceInhibitors}

#### Cohorte d'événements initiaux {-}

Personnes ayant l'un des éléments suivants :

* une exposition à un médicament *inhibiteurs de l'ECA* (Tableau \@ref(tab:aceInhibitors)) pour la première fois dans l'historique de la personne

avec une observation continue d'au moins 365 jours avant et 0 jours après la date de l'événement index, et limiter les événements initiaux à : tous les événements par personne.

Limiter la cohorte qualifiante à : tous les événements par personne.

#### Stratégie de date de fin {-}

Critères de sortie personnalisés pour les périodes de médicaments.
Cette stratégie crée une période de médicament à partir des codes trouvés dans l'ensemble de concepts spécifié. Si l'événement index est trouvé dans une période, la date de fin de cohorte utilisera la date de fin de la période. Sinon, elle utilisera la date de fin de la période d'observation contenant l'événement index.

Utiliser la date de fin de la période des *inhibiteurs de l'ECA* (Tableau \@ref(tab:aceInhibitors))

* autorisant 30 jours entre les expositions
* ajoutant 0 jours après la fin de l'exposition

#### Stratégie de fusion des cohortes {-}

Fusionner la cohorte par période avec un intervalle de 30 jours.

#### Définitions des ensembles de concepts {-}

Table: (\#tab:aceInhibitors) Inhibiteurs de l'ECA

| Id Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:------------ | -------- | ----------- | ------ |
| 1308216 | Lisinopril | NON | OUI | NON |
| 1310756 | moexipril | NON | OUI | NON |
| 1331235 | quinapril | NON | OUI | NON |
| 1334456 | Ramipril | NON | OUI | NON |
| 1335471 | benazepril | NON | OUI | NON |
| 1340128 | Captopril | NON | OUI | NON |
| 1341927 | Enalapril | NON | OUI | NON |
| 1342439 | trandolapril | NON | OUI | NON |
| 1363749 | Fosinopril | NON | OUI | NON |
| 1373225 | Perindopril | NON | OUI | NON |



## Nouveaux utilisateurs de monothérapie avec des inhibiteurs de l'ECA {#AceInhibitorsMono}

#### Cohorte d'événements initiaux {-}

Personnes ayant l'un des éléments suivants :

* une exposition à un médicament *inhibiteurs de l'ECA* (Tableau \@ref(tab:aceInhibitorsMono)) pour la première fois dans l'historique de la personne

avec une observation continue d'au moins 365 jours avant et 0 jours après la date de l'événement index, et limiter les événements initiaux à : premier événement par personne.

#### Règles d'inclusion {-}

Critère d'Inclusion n°1 : diagnostic d'hypertension dans l'année précédent le traitement

Ayant tous les critères suivants :

* au moins 1 occurrence d'une occurrence de condition *Trouble hypertensif* (Tableau \@ref(tab:hypertensionAceMono)) où l'événement commence entre 365 jours avant et 0 jours après la date de début de l'index

Critère d'Inclusion n°2 : Pas d'expositions antérieures aux médicaments antihypertenseurs dans l'historique médical

Ayant tous les critères suivants :

* exactement 0 occurrences d'une exposition à un médicament *Médicaments antihypertenseurs* (Tableau \@ref(tab:htnDrugsAceMono)) où l'événement commence entre tous les jours avant et 1 jour avant la date de début de l'index

Critère d'Inclusion n°3 : Prend uniquement un inhibiteur de l'ECA en monothérapie, sans traitements combinés concomitants

Ayant tous les critères suivants :

* exactement 1 occurrence distincte d'une période de médicament *Médicaments antihypertenseurs* (Tableau \@ref(tab:htnDrugsAceMono)) où l'événement commence entre 0 jours avant et 7 jours après la date de début de l'index

Limiter la cohorte qualifiante à : premier événement par personne.

#### Stratégie de date de fin {-}

Critères de sortie personnalisés pour les périodes de médicaments.
Cette stratégie crée une période de médicament à partir des codes trouvés dans l'ensemble de concepts spécifié. Si l'événement index est trouvé dans une période, la date de fin de cohorte utilisera la date de fin de la période. Sinon, elle utilisera la date de fin de la période d'observation contenant l'événement index.

Utiliser la date de fin de la période des *inhibiteurs de l'ECA* (Tableau \@ref(tab:aceInhibitorsMono))

* autorisant 30 jours entre les expositions
* ajoutant 0 jours après la fin de l'exposition

#### Stratégie de fusion des cohortes {-}

Fusionner la cohorte par période avec un intervalle de 0 jours.

#### Définitions des ensembles de concepts {-}

Table: (\#tab:aceInhibitorsMono) Inhibiteurs de l'ECA

| Id Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:------------ | -------- | ----------- | ------ |
| 1308216 | Lisinopril | NON | OUI | NON |
| 1310756 | moexipril | NON | OUI | NON |
| 1331235 | quinapril | NON | OUI | NON |
| 1334456 | Ramipril | NON | OUI | NON |
| 1335471 | benazepril | NON | OUI | NON |
| 1340128 | Captopril | NON | OUI | NON |
| 1341927 | Enalapril | NON | OUI | NON |
| 1342439 | trandolapril | NON | OUI | NON |
| 1363749 | Fosinopril | NON | OUI | NON |
| 1373225 | Perindopril | NON | OUI | NON |

Table: (\#tab:hypertensionAceMono) Trouble hypertensif

| Id Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:------------ | -------- | ----------- | ------ |
| 316866 | Trouble hypertensif | NON | OUI | NON |

Table: (\#tab:htnDrugsAceMono) Médicaments antihypertenseurs

| Id Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:------------ | -------- | ----------- | ------ |
| 904542 | Triamterene | NON | OUI | NON |
| 907013 | Metolazone | NON | OUI | NON |
| 932745 | Bumetanide | NON | OUI | NON |
| 942350 | torsemide | NON | OUI | NON |
| 956874 | Furosemide | NON | OUI | NON |
| 970250 | Spironolactone | NON | OUI | NON |
| 974166 | Hydrochlorothiazide | NON | OUI | NON |
| 978555 | Indapamide | NON | OUI | NON |
| 991382 | Amiloride | NON | OUI | NON |
| 1305447 | Methyldopa | NON | OUI | NON |
| 1307046 | Metoprolol | NON | OUI | NON |
| 1307863 | Verapamil | NON | OUI | NON |
| 1308216 | Lisinopril | NON | OUI | NON |
| 1308842 | valsartan | NON | OUI | NON |
| 1309068 | Minoxidil | NON | OUI | NON |
| 1309799 | eplerenone | NON | OUI | NON |
| 1310756 | moexipril | NON | OUI | NON |
| 1313200 | Nadolol | NON | OUI | NON |
| 1314002 | Atenolol | NON | OUI | NON |
| 1314577 | nebivolol | NON | OUI | NON |
| 1317640 | telmisartan | NON | OUI | NON |
| 1317967 | aliskiren | NON | OUI | NON |
| 1318137 | Nicardipine | NON | OUI | NON |
| 1318853 | Nifedipine | NON | OUI | NON |
| 1319880 | Nisoldipine | NON | OUI | NON |
| 1319998 | Acebutolol | NON | OUI | NON |
| 1322081 | Betaxolol | NON | OUI | NON |
| 1326012 | Isradipine | NON | OUI | NON |
| 1327978 | Penbutolol | NON | OUI | NON |
| 1328165 | Diltiazem | NON | OUI | NON |
| 1331235 | quinapril | NON | OUI | NON |
| 1332418 | Amlodipine | NON | OUI | NON |
| 1334456 | Ramipril | NON | OUI | NON |
| 1335471 | benazepril | NON | OUI | NON |
| 1338005 | Bisoprolol | NON | OUI | NON |
| 1340128 | Captopril | NON | OUI | NON |
| 1341238 | Terazosin | NON | OUI | NON |
| 1341927 | Enalapril | NON | OUI | NON |
| 1342439 | trandolapril | NON | OUI | NON |
| 1344965 | Guanfacine | NON | OUI | NON |
| 1345858 | Pindolol | NON | OUI | NON |
| 1346686 | eprosartan | NON | OUI | NON |
| 1346823 | carvedilol | NON | OUI | NON |
| 1347384 | irbesartan | NON | OUI | NON |
| 1350489 | Prazosin | NON | OUI | NON |
| 1351557 | candesartan | NON | OUI | NON |
| 1353766 | Propranolol | NON | OUI | NON |
| 1353776 | Felodipine | NON | OUI | NON |
| 1363053 | Doxazosin | NON | OUI | NON |
| 1363749 | Fosinopril | NON | OUI | NON |
| 1367500 | Losartan | NON | OUI | NON |
| 1373225 | Perindopril | NON | OUI | NON |
| 1373928 | Hydralazine | NON | OUI | NON |
| 1386957 | Labetalol | NON | OUI | NON |
| 1395058 | Chlorthalidone | NON | OUI | NON |
| 1398937 | Clonidine | NON | OUI | NON |
| 40226742 | olmesartan | NON | OUI | NON |
| 40235485 | azilsartan | NON | OUI | NON |



## Infarctus du myocarde aigu (IMA) {#Ami}

#### Cohorte d'événements initiaux {-}

Personnes ayant l'un des éléments suivants :

* une occurrence de condition *Infarctus du myocarde aigu* (Tableau \@ref(tab:ami))

avec une observation continue d'au moins 0 jours avant et 0 jours après la date de l'événement index, et limiter les événements initiaux à : tous les événements par personne.

Pour les personnes correspondant aux événements principaux, inclure : Ayant l'un des critères suivants :

* au moins 1 occurrence d'une occurrence de visite *Visite en hospitalisation ou aux urgences* (Tableau \@ref(tab:inpatientOrErAmi)) où l'événement commence entre tous les jours avant et 0 jours après la date de début de l'index et où l'événement se termine entre 0 jours avant et tous les jours après la date de début de l'index

Limiter la cohorte des événements initiaux à : tous les événements par personne.

Limiter la cohorte qualifiante à : tous les événements par personne.

#### Stratégie de date de fin {-}

Critères de sortie par décalage de date.
La date de fin de cette définition de cohorte sera la date de début de l'événement index plus 7 jours

#### Stratégie de fusion des cohortes {-}

Fusionner la cohorte par période avec un intervalle de 180 jours.

#### Définitions des ensembles de concepts {-}

Table: (\#tab:ami) Visite en hospitalisation ou aux urgences

| Id Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:------------ | -------- | ----------- | ------ |
| 314666 | Infarctus du myocarde ancien | OUI | OUI | NON |
| 4329847 | Infarctus du myocarde | NON | OUI | NON |

Table: (\#tab:inpatientOrErAmi) Visite en hospitalisation ou aux urgences

| Id Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:------------ | -------- | ----------- | ------ |
| 262 | Visite aux urgences et hospitalisation | NON | OUI | NON |
| 9201 | Visite en hospitalisation | NON | OUI | NON |
| 9203 | Visite aux urgences | NON | OUI | NON |
## Angioedème {#Angioedema}

#### Cohorte d'Événements Initiaux {-}

Personnes ayant l'une des conditions suivantes :

* une occurrence de condition de *Angioedème* (Tableau \@ref(tab:angioedema))

avec une observation continue d'au moins 0 jours avant et 0 jours après la date de l'index de l'événement, et limiter les événements initiaux à : tous les événements par personne.

Pour les personnes correspondant aux Événements Primaires, inclure :
Avoir l'un des critères suivants :

* au moins 1 occurrence d'une visite en tant que visite en *Soins Internes ou Urgences* (Tableau \@ref(tab:inpatientOrEr)) où l'événement commence entre tous les jours avant et 0 jours après la date de début de l'index et l'événement se termine entre 0 jours avant et tous les jours après la date de début de l'index

Limiter la cohorte des événements initiaux à : tous les événements par personne.

Limiter la cohorte qualifiante à : tous les événements par personne.

#### Stratégie de Date de Fin {-}

La date de fin de cette définition de cohorte sera la date de début de l'événement index plus 7 jours

#### Stratégie de Fusion de Cohorte {-}

Fusionner la cohorte par période avec un intervalle de 30 jours.

#### Définitions du Jeu de Concepts {-}

Tableau: (\#tab:angioedema) Angioedème

| Concept Id | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:-------------- | ------ | ----------- | ----- |
| 432791 | Angioedème | NON | OUI | NON |

Tableau: (\#tab:inpatientOrEr) Visite en Soins Internes ou Urgences

| Concept Id | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:-------------- | ------ | ----------- | ----- |
| 262 | Visite en Urgences et Soins Internes | NON | OUI | NON |
| 9201 | Visite en Soins Internes | NON | OUI | NON |
| 9203 | Visite en Urgences | NON | OUI | NON |



## Nouveaux Utilisateurs de Diurétiques de Type Thiazidique en Monothérapie {#ThiazidesMono}

#### Cohorte d'Événements Initiaux {-}

Personnes ayant l'une des conditions suivantes :

* une exposition à un médicament de *Diurétique thiazidique ou de type thiazidique* (Tableau \@ref(tab:thiazidesMono)) pour la première fois dans l'historique de la personne

avec une observation continue d'au moins 365 jours avant et 0 jours après la date de l'index de l'événement, et limiter les événements initiaux à : premier événement par personne.

#### Règles d'Inclusion {-}

Critère d'Inclusion #1 : diagnostiqué d'hypertension dans 1 an avant le traitement

Avoir tous les critères suivants :

* au moins 1 occurrence d'une condition de *Trouble hypertensif* (Tableau \@ref(tab:hypertensionThzMono)) où l'événement commence entre 365 jours avant et 0 jours après la date de début de l'index

Critère d'Inclusion #2 : pas d'expositions antérieures aux médicaments antihypertenseurs dans l'historique médical

Avoir tous les critères suivants :

* exactement 0 occurrences d'une exposition à un médicament de *Médicaments antihypertenseurs* (Tableau \@ref(tab:htnDrugsThzMono)) où l'événement commence entre tous les jours avant et 1 jour avant la date de début de l'index

Critère d'Inclusion #3 : ne prend qu'un IECA en monothérapie, sans traitement combiné concomitant

Avoir tous les critères suivants :

* exactement 1 occurrence distincte d'une période de médicament de *Médicaments antihypertenseurs* (Tableau \@ref(tab:htnDrugsThzMono)) où l'événement commence entre 0 jours avant et 7 jours après la date de début de l'index

Limiter la cohorte qualifiante à : premier événement par personne.

#### Stratégie de Date de Fin {-}

Critères Personnalisés de Sortie de la Période de Médicament.
Cette stratégie crée une période de médicament à partir des codes trouvés dans le jeu de concepts spécifié. Si l'événement d'indexation est trouvé au sein d'une période, la date de fin de la cohorte utilisera la date de fin de la période. Sinon, elle utilisera la date de fin de la période d'observation contenant l'événement d'indexation.

Utilisez la date de fin de la période de *Diurétique thiazidique ou de type thiazidique* (Tableau \@ref(tab:thiazidesMono))

* permettant 30 jours entre les expositions
* ajoutant 0 jours après la fin de l'exposition

#### Stratégie de Fusion de Cohorte {-}

Fusionner la cohorte par période avec un intervalle de 0 jours.

#### Définitions du Jeu de Concepts {-}

Tableau: (\#tab:thiazidesMono) Diurétique thiazidique ou de type thiazidique

| Concept Id | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:-------------- | ------ | ----------- | ----- |
| 907013 | Métolazone | NON | OUI | NON |
| 974166 | Hydrochlorothiazide | NON | OUI | NON |
| 978555 | Indapamide | NON | OUI | NON |
| 1395058 | Chlortalidone | NON | OUI | NON |

Tableau: (\#tab:hypertensionThzMono) Trouble hypertensif

| Concept Id | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:-------------- | ------ | ----------- | ----- |
| 316866 | Trouble hypertensif | NON | OUI | NON |

Tableau: (\#tab:htnDrugsThzMono) Médicaments antihypertenseurs

| Concept Id | Nom du Concept | Exclu | Descendants | Mappé |
| ---------- |:-------------- | ------ | ----------- | ----- |
| 904542 | Triamterene | NON | OUI | NON |
| 907013 | Métolazone | NON | OUI | NON |
| 932745 | Bumétanide | NON | OUI | NON |
| 942350 | Torasémide | NON | OUI | NON |
| 956874 | Furosémide | NON | OUI | NON |
| 970250 | Spironolactone | NON | OUI | NON |
| 974166 | Hydrochlorothiazide | NON | OUI | NON |
| 978555 | Indapamide | NON | OUI | NON |
| 991382 | Amiloride | NON | OUI | NON |
| 1305447 | Méthyldopa | NON | OUI | NON |
| 1307046 | Métoprolol | NON | OUI | NON |
| 1307863 | Vérapamil | NON | OUI | NON |
| 1308216 | Lisinopril | NON | OUI | NON |
| 1308842 | Valsartan | NON | OUI | NON |
| 1309068 | Minoxidil | NON | OUI | NON |
| 1309799 | Éplérénone | NON | OUI | NON |
| 1310756 | Moexipril | NON | OUI | NON |
| 1313200 | Nadolol | NON | OUI | NON |
| 1314002 | Aténolol | NON | OUI | NON |
| 1314577 | Nébivolol | NON | OUI | NON |
| 1317640 | Télmisartan | NON | OUI | NON |
| 1317967 | Aliskirène | NON | OUI | NON |
| 1318137 | Nicardipine | NON | OUI | NON |
| 1318853 | Nifédipine | NON | OUI | NON |
| 1319880 | Nisoldipine | NON | OUI | NON |
| 1319998 | Acébutolol | NON | OUI | NON |
| 1322081 | Bétaxolol | NON | OUI | NON |
| 1326012 | Isradipine | NON | OUI | NON |
| 1327978 | Pénbutolol | NON | OUI | NON |
| 1328165 | Diltiazem | NON | OUI | NON |
| 1331235 | Quinapril | NON | OUI | NON |
| 1332418 | Amlodipine | NON | OUI | NON |
| 1334456 | Ramipril | NON | OUI | NON |
| 1335471 | Bénazépril | NON | OUI | NON |
| 1338005 | Bisoprolol | NON | OUI | NON |
| 1340128 | Captopril | NON | OUI | NON |
| 1341238 | Térasozine | NON | OUI | NON |
| 1341927 | Énalapril | NON | OUI | NON |
| 1342439 | Trandolapril | NON | OUI | NON |
| 1344965 | Guanfacine | NON | OUI | NON |
| 1345858 | Pindolol | NON | OUI | NON |
| 1346686 | Éprosartan | NON | OUI | NON |
| 1346823 | Carvédilol | NON | OUI | NON |
| 1347384 | Irbésartan | NON | OUI | NON |
| 1350489 | Prazosine | NON | OUI | NON |
| 1351557 | Candésartan | NON | OUI | NON |
| 1353766 | Propranolol | NON | OUI | NON |
| 1353776 | Félodipine | NON | OUI | NON |
| 1363053 | Doxazosine | NON | OUI | NON |
| 1363749 | Fosinopril | NON | OUI | NON |
| 1367500 | Losartan | NON | OUI | NON |
| 1373225 | Périndopril | NON | OUI | NON |
| 1373928 | Hydralazine | NON | OUI | NON |
| 1386957 | Labétalol | NON | OUI | NON |
| 1395058 | Chlortalidone | NON | OUI | NON |
| 1398937 | Clonidine | NON | OUI | NON |
| 40226742 | Olmésartan | NON | OUI | NON |
| 40235485 | Azilsartan | NON | OUI | NON |
## Patients Initiating First-Line Therapy for Hypertension {#HTN1yrFO}

#### Cohorte d'événements initiaux {-}

Personnes ayant l'une des conditions suivantes :

* Une exposition à un médicament parmi les *médicaments de première ligne pour l'hypertension* (Table \@ref(tab:HTN1yrFO1stLine)) pour la première fois dans l'historique de la personne

Avec une observation continue d'au moins 365 jours avant et 365 jours après la date d'index de l'événement, et limiter les événements initiaux à : le premier événement par personne.

#### Règles d'inclusion {-}

Avoir tous les critères suivants :

* exactement 0 occurrences d'une exposition à un médicament parmi les *médicaments pour l'hypertension* (Table \@ref(tab:HTN1yrFODrugs)) où l'événement commence entre tous les jours avant et 1 jour avant la date de début de l'index
* et au moins 1 occurrence d'une condition parmi les *troubles hypertensifs* (Table \@ref(tab:HTN1yrFOHypertensiveDisorder)) où l'événement commence entre 365 jours avant et 0 jour après la date de début de l'index

Limitez la cohorte initiale des événements à : le premier événement par personne. Limitez la cohorte qualifiée à : le premier événement par personne.

#### Stratégie de date de fin {-}

Aucune stratégie de date de fin sélectionnée. Par défaut, la date de fin de la cohorte sera la fin de la période d'observation qui contient l'événement d'index.

#### Stratégie de fusion de cohorte {-}

Fusionner la cohorte par ère avec une taille d'intervalle de 0 jours.

#### Définitions de l'ensemble des concepts {-}

Tableau : (\#tab:HTN1yrFO1stLine) Médicaments de première ligne pour l'hypertension

| Id Concept | Nom du Concept   | Exclu | Descendants | Mappé |
| ---------- |:---------------- | ----- | ----------- | ----- |
| 907013     | Métolazone       | NON   | OUI         | NON   |
| 974166     | Hydrochlorothiazide | NON   | OUI         | NON   |
| 978555     | Indapamide       | NON   | OUI         | NON   |
| 1307863    | Vérapamil        | NON   | OUI         | NON   |
| 1308216    | Lisinopril       | NON   | OUI         | NON   |
| 1308842    | Valsartan        | NON   | OUI         | NON   |
| 1310756    | Moexipril        | NON   | OUI         | NON   |
| 1317640    | Telmisartan      | NON   | OUI         | NON   |
| 1318137    | Nicardipine      | NON   | OUI         | NON   |
| 1318853    | Nifédipine       | NON   | OUI         | NON   |
| 1319880    | Nisoldipine      | NON   | OUI         | NON   |
| 1326012    | Isradipine       | NON   | OUI         | NON   |
| 1328165    | Diltiazem        | NON   | OUI         | NON   |
| 1331235    | Quinapril        | NON   | OUI         | NON   |
| 1332418    | Amlodipine       | NON   | OUI         | NON   |
| 1334456    | Ramipril         | NON   | OUI         | NON   |
| 1335471    | Bénazépril       | NON   | OUI         | NON   |
| 1340128    | Captopril        | NON   | OUI         | NON   |
| 1341927    | Énalapril        | NON   | OUI         | NON   |
| 1342439    | Trandolapril     | NON   | OUI         | NON   |
| 1346686    | Éprosartan       | NON   | OUI         | NON   |
| 1347384    | Irbésartan       | NON   | OUI         | NON   |
| 1351557    | Candésartan      | NON   | OUI         | NON   |
| 1353776    | Félodipine       | NON   | OUI         | NON   |
| 1363749    | Fosinopril       | NON   | OUI         | NON   |
| 1367500    | Losartan         | NON   | OUI         | NON   |
| 1373225    | Périndopril      | NON   | OUI         | NON   |
| 1395058    | Chlortalidone    | NON   | OUI         | NON   |
| 40226742   | Olmésartan       | NON   | OUI         | NON   |
| 40235485   | Azilsartan       | NON   | OUI         | NON   |


Tableau : (\#tab:HTN1yrFODrugs) Médicaments pour l'hypertension

| Id Concept | Nom du Concept    | Exclu | Descendants | Mappé |
| ---------- |:----------------- | ----- | ----------- | ----- |
| 904542     | Triamtérène       | NON   | OUI         | NON   |
| 907013     | Métolazone        | NON   | OUI         | NON   |
| 932745     | Bumétanide        | NON   | OUI         | NON   |
| 942350     | Torasémide        | NON   | OUI         | NON   |
| 956874     | Furosémide        | NON   | OUI         | NON   |
| 970250     | Spironolactone    | NON   | OUI         | NON   |
| 974166     | Hydrochlorothiazide| NON   | OUI         | NON   |
| 978555     | Indapamide        | NON   | OUI         | NON   |
| 991382     | Amiloride         | NON   | OUI         | NON   |
| 1305447    | Méthyldopa        | NON   | OUI         | NON   |
| 1307046    | Métoprolol        | NON   | OUI         | NON   |
| 1307863    | Vérapamil         | NON   | OUI         | NON   |
| 1308216    | Lisinopril        | NON   | OUI         | NON   |
| 1308842    | Valsartan         | NON   | OUI         | NON   |
| 1309068    | Minoxidil         | NON   | OUI         | NON   |
| 1309799    | Éplérénone        | NON   | OUI         | NON   |
| 1310756    | Moexipril         | NON   | OUI         | NON   |
| 1313200    | Nadolol           | NON   | OUI         | NON   |
| 1314002    | Aténolol          | NON   | OUI         | NON   |
| 1314577    | Nébilolol         | NON   | OUI         | NON   |
| 1317640    | Telmisartan       | NON   | OUI         | NON   |
| 1317967    | Aliskirène        | NON   | OUI         | NON   |
| 1318137    | Nicardipine       | NON   | OUI         | NON   |
| 1318853    | Nifédipine        | NON   | OUI         | NON   |
| 1319880    | Nisoldipine       | NON   | OUI         | NON   |
| 1319998    | Acébutolol        | NON   | OUI         | NON   |
| 1322081    | Bétaxolol         | NON   | OUI         | NON   |
| 1326012    | Isradipine        | NON   | OUI         | NON   |
| 1327978    | Penbutolol        | NON   | OUI         | NON   |
| 1328165    | Diltiazem         | NON   | OUI         | NON   |
| 1331235    | Quinapril         | NON   | OUI         | NON   |
| 1332418    | Amlodipine        | NON   | OUI         | NON   |
| 1334456    | Ramipril          | NON   | OUI         | NON   |
| 1335471    | Bénazépril        | NON   | OUI         | NON   |
| 1338005    | Bisoprolol        | NON   | OUI         | NON   |
| 1340128    | Captopril         | NON   | OUI         | NON   |
| 1341238    | Térazosine        | NON   | OUI         | NON   |
| 1341927    | Énalapril         | NON   | OUI         | NON   |
| 1342439    | Trandolapril      | NON   | OUI         | NON   |
| 1344965    | Guanfacine        | NON   | OUI         | NON   |
| 1345858    | Pindolol          | NON   | OUI         | NON   |
| 1346686    | Éprosartan        | NON   | OUI         | NON   |
| 1346823    | Carvédilol        | NON   | OUI         | NON   |
| 1347384    | Irbésartan        | NON   | OUI         | NON   |
| 1350489    | Prazosine         | NON   | OUI         | NON   |
| 1351557    | Candésartan       | NON   | OUI         | NON   |
| 1353766    | Propranolol       | NON   | OUI         | NON   |
| 1353776    | Félodipine        | NON   | OUI         | NON   |
| 1363053    | Doxazosine        | NON   | OUI         | NON   |
| 1363749    | Fosinopril        | NON   | OUI         | NON   |
| 1367500    | Losartan          | NON   | OUI         | NON   |
| 1373225    | Périndopril       | NON   | OUI         | NON   |
| 1373928    | Hydralazine       | NON   | OUI         | NON   |
| 1386957    | Labétalol         | NON   | OUI         | NON   |
| 1395058    | Chlortalidone     | NON   | OUI         | NON   |
| 1398937    | Clonidine         | NON   | OUI         | NON   |
| 40226742   | Olmésartan        | NON   | OUI         | NON   |
| 40235485   | Azilsartan        | NON   | OUI         | NON   |


Tableau : (\#tab:HTN1yrFOHypertensiveDisorder) Troubles hypertensifs

| Id Concept | Nom du Concept      | Exclu | Descendants | Mappé |
| ---------- |:------------------- | ----- | ----------- | ----- |
| 316866     | Trouble hypertensif | NON	| OUI	| NON    |


## Patients Initiating First-Line Therapy for Hypertension With >3 Yr Follow-Up {#HTN3yrFO}

Identique à la *définition de cohorte \@ref(HTN1yrFO)* mais avec une observation continue d'au moins 365 jours avant et **1095 jours** après la date d'index de l'événement.


## ACE Inhibitor Use {#ACEiUse}

#### Cohorte d'événements initiaux {-}

Personnes ayant l'une des conditions suivantes :

* Une exposition à un médicament parmi les *inhibiteurs de l'ECA* (Table \@ref(tab:ACEiUseACE))

Avec une observation continue d'au moins 0 jours avant et 0 jours après la date d'index de l'événement, et limiter les événements initiaux à : tous les événements par personne.

Limitez la cohorte qualifiée à : tous les événements par personne.

#### Stratégie de date de fin {-}

Cette stratégie crée une ère thérapeutique à partir des codes trouvés dans l'ensemble de concepts spécifié. Si l'événement d'index est trouvé au sein d'une ère, la date de fin de la cohorte utilisera la date de fin de l'ère. Sinon, elle utilisera la date de fin de la période d'observation qui contient l'événement d'index.

Utilisez la date de fin de l'ère des *inhibiteurs de l'ECA* (Table \@ref(tab:ACEiUseACE)) :

* permettant 30 jours entre les expositions
* ajoutant 0 jours après la fin de l'exposition

#### Stratégie de fusion de cohorte {-}

Fusionner la cohorte par ère avec une taille d'intervalle de 30 jours.

#### Définitions de l'ensemble des concepts {-}

Tableau : (\#tab:ACEiUseACE) Inhibiteurs de l'ECA

| Id Concept | Nom du Concept   | Exclu | Descendants | Mappé |
| ---------- |:---------------- | ----- | ----------- | ----- |
| 1308216    | Lisinopril       | NON   | OUI         | NON   |
| 1310756    | Moexipril        | NON   | OUI         | NON   |
| 1331235    | Quinapril        | NON   | OUI         | NON   |
| 1334456    | Ramipril         | NON   | OUI         | NON   |
| 1335471    | Bénazépril       | NON   | OUI         | NON   |
| 1340128    | Captopril        | NON   | OUI         | NON   |
| 1341927    | Énalapril        | NON   | OUI         | NON   |
| 1342439    | Trandolapril     | NON   | OUI         | NON   |
| 1363749    | Fosinopril       | NON   | OUI         | NON   |
| 1373225    | Périndopril      | NON   | OUI         | NON   |


## Angiotensin Receptor Blocker (ARB) Use {#ARBUse}

Identique à la *définition de cohorte \@ref(ACEiUse)* avec les *bloqueurs des récepteurs de l'angiotensine (ARB)* (Table \@ref(tab:ARBUseARBs)) à la place des *inhibiteurs de l'ECA* (Table \@ref(tab:ACEiUseACE)).

#### Définitions de l'ensemble des concepts {-}

Tableau : (\#tab:ARBUseARBs) Bloqueurs des récepteurs de l'angiotensine (ARB)

| Id Concept | Nom du Concept   | Exclu | Descendants | Mappé |
| ---------- |:---------------- | ----- | ----------- | ----- |
| 1308842    | Valsartan        | NON   | OUI         | NON   |
| 1317640    | Telmisartan      | NON   | OUI         | NON   |
| 1346686    | Éprosartan       | NON   | OUI         | NON   |
| 1347384    | Irbésartan       | NON   | OUI         | NON   |
| 1351557    | Candésartan      | NON   | OUI         | NON   |
| 1367500    | Losartan         | NON   | OUI         | NON   |
| 40226742   | Olmésartan       | NON   | OUI         | NON   |
| 40235485   | Azilsartan       | NON   | OUI         | NON   |


## Thiazide Or Thiazide-Like Diuretic Use {#THZUse}

Identique à la *définition de cohorte \@ref(ACEiUse)* avec les *diurétiques thiazidiques ou thiazidiques similaires* (Table \@ref(tab:THZUseTHZ)) à la place des *inhibiteurs de l'ECA* (Table \@ref(tab:ACEiUseACE)).

#### Définitions de l'ensemble des concepts {-}

Tableau : (\#tab:THZUseTHZ) Diurétiques thiazidiques ou thiazidiques similaires

| Id Concept | Nom du Concept        | Exclu | Descendants | Mappé |
| ---------- |:--------------------- | ----- | ----------- | ----- |
| 907013     | Métolazone            | NON   | OUI         | NON   |
| 974166     | Hydrochlorothiazide   | NON   | OUI         | NON   |
| 978555     | Indapamide            | NON   | OUI         | NON   |
| 1395058    | Chlortalidone         | NON   | OUI         | NON   |


## Dihydropyridine Calcium Channel Blocker (dCCB) Use {#dCCBUse}

Identique à la *définition de cohorte \@ref(ACEiUse)* avec les *bloqueurs des canaux calciques de type dihydropyridine (dCCB)* (Table \@ref(tab:dCCBUsedCBB)) à la place des *inhibiteurs de l'ECA* (Table \@ref(tab:ACEiUseACE)).

#### Définitions de l'ensemble des concepts {-}

Tableau : (\#tab:dCCBUsedCBB) Bloqueurs des canaux calciques de type dihydropyridine (dCCB)

| Id Concept | Nom du Concept   | Exclu | Descendants | Mappé |
| ---------- |:---------------- | ----- | ----------- | ----- |
| 1318137    | Nicardipine      | NON   | OUI         | NON   |
| 1318853    | Nifédipine       | NON   | OUI         | NON   |
| 1319880    | Nisold
## Utilisation des Bêta-bloquants {#BBUse}

Identique à *définition de cohorte \@ref(ACEiUse)* avec *Bêta-bloquants* (Tableau \@ref(tab:BBUseBB)) à la place des *Inhibiteurs de l'ECA* (Tableau \@ref(tab:ACEiUseACE)).

#### Définitions des Ensembles de Concepts {-}

Table: (\#tab:BBUseBB) Bêta-bloquants

| Id du Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ------------- |:---------------| ------| ------------| ------|
| 1307046 | Métoprolol | NON | OUI | NON |
| 1313200 | Nadolol | NON | OUI | NON |
| 1314002 | Aténolol | NON | OUI | NON |
| 1314577 | Nébivolol | NON | OUI | NON |
| 1319998 | Acébutolol | NON | OUI | NON |
| 1322081 | Bétaxolol | NON | OUI | NON |
| 1327978 | Penbutolol | NON | OUI | NON |
| 1338005 | Bisoprolol | NON | OUI | NON |
| 1345858 | Pindolol | NON | OUI | NON |
| 1346823 | Carvédilol | NON | OUI | NON |
| 1353766 | Propranolol | NON | OUI | NON |
| 1386957 | Labétalol | NON | OUI | NON |


## Utilisation des Diurétiques - Anse {#DLoopUse}

Identique à *définition de cohorte \@ref(ACEiUse)* avec *Diurétiques - Anse* (Tableau \@ref(tab:DLoopUseDLoops)) à la place des *Inhibiteurs de l'ECA* (Tableau \@ref(tab:ACEiUseACE)).

#### Définitions des Ensembles de Concepts {-}

Table: (\#tab:DLoopUseDLoops) Diurétiques - Anse

| Id du Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ------------- |:---------------| ------| ------------| ------|
| 932745 | Bumétanide | NON | OUI | NON |
| 942350 | Torasémide | NON | OUI | NON |
| 956874 | Furosémide | NON | OUI | NON |


## Utilisation des Diurétiques - Épargneurs de potassium {#DPUse}

Identique à *définition de cohorte \@ref(ACEiUse)* avec *Diurétiques - épargneurs de potassium* (Tableau \@ref(tab:DPUseDPs)) à la place des *Inhibiteurs de l'ECA* (Tableau \@ref(tab:ACEiUseACE)).

#### Définitions des Ensembles de Concepts {-}

Table: (\#tab:DPUseDPs) Diurétiques - épargneurs de potassium

| Id du Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ------------- |:---------------| ------| ------------| ------|
| 904542 | Triamtérène | NON | OUI | NON |
| 991382 | Amiloride | NON | OUI | NON |


## Utilisation des Bloqueurs Alpha-1 {#A1BUse}

Identique à *définition de cohorte \@ref(ACEiUse)* avec *Bloqueurs Alpha-1* (Tableau \@ref(tab:A1BUseA1Bs)) à la place des *Inhibiteurs de l'ECA* (Tableau \@ref(tab:ACEiUseACE)).

#### Définitions des Ensembles de Concepts {-}

Table: (\#tab:A1BUseA1Bs) Bloqueurs Alpha-1

| Id du Concept | Nom du Concept | Exclu | Descendants | Mappé |
| ------------- |:---------------| ------| ------------| ------|
| 1341238 | Térasozine | NON | OUI | NON |
| 1350489 | Prazosine | NON | OUI | NON |
| 1363053 | Doxazosine | NON | OUI | NON |
