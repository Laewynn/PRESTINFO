--
-- Base de données: `prestinfo`
--

-- --------------------------------------------------------
--
-- Structure de la table `categorie`
--
CREATE TABLE IF NOT EXISTS `categorie` (
  `matricule_categorie` varchar(2) NOT NULL,
  `libelle_categorie` varchar(10) DEFAULT NULL,
  `pu_km` double DEFAULT '0',
  `pu_repas` double DEFAULT '0',
  PRIMARY KEY (`matricule_categorie`)
);
-- --------------------------------------------------------
--
-- Structure de la table `emploi`
--
CREATE TABLE IF NOT EXISTS `emploi` (
  `matricule_emploi` varchar(5) NOT NULL,
  `libelle_emploi` varchar(40) DEFAULT NULL,
  `taux_horaire_base_emploi` double DEFAULT '0',
  `matricule_categorie` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`matricule_emploi`),
  KEY `{B5E955A7-7EFA-11D6-9ADE-968EBDAEDD25}` (`matricule_categorie`)
);

--
-- Contraintes pour la table `emploi`
--
ALTER TABLE `emploi`
  ADD CONSTRAINT `?B5E955A7?7EFA?11D6?9ADE?968EBDAEDD25?` FOREIGN KEY (`matricule_categorie`) REFERENCES `categorie` (`matricule_categorie`) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- --------------------------------------------------------
--
-- Structure de la table `profil`
--
CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(11) NOT NULL,
  `surnom_profil` varchar(10) DEFAULT NULL,
  `mdp_profil` varchar(50) DEFAULT NULL,
  `accreditation_profil` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_profil`),
  KEY `profil_salarie` (`id_profil`)
);

--
-- Contraintes pour la table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_salarie` FOREIGN KEY (`id_profil`) REFERENCES `salarie` (`id_salarie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- --------------------------------------------------------
--
-- Structure de la table `salarie`
--
CREATE TABLE IF NOT EXISTS `salarie` (
  `id_salarie` int(11) NOT NULL,
  `nom_salarie` varchar(20) DEFAULT NULL,
  `prenom_salarie` varchar(25) DEFAULT NULL,
  `rue_salarie` varchar(50) DEFAULT NULL,
  `codepostal_salarie` int(5) DEFAULT NULL,
  `ville_salarie` varchar(20) DEFAULT NULL,
  `matricule_emploi` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_salarie`),
  KEY `salarie_emploi` (`matricule_emploi`)
);

--
-- Contraintes pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD CONSTRAINT `salarie_emploi` FOREIGN KEY (`matricule_emploi`) REFERENCES `emploi` (`matricule_emploi`) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- --------------------------------------------------------
--
-- Structure de la table `semaine`
--

CREATE TABLE IF NOT EXISTS `semaine` (
  `num_semaine` varchar(2) NOT NULL,
  `libellemois_semaine` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`num_semaine`),
  KEY `nummois` (`libellemois_semaine`)
);


-- --------------------------------------------------------

--
-- Structure de la table `travailler`
--

CREATE TABLE IF NOT EXISTS `travailler` (
  `id_travailler` int(11) NOT NULL DEFAULT '0',
  `num_semaine_travailler` varchar(2) NOT NULL,
  `nbheures_travailler` smallint(6) DEFAULT '0',
  `nbh100_travailler` smallint(6) DEFAULT '0',
  `nbh125_travailler` smallint(6) DEFAULT '0',
  `nbh150_travailler` smallint(6) DEFAULT '0',
  `nbkm_travailler` int(11) DEFAULT NULL,
  `nbrepas_travailler` smallint(6) DEFAULT NULL,
  `salairebrutmensuel_travailler` float NOT NULL,
  `salairenetmensuel_travailler` float NOT NULL,
  `salairenethebdo_travailler` float NOT NULL,
  PRIMARY KEY (`id_travailler`,`num_semaine_travailler`),
  KEY `semaine_travailler` (`num_semaine_travailler`)
);

--
-- Contraintes pour la table `travailler`
--
ALTER TABLE `travailler`
  ADD CONSTRAINT `salarie_travailler` FOREIGN KEY (`id_travailler`) REFERENCES `salarie` (`id_salarie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `semaine_travailler` FOREIGN KEY (`num_semaine_travailler`) REFERENCES `semaine` (`num_semaine`) ON DELETE NO ACTION ON UPDATE NO ACTION;
