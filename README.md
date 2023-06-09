
# Service après-vente

Notre site a pour but la création d'un service après-vente destiné aux clients pour envoyer leur problème (ticket) et aux professionnels pour les régler. Plus que la gestion des tickets, il permet aux techniciens de gérer un maximum les tickets des clients en changeant leur statut (En attente, En cours, Terminé). Le site a une interface de connexion, permettant de gérer efficacement et simplement la connexion des clients en les ramenant dans une page où ils peuvent rentrer leur problème et des techniciens en les ramenant dans une page des gestions de tickets.



## Authors

- [Rayane JERBI](https://www.linkedin.com/in/rayane-jerbi/)



## Goal

Nous avons utilisé utilisé le PHP comme langagez de développement back-end et HTML/Bootstrap pour le front-end. Puis pour la gestion de donnée nous avons utilisé mysql afin de stocké tous les produits.


## Décomposition du projet
Notre projet se décompose en différentes parties :

La page de connexion, qui est permet de s’inscrire ou de se connecter ;
Une page pour les clients permettant de rentrer leurs problèmes ;
Une page pour les techniciens qui permet de gérer les tickets des clients, avec un administrateur qui a le pouvoir de les supprimer.
Dans la suite de ce document, chacune de ces différentes parties sera développée.

Les différentes pages du site
Ce projet a été entièrement constitué sur Visual Studio Code et contient 11 fichiers PHP.

## 1. La page de connexion


Cette page de connexion est constituée de 4 fichiers PHP :

Login.php qui est la page qui permet de se connecter, elle est reliée à auth.php qui authentifie qui est la personne qui se connecte c’est-à-dire un client, un technicien ou l’administrateur.
signup.php pour créer un compte pour les clients qui n’ont jamais accédé au site pour qu’ils rentrent leurs données afin de s’inscrire. Cette page est reliée à create_account.php qui permet de rentrer les données dans la base de données.
connection_db.php pour la connexion à la base de données.


## 2. La page de création de compte


Cette page de création de compte est constituée de 2 fichiers PHP :

signup.php qui permet de rentrer les données du client qui veut s’inscrire grâce à un formulaire. Celle-ci est reliée à create_account.php qui enregistre l’identifiant et le mot de passe dans la base de données ce qui permet la création d’un compte (un email ne peut appartenir qu’à un client sinon il est renvoyé dans la page de connexion).
connection_db.php pour la connexion à la base de données.

## 3. La page des clients

Cette page d’intervention est constituée de 2 fichiers PHP :

index.php qui est la page qui permet de rentrer les tickets des clients (leurs problèmes) et de l’envoyer aux techniciens, elle permet aussi de voir les tickets des clients et l’état des interventions.
logout.php qui permet de se déconnecter de la page et de retourner à la page de connexion.
connection_db.php pour la connexion à la base de données.

## 4. La page des techniciens

Cette page des techniciens est constituée de 4 fichiers PHP :

intervention.php qui affiche les tickets des clients et leur état ainsi que leur date de mise en ligne, elle est reliée à change_status.php qui permet de changer l’état du ticket (en cours, en attente, terminé).
delete_intervention.php qui sert à supprimer les tickets utilisables que par l’administrateur.