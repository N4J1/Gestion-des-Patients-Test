# Système de Gestion de la Yassine Clinic

Il s'agit d'une application web pour gérer les informations des patients et des médecins à la Clinique Yassine. Le système permet la création, la modification et la suppression des dossiers des patients, ainsi que la visualisation des détails des médecins en fonction des départements sélectionnés.

## Fonctionnalités

- **Gestion des Patients** : Créer, modifier et supprimer des dossiers de patients.
- **Tableau de Bord** : Vue d'ensemble du nombre total de patients, de médecins et de rendez-vous.
- **Design Réactif** : Construit avec AdminLTE pour une interface moderne et réactive.

## Technologies Utilisées

- **PHP** : Logique backend et traitement des données.
- **Smarty** : Moteur de templates pour PHP.
- **MySQL** : Base de données pour stocker les informations des patients et des médecins.
- **AdminLTE** : Framework frontend pour une interface moderne et réactive.
- **JavaScript** : Pour les mises à jour dynamiques du contenu et les requêtes AJAX.

## Architecture

J'ai utilisé le design pattern MVC pour ce projet, voici la structure de l'application :

- **src** : Contient le code source de l'application.
- **public** : Contient les fichiers statiques de l'application.
- **src/core** : Contient les classes de base de l'application (Router, Database, etc...).
- **src/views** : Contient les templates de l'application.
- **src/config** : Contient les fichiers de configuration de l'application.
- **src/controllers** : Contient les controllers de l'application.
- **src/models** : Contient les models de l'application.
- **public/index.php** : Contient les routes de l'application.


## Installation

1. **Cloner le dépôt** :
   ```bash
   git clone https://github.com/N4J1/Gestion-des-Patients-Test.git
   cd Gestion-des-Patients-Test
   ```

2. **Vous pouvez sauter les étapes suivantes si vous voulez utiliser la base de données par défaut, j'ai déjà créé une base de données dans le cloud et vous pouvez exécuter l'application sans aucune configuration** :
   ```bash
   php -S localhost:8080 -t public
   ```

3. **Configurer la base de données** :
   - Créez une base de données MySQL et importez le fichier `db.sql` pour configurer le schéma et les données de départ.

4. **Configurer la connexion à la base de données** :
   - Mettez à jour le fichier `src/config/config.php` avec vos identifiants de base de données.

5. **Exécuter l'application** :
   ```bash
   php -S localhost:8080 -t public
   ```

6. **Accéder à l'application** :
   - Ouvrez votre navigateur web et allez à `http://localhost:8080`.

## Utilisation

- **Tableau de Bord** : Voir une vue d'ensemble des patients et des médecins.
- **Patients** : Ajouter, modifier ou supprimer des dossiers de patients.



```

