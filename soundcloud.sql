-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 27 Avril 2020 à 16:14
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `soundcloud`
--

-- --------------------------------------------------------

--
-- Structure de la table `chanson`
--

CREATE TABLE `chanson` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chansons`
--

CREATE TABLE `chansons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `chansons`
--

INSERT INTO `chansons` (`id`, `url`, `url_img`, `nom`, `style`, `user_id`, `created_at`, `updated_at`) VALUES
(17, '/uploads/1/o5lHATEr3fIJgDvs4iqmFwagCVWBzfP0YmMjOHBZ.mpga', '/uploads/1/04dIjVFpDiOa7GMiP5yoLvCGbkG5FSU5JmzYQcnG.jpeg', 'Meleğim', 'Hip-hop / Rap', 1, '2020-04-21 13:47:31', '2020-04-21 13:47:31'),
(18, '/uploads/1/SoUm50Tr3bN9tuipX0lCJ5X9m4cZPT5hIVDWvsUc.mpga', '/uploads/1/KCGYrwc8cTQ1GQ3jgVwcLCJZJXY8UwkxyKlbIe8t.jpeg', '21h30', 'Rap', 1, '2020-04-21 14:02:42', '2020-04-21 14:02:42'),
(20, '/uploads/1/bv7Mj0ZxptYlG8GNszIR9baRDGEwlo3yEJ6NP7ew.mpga', '/uploads/1/SRaFO8vyIS35BiMsCjZUR7D8RMDVyeL3ESeBeIGB.jpeg', 'Ça fait des années', 'Rap', 1, '2020-04-21 14:07:02', '2020-04-21 14:07:02'),
(21, '/uploads/1/86i0sL3zRFSAjOe1fgTFoaKzH4HHhYUwhr3avX47.mpga', '/uploads/1/7topI6erjQMITK7KriMTBePzMWhT7iFXfkyDgdTO.jpeg', 'Macarena', 'Hip-hop / Rap', 1, '2020-04-21 14:09:07', '2020-04-21 14:09:07'),
(22, '/uploads/1/MRhIB6EStsGqzhJ7QbrJ61CP9TYVWHM8cz360s62.mpga', '/uploads/1/ETgTKUmutydecgNPL7g1jAJm1TtdeuhqcQ4fBwKE.jpeg', 'Ninja', 'Hip-hop / Rap', 1, '2020-04-21 14:10:05', '2020-04-21 14:10:05'),
(23, '/uploads/1/YpSkRFtY9H30NxbjeM9VsEVF5lpfpX9djdmJPhua.mpga', '/uploads/1/CAiMfQz7jDrVl3WyBJChk5wkgytSvWYSIxVeyjEW.jpeg', 'Sunset Lover', 'Electronica, Tropical house, Dance/Électronique', 1, '2020-04-21 14:11:01', '2020-04-21 14:11:01'),
(24, '/uploads/1/F5eGnTnnPNL7Nk0JFSmxAedxg4xKDvDoYeulX8Sv.mpga', '/uploads/1/jj8CPQc7NVxxFJtkgIgetMfoFCmDqXoTmtqUSNVJ.jpeg', 'Pas beaux', 'Pop', 1, '2020-04-21 14:14:53', '2020-04-21 14:14:53'),
(25, '/uploads/1/t8VKbQW3w8R4AaeVGGN1BJxE5GkzCdWx7Lh3PAV4.mpga', '/uploads/1/Odrfu1JtBkiiSHalHBM9lGzyclYyMaDPFVjvFxJ8.jpeg', 'Musica', 'Hip-Hop / Rap', 1, '2020-04-21 14:15:48', '2020-04-21 14:15:48');

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suiveur_id` bigint(20) NOT NULL,
  `suivi_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `connexion`
--

INSERT INTO `connexion` (`id`, `suiveur_id`, `suivi_id`, `created_at`, `updated_at`) VALUES
(10, 3, 1, NULL, NULL),
(11, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contenuplaylist`
--

CREATE TABLE `contenuplaylist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playlist_id` bigint(20) NOT NULL,
  `chanson_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `contenuplaylist`
--

INSERT INTO `contenuplaylist` (`id`, `playlist_id`, `chanson_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, NULL, NULL),
(11, 4, 8, NULL, NULL),
(14, 4, 10, NULL, NULL),
(18, 4, 2, NULL, NULL),
(22, 3, 1, NULL, NULL),
(23, 7, 4, NULL, NULL),
(24, 9, 5, NULL, NULL),
(25, 10, 7, NULL, NULL),
(28, 3, 7, NULL, NULL),
(29, 11, 22, NULL, NULL),
(30, 11, 25, NULL, NULL),
(32, 18, 18, NULL, NULL),
(33, 11, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `like`
--

CREATE TABLE `like` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `chanson_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `like`
--

INSERT INTO `like` (`id`, `user_id`, `chanson_id`, `created_at`, `updated_at`) VALUES
(28, 3, 18, NULL, NULL),
(29, 3, 17, NULL, NULL),
(30, 3, 21, NULL, NULL),
(31, 3, 20, NULL, NULL),
(33, 1, 22, NULL, NULL),
(34, 1, 20, NULL, NULL),
(38, 1, 18, NULL, NULL),
(41, 1, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2020_01_15_152516_create_chanson_table', 2),
(14, '2020_02_11_131857_create_connexion_table', 2),
(15, '2020_03_19_161514_create_like_table', 2),
(16, '2020_03_26_082436_create_playlist_table', 3),
(17, '2020_03_26_094624_create_contenuplaylist_table', 4),
(18, '2020_03_29_164620_ajouter_avatar_aux_utilisateurs', 5),
(19, '2020_03_29_165105_ajouter_url_avatar_aux_utilisateurs', 6);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `playlist`
--

CREATE TABLE `playlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `playlist`
--

INSERT INTO `playlist` (`id`, `nom`, `url_image`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Hip-hop', '/uploads/1/eml1TKdVtvFNe1Vnfbdo8mE9m2TDWdtMukqM1biu.jpeg', 1, '2020-04-21 14:17:25', '2020-04-21 14:17:25'),
(18, 'Rap', '/uploads/1/cev7pi2xxAilrybYiCRh1uXsL1tjnAhregj8lb2r.jpeg', 1, '2020-04-21 14:24:01', '2020-04-21 14:24:01');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/img/default.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `url_avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Florian', 'florianlaignez@gmail.com', NULL, '$2y$10$ZDyBW3HqlAh5SGLxX3i15.e9xqGQI3X6E.XW4vP1K8Kug39Wrouu2', '/uploads/1/UTxsERwI746lBZ1bshb5mSiXruj8eWcyRinmIePU.jpeg', 'pLSi14ru6x49w6cHSC13ld2AQ9NvGYgSaiPgj8d6Rbgv7Hw2DHVMcgZCb5Is', '2020-03-20 17:30:52', '2020-04-21 13:09:34'),
(2, 'Toto', 'toto@toto.fr', NULL, 'toto', '/img/default.jpg', NULL, NULL, NULL),
(3, 'Olivier', 'olivier@gmail.com', NULL, '$2y$10$cz6ZFvKoXokllB7p/uExDewoaDa2/3kKqJD8d.zD7sRQmTi6NaEo2', '/img/default.jpg', NULL, '2020-04-21 14:26:30', '2020-04-21 14:26:30');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chanson`
--
ALTER TABLE `chanson`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chansons`
--
ALTER TABLE `chansons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenuplaylist`
--
ALTER TABLE `contenuplaylist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chanson`
--
ALTER TABLE `chanson`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `chansons`
--
ALTER TABLE `chansons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `contenuplaylist`
--
ALTER TABLE `contenuplaylist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `like`
--
ALTER TABLE `like`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
