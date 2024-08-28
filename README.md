# BlogPHP-Stage2024 Prof waffo lele

## Description

BlogPHP-Stage2024 est une plateforme de blog développée en PHP permettant aux utilisateurs de créer des comptes, de publier des articles, de commenter sur les articles, et de gérer le contenu de manière interactive. Le blog inclut des fonctionnalités d'administration pour assurer une gestion efficace du contenu et des utilisateurs.

## Fonctionnalités

### 1. Gestion des utilisateurs
- **Inscription et Connexion:**
  - Les utilisateurs peuvent créer un compte en fournissant un nom d'utilisateur, une adresse e-mail, et un mot de passe.
  - Les utilisateurs peuvent se connecter en utilisant leur nom d'utilisateur et leur mot de passe.

- **Rôles d'utilisateur:**
  - Chaque utilisateur est assigné un rôle, soit "admin" (administrateur) soit "default" (utilisateur standard).
  - Les administrateurs ont des droits spéciaux, comme la gestion des articles et des commentaires d'autres utilisateurs.

### 2. Gestion des articles
- **Création et Publication d'Articles:**
  - Les utilisateurs peuvent rédiger et publier des articles de blog.
  - Chaque article contient un titre, un contenu complet, une image (si disponible), et une introduction.
  - Un "slug" est généré pour chaque article, qui est une version simplifiée du titre, souvent utilisée dans l'URL de l'article pour faciliter l'accès et le référencement.

- **Édition et Mise à jour:**
  - Les utilisateurs peuvent mettre à jour leurs articles. La base de données garde une trace de la date et l'heure des mises à jour.

- **Affichage des Articles:**
  - Les articles sont affichés avec leur titre, introduction, et image sur la page principale ou une page de catégorie.
  - Un clic sur un article mène à une page dédiée où le contenu complet de l'article est affiché.

### 3. Gestion des commentaires
- **Ajout de Commentaires:**
  - Les utilisateurs connectés peuvent commenter sur les articles publiés.
  - Chaque commentaire est associé à un utilisateur et à un article spécifique.

- **Affichage des Commentaires:**
  - Les commentaires sont affichés sous chaque article, permettant une discussion ou un retour d'expérience.

- **Modération des Commentaires:**
  - Les administrateurs peuvent modérer (ajouter, supprimer, ou éditer) les commentaires pour maintenir un environnement respectueux et pertinent.

### 4. Interactivité et Expérience Utilisateur
- **Navigation Améliorée:**
  - Le "slug" dans l'URL permet un accès facile aux articles via une structure d'URL lisible et SEO-friendly.

- **Gestion du Contenu:**
  - Le blog permet une gestion efficace du contenu avec des fonctionnalités d'édition et de mise à jour pour les articles, tout en gardant une trace des modifications.

- **Système de Commentaires:**
  - Les utilisateurs peuvent interagir avec les articles en laissant des commentaires, ce qui crée une communauté autour du contenu du blog.

### 5. Sécurité
- **Gestion des Mots de Passe:**
  - Les mots de passe des utilisateurs sont stockés de manière sécurisée (probablement hashés) pour protéger les informations sensibles.

- **Rôles et Permissions:**
  - Les rôles d'utilisateur permettent de contrôler qui peut faire quoi sur le blog, ajoutant une couche de sécurité et de gestion des droits.

