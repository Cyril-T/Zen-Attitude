# Zen-Attitude
Projet de création du site internet de l’Aïkido club de Bourg-en-Bresse. Le site actuellement en production est consultable à l’adresse suivante : http://217.70.191.170/.

## Description

Le projet a été réalisé en équipe de 4 personnes, avec une gestion de projet (méthode scrum) adapté au délai serré (sprint d’une semaine / Trello utilisé pour centraliser et attribuer les tâches).  
De plus, un point quotidien selon avancement pouvait être réalisé afin de présenter son travail. Ceci a permis de monter rapidement en compétence et de maitriser également le travail des autres membres du groupe. Ainsi, chaque membre du projet a acquis la maitrise de l’ensemble du travail réalisé.

Utilisation du framework Symfony et Doctrine pour la gestion des données, Bootstrap pour l’intégration ainsi que Javascript et certains plugins jQuery, et Ajax pour la connexion à l'API qui recense tous les stages nationaux d'Aïkido. Le projet a donc été construit suivant le design pattern MVC.  

Le site prévoit une fonction de co-voiturage interne entre les membres.
Différents accès sont délivrés selon l’utilisateur (visiteur, membre, professeur et administrateur) avec des fonctionnalités différentes :  
- Une partie accessible à tous les visiteurs contenant :
    - Une page d'en-tête accrocheuse et un menu permettant d'accéder aux infos importantes et à la présentation de la discipline (Tarifs, horaires des cours, fiche d'inscription au club...)
    - Une page sur les stages club et autres (reliée à une API => https://api.stages-aikido.fr/)
    - La possibilité de se connecter au site
- Une fois connecté en tant que membre :
    - Accés aux rubriques internes du club (photos/vidéos des cours et des stages...)
    - Une partie User avec une fiche personnelle permettant de voir sa progression et les axes de travail conseillés
    - Mise en place de co-voiturage pour les stages éloignés
- Une fois connecté en tant que professeur :
    - Un accès aux fiches personnelles des membres pour la gestion de la fiche de progression
- Une fois connecté en tant qu'Admin :
    - Une interface back optimale pour la gestion du site par des non Dev (changement ou ajout de photo/ vidéos, modification ou création d'articles, de news...)