-- Creation de base de donnée
CREATE DATABASE biblioSchool;
USE biblioSchool;

-- Creation de la table des roles
CREATE TABLE roles(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50)
);

-- Creation de la table d'etat
CREATE TABLE etat(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20)
);

-- Creation de la table des categorie
CREATE TABLE categorie(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50)
);

-- Creation de la table des tags
CREATE TABLE tag(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20)
);

-- Creation de la table des livre
CREATE TABLE livre(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(150),
    auteur VARCHAR(30),
    date_creation DATE,
    prix DECIMAL(4,2),
    seriale VARCHAR(10),
    quantite INT DEFAULT(0),
    tag_id INT,
    categorie_id INT,
    CONSTRAINT FK_tagId FOREIGN KEY (tag_id) REFERENCES tag(id),
    CONSTRAINT FK_categorieId FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

-- Creation de la table des reservation
CREATE TABLE reservation(
	id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(10),
    date_debut DATE,
    date_fin DATE,
    livre_id INT,
    etat_id INT,
    CONSTRAINT FK_livreId FOREIGN KEY (livre_id) REFERENCES livre(id),
    CONSTRAINT FK_etatId FOREIGN KEY (etat_id) REFERENCES etat(id)
);

-- Creation de la table de l'utilisateur
CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(10),
    prenom VARCHAR(10),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(50) NOT NULL,
    role_id INT,
    reservation_id INT,
    CONSTRAINT FK_roleId FOREIGN KEY (role_id) REFERENCES roles(id),
    CONSTRAINT FK_reservationId FOREIGN KEY (reservation_id) REFERENCES reservation(id)
);