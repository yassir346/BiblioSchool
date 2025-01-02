Contexte du projet
Dans ce projet, l'objectif est de développer une application web permettant de gérer une bibliothèque scolaire, incluant un système de réservation de livres. L'application sera construite en PHP 8 orienté objet (POO), avec une connexion à une base de données MySQL via PDO.

​

Le projet consiste à créer une application web avec les fonctionnalités suivantes :

​

Système d'authentification sécurisé :

​

Connexion avec sessions et cookies.
Déconnexion sécurisée.
​

Gestion multi-rôles :

​

Rôles : Administrateur, Gérant, Apprenant.
L’administrateur peut gérer les utilisateurs (création, suppression, modification de rôles).
Le gérant peut gérer les livres et valider les réservations.
Les apprenants peuvent réserver des livres, consulter leurs réservations, et les annuler.
​

Gestion des livres :

​

Ajout, modification, suppression des livres.
Les livres peuvent être associés à des tags (mots-clés) et des catégories pour faciliter leur recherche.
Affichage de la liste des livres disponibles.
​

Réservation des livres :

​

Les apprenants peuvent réserver des livres en ligne, à partir d’une liste.
Les réservations ont un état :
Pending : Réservation en attente de validation par le gérant.
Confirmé : Réservation approuvée et en cours.
Terminé : Réservation terminée après retour du livre.
Les gérants peuvent valider ou rejeter les réservations.
​

Archivage des livres réservés :

​

Les livres réservés doivent être archivés après la fin de la période de réservation.
​

Gestion des utilisateurs et des rôles :

​

L’administrateur peut ajouter, modifier et supprimer les rôles des utilisateurs.
Chaque utilisateur se voit attribuer un rôle avec des droits spécifiques.
​

Diagramme de cas d’utilisation :

​

Identifiez les acteurs principaux : Administrateur, Gérant, Apprenant.
Décrivez les interactions entre les acteurs et le système, notamment pour :
La gestion des utilisateurs.
La gestion des livres.
Le processus de réservation.
​

Diagramme de classes :

​

Modélisez les principales entités du système avec leurs attributs et méthodes.
Incluez les relations entre classes (associations, agrégations, compositions) telles que :
Classe Utilisateur (avec ses rôles).
Classe Livre (avec tags et catégories).
Classe Réservation (avec états).
