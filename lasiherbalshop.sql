CREATE DATABASE lasiherbalshop;

USE lasiherbalshop;


CREATE TABLE products(
    productsid  int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productname int NOT NULL,
    productage DATE NOT NULL
);


CREATE TABLE herbaldrugs(
    herbaldrugid int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productsid int NOT NULL,
    onStock int NOT NULL,
    mfgDate DATE NOT NULL,
    expDate DATE NOT NULL,
    FOREIGN KEY (productsid) REFERENCES products(productsid)
);


CREATE TABLE provisions(
    provisionsid int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productsid int NOT NULL,
    onStock int NOT NULL,
    mfgDate DATE NOT NULL,
    expDate DATE NOT NULL,
    FOREIGN KEY (productsid) REFERENCES products(productsid)
);


CREATE TABLE purchaseOrder(
    purchaseid int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    purchaseDate DATE NOT NULL,
    productType VARCHAR(255) NOT NULL,
    productname VARCHAR(255) NOT NULL,
    productsid int NOT NULL,
    FOREIGN KEY (productsid) REFERENCES products(productsid)
);



ALTER TABLE products ADD COLUMN inStock int NOT NULL;
ALTER TABLE herbaldrugs DROP COLUMN onStock;
ALTER TABLE provisions DROP COLUMN onStock;




