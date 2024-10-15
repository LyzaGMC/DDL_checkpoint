-- Création de la table FOURNISSEUR
CREATE TABLE FOURNISSEUR (
    ID_FOURNISSEUR NUMBER PRIMARY KEY,
    NOM_FOURNISSEUR VARCHAR2(50) NOT NULL,
    ADRESSE VARCHAR2(100),
    TELEPHONE VARCHAR2(15)
);

-- Création de la table CATEGORIE
CREATE TABLE CATEGORIE (
    ID_CATEGORIE NUMBER PRIMARY KEY,
    NOM_CATEGORIE VARCHAR2(50) NOT NULL
);

-- Création de la table PRODUIT
CREATE TABLE PRODUIT (
    ID_PRODUIT NUMBER PRIMARY KEY,
    NOM_PRODUIT VARCHAR2(50) NOT NULL,
    PRIX NUMBER NOT NULL,
    ID_FOURNISSEUR NUMBER,
    ID_CATEGORIE NUMBER,
    FOREIGN KEY (ID_FOURNISSEUR) REFERENCES FOURNISSEUR(ID_FOURNISSEUR),
    FOREIGN KEY (ID_CATEGORIE) REFERENCES CATEGORIE(ID_CATEGORIE)
);

-- Création de la table CLIENT
CREATE TABLE CLIENT (
    ID_CLIENT NUMBER PRIMARY KEY,
    NOM_CLIENT VARCHAR2(50) NOT NULL,
    ADRESSE VARCHAR2(100),
    TELEPHONE VARCHAR2(15)
);

-- Création de la table COMMANDES
CREATE TABLE COMMANDES (
    ID_COMMANDE NUMBER PRIMARY KEY,
    ID_CLIENT NUMBER,
    DATE_COMMANDE DATE DEFAULT SYSDATE,
    FOREIGN KEY (ID_CLIENT) REFERENCES CLIENT(ID_CLIENT)
);
--Ajouter une colonne Catégorie (VARCHAR2(20)) à la table PRODUIT
ALTER TABLE PRODUIT ADD CATEGORIE VARCHAR2(20);
--Ajouter une colonne Date de commande (DATE) à la table COMMANDES avec SYSDATE comme valeur par défaut
ALTER TABLE COMMANDES ADD DATE_COMMANDE DATE DEFAULT SYSDATE;