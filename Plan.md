# Context

Business and scientific contexte
Overall introduction
Overall presentation of the content

%% these dans un contexte metier et scientifique %%
%% Guide de lecture de la dissertation %%

# Introduction (20p)
%%L'environnement scientifique dans lequel ma these evolue%%
## Crisis management domain
- Qu'est qu'une crise? -> Patrick Lagadec, _La gestion des crises_, McGraw Hill, 1991
- Quelle sont ses principales caracteristiques
- Qu'est-ce que la gestion de crise
- Outils pour la gestion de crise : cas de la Common Operational Picture.
- AM — ouverture sur la COP avec les opportunités offertes par l'IA pour automatiser le cycle de vie la COP (sources de données extérieures)

## Social media domain
- Qu'est-ce qu'un média social ? Un réseau social ? -> Christian Fuchs, _Social Media a critical introduction_, Sage, 2013
- Viralité — empreinte digitale des médias sociaux
- Opportunités et dangers des médias sociaux pour la gestion de crise.
	- Dans l'introduction on a vu en quoi les médias sociaux sont utiles pour la gestion de crise
	- On a vu également quelles données sont disponibles
	- Manipulation des médias sociaux, fake news

%% A la fin on doit finir sur la question des donnees dont a besoin %%

## NLP domain
- Qu'est-ce que le NLP ? Principales tâches/objectifs du domaine.
- Traitement du langage naturel par un ordinateur -> D. Rao & B.McMhan, _Natural Language Processing with PyTorch_, O'Reilly, 2019
- Approches : règles, statistiques et apprentissage profond. Différences et critères d'application.
- Opportunités offertes par le NLP pour la gestion de crise -> A. Farzindar, D. Inkpen, _Natural Language Processing for Social Media_, Morgan&Claypool Publishers, 2015 
- NLP et médias sociaux : opportunités et spécificités

## Intersection of all
- Opportunities offered by NLP applied on social media data for crisis response.
- Mon sujet de thèse : Automatic implementation of crisis situation models using social media data.

## Consecutives challenges
- Crisis situation models from social media data? Which crisis situation models can we build using social media data?
- How do we automatically implement these crisis situation models?
- How do we automatically extract the information to implement these crisis situation models?

## The MACIV project
- Actors :
	- Ses partenaires académiques (+ présentation des personnes)
	- Ses partenaires institutionnels
	- Ses partenaires "supports" — VISOV, ATRISK, ?
- Origins of the project
	- Le constat qui a lancé le projet
	- La problématique auquel il cherche à répondre
- Rôle/objectif académique de Télécom ParisTech
- Rôle/objectif académique de IMT Mines Albi
	- Contribution de ma thèse dans le projet.

## Big picture of the problematic

# Literature review
%% 
Fil rouge de la LR : Pourquoi - Métier / Quoi / Comment - Technique
Tableau a double entree Metier/Techniques qui met en evidence le manque d'adequation pour repondre au quoi
La colonne metier est repondue a la fin du premier chapitre contribution . Mettre en avant ce manque dans ce chapitre et revenir a la fin du chapitre suivant pour completer le tableau
%%
The aim of the literature review is to high the gaps in the literature around my problematic.
It is organized in order to successively narrow the scientific challenges around the sub-problematics identified earlier.
1. What? Crisis situation models that we can implement using sociel media data
2. How? Existing systems to process social media data. Existing systems to implement crisis situation models using social media data
3. Why? What is the reason to implement these models in first place? What is the context in which these systems exist? Operators' needs of information and how do they fit in the picture?

%%## Role of social media in crisis situation models
- What is a model? How do we model? (probably going to be an appendix)
- Existing Crisis situation models 
- Crisis situation models that take into account the available data on socia media.

=> Point of view model ≠ user of such systems
-> Need to identify user's needs ("business problem")

## Systèmes d'implémentation de modèles de situation de crise
- Implémentation automatique de modèles de situation de crise 
- Design de la requête (automatic AND crisis (ontology OR model))
- Implémentation automatique de modèles de situation de crise à partir de données issues de medias sociaux
- Design de la requête (automatic AND crisis (ontology OR model) AND social media)

## Social media processing systems 
- Informations à l'échelle du message complet (métadonnées + texte)
- Informations à l'échelle du message textuel
- Informations à l'échelle des mots du message.

## Conclusion de la LR et manques identifiées
1. Pas ou peu d'analyse du besoin des personnes qui utilisent les médias sociaux en situation de crise. Des classifications à l'arrache, parce qu'elle me plaît, parce que j'ai envie, parce que mon voisin à dit c'est cool.
	-> Un modèle de situation de crise pour qui ? Pour quoi ?
2. Des tonnes d'architectures différentes, en fonction de comment le graduate a souhaité l'implémenter. Pas/peu de solution pour implémenter des données.
	-> MLOps appliquées à notre problématique + mon architecture HICSS
3. Beaucoup de travaux pour classifier des messages. Peu de travaux sur le traitement à l'échelle du mot.%%

%%
FB - Pas faire un etat de l'art pour faire un etat de l'art.
Faire un etat de l'art qui se justifie
%%

# Crisis situation models that serve social media operators.
%% Jonction entre le : "quel modele je peux constuire avec les donnees issues de medias sociaux" et "de quoi on besoin les gens qui utilisent les media sociaux en gestion de crise" %%
## Who process social media during crisis response?
- 911 calls takers, social media experts in the US (meetings with the operators of the call centers)
- Social media operators in France (MACIV exercices)

## Needs identified
### Situation awareness
- Situation awareness according to Endsley
- Situationa awareness adapted to NLP for crisis response

### Actionable information
- Jess Kropczynksi's interviews. 6W's
- Zahra's survey and interviews
- Others?

## Intersection with crisis situation models
- Intersection with the high level crisis situation models presented in the LR and the "feedbacks from the field".
- My article ISCRAM 2021 (for the need to ackownelge the users' needs in the design of social media processing systems) and HICSS 2021 (for the classification of information that we are looking at).

=> Classes that are relevant for the end users/classes we will search for.

### Conclusion
- We figured what information we were looking for. Now, how do we extract those information? How do we implement the associated classes of the metamodel?
- Update the table in the LR with the identified needs 

# Identification of relevant entities in social media data for crisis response : a semi-supervised approach

## Challenges that we face
- Why labelisation at the token level and not at the sentence?
- Why not use a deep neural network to do this?
	- Lack of a labeled data and this approach usually requires a lot of data.

## Scientific foundations of the approach.
- Overall view of the approach. What are we trying to do?
- Word vectors and language models (to represent semantic)
- Clustering algorithms to identify semantic clusters
- Curse of dimensionality and dimension reduction algorithms
- Label propagation 

## Application to token labelization in crisis response 
- Use case description
- Predicting labels of incoming messages
- Results
- Relevant metrics for our end goal

# System of processing systems: implementing crisis situation models using social media data
%%
## Theorique/scientifique - bonnes pratiques ML Ops
## "Metier" - Mon architecture et prise en compte de l'utilisateur
%%
- Social media are usefull for crisis response and what they have to offer.
-  Challenges that arise using them

## Social media processing systems
- Contraintes de la gestion de crise : résultats en quasi temps réel.
- Obtention des données : APIs publiques et leurs limites
- Flux et stockage des données : contraintes et risques associés

## Managing social media processing systems
- Difficultés opérationnelles du machine learning
- Contraintes liées à la particularité de la gestion de crise.

## Automatic implementation of a crisis situation model
- Lien entre les données labelisés et les 

%%Traitement, manipulation, stockage des données issues des médias sociaux pour la réponse à la crise.
Comment on créé un pipeline pour le NER semi-supervisé.
Crise = envrionnement changeant + incertain.
Datasets existants mais pas nécessairement avec les catégories que l'on veut.
On peut faire une approche supervisée classique 
=> Besoin d'une approche faiblement supervisée%%

# Conclusion