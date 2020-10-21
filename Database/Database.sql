DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
);


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `categorie_name` varchar(255) NOT NULL,  
  PRIMARY KEY (`id_categorie`)
);

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id_article` int NOT NULL AUTO_INCREMENT,
  `article_name` varchar(255) NOT NULL,
  `article_content` TEXT NOT NULL,
  `id_categorie` int ,
  `id_user` int,    
  PRIMARY KEY (`id_article`),
  FOREIGN KEY(`id_categorie`) REFERENCES `categories`(`id_categorie`),
  FOREIGN KEY(`id_user`) REFERENCES `users`(`id_user`)
);