-- Création de la base de données
CREATE DATABASE blogphp_stage2024;
USE blogphp_stage2024;

-- Table des utilisateurs
CREATE TABLE users (
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'default') NOT NULL DEFAULT 'default',
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Table des articles
CREATE TABLE articles (
    id INT(11) NOT NULL AUTO_INCREMENT,
    aimage VARCHAR(1000) DEFAULT NULL,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL UNIQUE,
    introduction TEXT,
    content TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Table des commentaires
CREATE TABLE comments (
    id INT(11) NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    article_id INT(11) NOT NULL,
    user_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (article_id) REFERENCES articles(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Index pour améliorer les performances
CREATE INDEX idx_article_id ON comments(article_id);
CREATE INDEX idx_user_id ON comments(user_id);

