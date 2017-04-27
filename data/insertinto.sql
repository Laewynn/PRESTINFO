-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Lun 04 Mai 2015 à 10:33
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `prestinfo`
--

-- --------------------------------------------------------

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`matricule_categorie`, `libelle_categorie`, `pu_km`, `pu_repas`) VALUES
('CA', 'cadre', 0.1, 30),
('NC', 'non cadre', 0.05, 12);

-- --------------------------------------------------------
--
-- Contenu de la table `emploi`
--

INSERT INTO `emploi` (`matricule_emploi`, `libelle_emploi`, `taux_horaire_base_emploi`, `matricule_categorie`) VALUES
('ADMBD', 'Administrateur de bases de données', 32, 'CA'),
('ADMRE', 'Administrateur réseau', 45, 'CA'),
('ANPRO', 'Analyste programmeur', 20, 'NC'),
('COMPT', 'Comptable', 40, 'CA'),
('DRGNT', 'Dirigent', 50, 'CA'),
('FORMA', 'Formateur bureautique', 15, 'NC'),
('INGSY', 'Ingénieur système', 43, 'CA');

-- --------------------------------------------------------
--
-- Contenu de la table `profil`
--

INSERT INTO `profil` (`id_profil`,`surnom_profil`, `mdp_profil`, `accreditation_profil`) VALUES
(10,'durand', '8fe3b459953e19f902505ea92e5113e078448669', 'Admin'),
(9,'genial', '060e5a621450024136177302e800aee23a931d0f', 'Admin'),
(3,'lily', 'fddbe01857e2d3ab505bfc1dac3b38a2c8b8cd65', 'User'),
(2,'papin', '63b395adf1ee35d0378b0a76887c8f88b1d7f503', 'User'),
(4,'paulot', '126d332e5b9aaa3e028d1d08024a5c976bca4840', 'User'),
(1,'pitt', '81c955fef0307edddc005a022bda210169ad7500', 'User'),
(6,'polux', '01ef81866baae4014544aa76e21efa9a09eedf1a', 'User'),
(7,'renaud', '81ef2ef7cd3a859923573a7bb84652871c617f7d', 'User'),
(5,'rigou', 'db18e4d4d69ca777244c0b358a8103017d76961e', 'User'),
(8,'varin', '7f2fc5ea6f901f633f1ac655f3ddd7eb45282678', 'User');

-- --------------------------------------------------------
--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`id_salarie`, `nom_salarie`, `prenom_salarie`, `codepostal_salarie`, `rue_salarie`, `ville_salarie`, `matricule_emploi`) VALUES
(1, 'PITT', 'Brad', '123 rue d''amiens', '35000', 'RENNES', 'ADMRE'),
(2, 'PAPIN', 'Roger', '44 rue nationale', '35000', 'RENNES', 'INGSY'),
(3, 'VARIN', 'Elise', '51 rue des fleurs', '35000', 'RENNES', 'FORMA'),
(4, 'LILY', 'Bertrand', '55 avenue des postes','35400', 'BETTON', 'ANPRO'),
(5, 'PAULOT', 'Luc', '78 rue de l''europe', '35000', 'RENNES', 'ANPRO'),
(6, 'RIGOU', 'Sébastien', '33 rue des postes', '35300','ACIGNE', 'ANPRO'),
(7, 'POLUX', 'Guy', '54 rue des champs', '35000', 'RENNES', 'ADMBD'),
(8, 'RENAUD', 'Julien', '125 rue des stations', '35000', 'RENNES', 'ADMRE'),
(9, 'GENIAL', 'Antoine', '42 rue de l''odyssee', '35000', 'RENNES', 'DRGNT'),
(10, 'DURAND', 'Michel', '66 rue de l''opera', '35000','RENNES', 'COMPT');

-- --------------------------------------------------------
--
-- Contenu de la table `semaine`
--

INSERT INTO `semaine` (`num_semaine`, `libellemois_semaine`) VALUES
('29', 'Aout'),
('30', 'Aout'),
('31', 'Aout'),
('32', 'Aout'),
('13', 'Avril'),
('14', 'Avril'),
('15', 'Avril'),
('16', 'Avril'),
('45', 'Decembre'),
('46', 'Decembre'),
('47', 'Decembre'),
('48', 'Decembre'),
('05', 'Fevrier'),
('06', 'Fevrier'),
('07', 'Fevrier'),
('08', 'Fevrier'),
('01', 'Janvier'),
('02', 'Janvier'),
('03', 'Janvier'),
('04', 'Janvier'),
('25', 'Juillet'),
('26', 'Juillet'),
('27', 'Juillet'),
('28', 'Juillet'),
('21', 'Juin'),
('22', 'Juin'),
('23', 'Juin'),
('24', 'Juin'),
('17', 'Mai'),
('18', 'Mai'),
('19', 'Mai'),
('20', 'Mai'),
('09', 'Mars'),
('10', 'Mars'),
('11', 'Mars'),
('12', 'Mars'),
('41', 'Novembre'),
('42', 'Novembre'),
('43', 'Novembre'),
('44', 'Novembre'),
('37', 'Octobre'),
('38', 'Octobre'),
('39', 'Octobre'),
('40', 'Octobre'),
('33', 'Septembre'),
('34', 'Septembre'),
('35', 'Septembre'),
('36', 'Septembre');

-- --------------------------------------------------------
--
-- Contenu de la table `travailler`
--

INSERT INTO `travailler` (`id_travailler`, `num_semaine_travailler`, `nbheures_travailler`, `nbh100_travailler`, `nbh125_travailler`, `nbh150_travailler`, `nbkm_travailler`, `nbrepas_travailler`, `salairebrutmensuel_travailler`, `salairenetmensuel_travailler`, `salairenethebdo_travailler`) VALUES
(1, '01', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '02', 39, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '03', 36, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '04', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '05', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '06', 37, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '07', 41, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, '08', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '01', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '02', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '03', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '04', 38, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '05', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '06', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '07', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '08', 44, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '01', 41, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '02', 38, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '03', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '04', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '05', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '06', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '07', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, '08', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '01', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '02', 40, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '03', 44, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '04', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '05', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '06', 44, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '07', 38, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, '08', 37, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '01', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '02', 46, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '03', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '04', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '05', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '06', 46, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '07', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '08', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '01', 43, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '02', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '03', 44, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '04', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '05', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '06', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '07', 39, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, '08', 40, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(7, '01', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(7, '02', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(7, '03', 35, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);
