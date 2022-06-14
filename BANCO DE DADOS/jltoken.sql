-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2019 às 08:10
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jltoken`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `calls`
--

CREATE TABLE `calls` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `counter_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `called_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `calls`
--

INSERT INTO `calls` (`id`, `queue_id`, `department_id`, `counter_id`, `user_id`, `number`, `called_date`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 1, 1, '2019-08-18', '2019-08-18 15:44:57', '2019-08-18 15:44:57'),
(2, 2, 2, 1, 1, 2, '2019-08-18', '2019-08-18 15:53:26', '2019-08-18 15:53:26'),
(3, 4, 2, 1, 1, 3, '2019-08-18', '2019-08-18 15:53:33', '2019-08-18 15:53:33'),
(4, 5, 2, 2, 1, 4, '2019-08-18', '2019-08-18 16:16:29', '2019-08-18 16:16:29'),
(5, 6, 1, 3, 1, 2, '2019-08-18', '2019-08-18 16:26:43', '2019-08-18 16:26:43'),
(6, 7, 1, 3, 1, 3, '2019-08-18', '2019-08-18 16:32:33', '2019-08-18 16:32:33'),
(7, 1, 3, 1, 1, 3, '2019-08-18', '2019-08-18 17:10:24', '2019-08-18 17:10:24'),
(8, 8, 3, 1, 1, 4, '2019-08-18', '2019-08-18 17:10:52', '2019-08-18 17:10:52'),
(9, 9, 1, 2, 1, 4, '2019-08-18', '2019-08-18 17:14:25', '2019-08-18 17:14:25'),
(10, 10, 1, 3, 1, 5, '2019-08-18', '2019-08-18 17:15:43', '2019-08-18 17:15:43'),
(11, 11, 2, 3, 1, 5, '2019-08-18', '2019-08-18 17:17:59', '2019-08-18 17:17:59'),
(12, 12, 1, 1, 2, 6, '2019-08-18', '2019-08-18 17:33:10', '2019-08-18 17:33:10'),
(13, 13, 1, 1, 2, 7, '2019-08-18', '2019-08-19 01:13:40', '2019-08-19 01:13:40'),
(14, 14, 1, 3, 2, 8, '2019-08-18', '2019-08-19 01:17:27', '2019-08-19 01:17:27'),
(15, 15, 3, 4, 2, 5, '2019-08-18', '2019-08-19 01:18:03', '2019-08-19 01:18:03'),
(16, 16, 1, 4, 2, 9, '2019-08-18', '2019-08-19 01:19:05', '2019-08-19 01:19:05'),
(17, 17, 2, 1, 1, 6, '2019-08-18', '2019-08-19 01:22:38', '2019-08-19 01:22:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `counters`
--

CREATE TABLE `counters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `counters`
--

INSERT INTO `counters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GUICHÊ 01', '2019-08-18 15:42:52', '2019-08-19 01:15:01'),
(2, 'GUICHÊ 02', '2019-08-18 15:43:00', '2019-08-19 01:15:08'),
(3, 'GUICHÊ 03', '2019-08-18 15:43:08', '2019-08-19 01:15:14'),
(4, 'CAIXA 01', '2019-08-19 01:16:12', '2019-08-19 01:16:12'),
(5, 'CAIXA 02', '2019-08-19 01:16:19', '2019-08-19 01:16:19'),
(6, 'CAIXA 03', '2019-08-19 01:16:27', '2019-08-19 01:16:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `departments`
--

INSERT INTO `departments` (`id`, `name`, `letter`, `start`, `created_at`, `updated_at`) VALUES
(1, 'Atendimento', 'A', 0, '2019-08-18 15:42:15', '2019-08-18 17:07:10'),
(2, 'Caixa', 'B', 2, '2019-08-18 15:42:25', '2019-08-18 17:07:32'),
(3, 'Preferencial', 'C', 3, '2019-08-18 15:42:39', '2019-08-18 17:07:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `display`, `image`, `created_at`, `updated_at`) VALUES
(1, 'gb', 'English', 'UK English Female', 'United-Kingdom.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(2, 'tr', 'Turkish', 'Turkish Female', 'Turkey.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(3, 'de', 'German', 'Deutsch Female', 'Germany.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(4, 'es', 'Spanish', 'Spanish Female', 'Spain.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(5, 'fr', 'French', 'French Female', 'France.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(6, 'in', 'Hindi', 'Hindi Female', 'India.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(7, 'it', 'Italian', 'Italian Female', 'Italy.png', '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(8, 'pt', 'Portuguese', 'Portuguese Female', 'Portugal.png', '2019-08-18 15:39:56', '2019-08-18 15:39:56'),
(9, 'ru', 'Russian', 'Russian Female', 'Russia.png', '2019-08-18 15:39:56', '2019-08-18 15:39:56'),
(10, 'sa', 'Arabic', 'Arabic Male', 'Saudi-Arabia.png', '2019-08-18 15:39:56', '2019-08-18 15:39:56'),
(11, 'sk', 'Slovak', 'Slovak Female', 'Slovakia.png', '2019-08-18 15:39:56', '2019-08-18 15:39:56'),
(12, 'th', 'Thai', 'Thai Female', 'Thailand.png', '2019-08-18 15:39:56', '2019-08-18 15:39:56'),
(13, 'id', 'Indonesian', 'Indonesian Female', 'Indonesia.png', '2019-08-18 15:39:56', '2019-08-18 15:39:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_07_16_161740_create_departments_table', 1),
(4, '2016_07_16_180929_create_counters_table', 1),
(5, '2016_07_16_190715_create_queues_table', 1),
(6, '2016_07_19_170334_create_calls_table', 1),
(7, '2016_08_24_231859_create_languages_table', 1),
(8, '2016_09_28_123908_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `queues`
--

CREATE TABLE `queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `called` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `queues`
--

INSERT INTO `queues` (`id`, `department_id`, `number`, `called`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 1, '2019-08-18 15:43:52', '2019-08-18 17:10:24'),
(2, 2, 2, 1, '2019-08-18 15:44:00', '2019-08-18 15:53:26'),
(3, 1, 1, 1, '2019-08-18 15:44:04', '2019-08-18 15:44:57'),
(4, 2, 3, 1, '2019-08-18 15:45:14', '2019-08-18 15:53:33'),
(5, 2, 4, 1, '2019-08-18 15:51:43', '2019-08-18 16:16:29'),
(6, 1, 2, 1, '2019-08-18 16:26:30', '2019-08-18 16:26:43'),
(7, 1, 3, 1, '2019-08-18 16:32:01', '2019-08-18 16:32:33'),
(8, 3, 4, 1, '2019-08-18 17:09:38', '2019-08-18 17:10:52'),
(9, 1, 4, 1, '2019-08-18 17:14:12', '2019-08-18 17:14:25'),
(10, 1, 5, 1, '2019-08-18 17:15:06', '2019-08-18 17:15:43'),
(11, 2, 5, 1, '2019-08-18 17:15:11', '2019-08-18 17:17:59'),
(12, 1, 6, 1, '2019-08-18 17:32:45', '2019-08-18 17:33:10'),
(13, 1, 7, 1, '2019-08-19 01:13:21', '2019-08-19 01:13:40'),
(14, 1, 8, 1, '2019-08-19 01:17:13', '2019-08-19 01:17:27'),
(15, 3, 5, 1, '2019-08-19 01:17:52', '2019-08-19 01:18:03'),
(16, 1, 9, 1, '2019-08-19 01:18:56', '2019-08-19 01:19:05'),
(17, 2, 6, 1, '2019-08-19 01:22:28', '2019-08-19 01:22:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification` text COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `over_time` int(11) NOT NULL,
  `missed_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `name`, `bus_no`, `address`, `email`, `phone`, `location`, `notification`, `size`, `color`, `logo`, `over_time`, `missed_time`, `created_at`, `updated_at`) VALUES
(1, 8, '\"Nome de Sua Empresa aqui\"', '', '', 'company_email@example.com', '', '', '', 35, '#f7184e', '', 20, 20, '2019-08-18 15:39:56', '2019-08-18 17:32:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'your_email@rxample.com', 'A', '$2y$10$8wZOc4IvlUy/jjwwXu6F2e95F9D5g.YgW/ADfW7Fpir5VvVcOBjPO', NULL, '2019-08-18 15:39:55', '2019-08-18 15:39:55'),
(2, 'GUICHE01', 'GUICHE01', 'guiche2@teste.com', 'S', '$2y$10$Y9INYk/UAput9BudyOz8cOLqvLX8uC.1kiAjAM7dRScI486W1POXq', 'wNJDc6MPqJO9YVkofesK0lqt1m4nMaApussEhSJdlPixCVkBhmey32s4t7Mz', '2019-08-18 17:19:34', '2019-08-18 17:45:06'),
(3, 'GUICHE02', 'GUICHE02', 'GUICHE02@EMAIL.COM', 'S', '$2y$10$4m4hDvpYTCg3qQ0zRzYvCeIWseYGoNMC1YcK.yQrHShxMlFtUCtpq', 'XBPSgrcmvhx0rffXU62BINEmXwYvKw3DZAEQw9m9RUn4x8FAe8dYbCu2mL1D', '2019-08-18 17:20:07', '2019-08-18 17:46:05'),
(4, 'GUICHE03', 'GUICHE03', 'GUICHE03@EMAIL.COM', 'S', '$2y$10$lNclSbHlVEmsYsqEntppbeggj4j4k7yz7iQH1tAQjqz9nYMxMQD9y', NULL, '2019-08-18 17:20:32', '2019-08-18 17:45:20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_queue_id_foreign` (`queue_id`),
  ADD KEY `calls_department_id_foreign` (`department_id`),
  ADD KEY `calls_counter_id_foreign` (`counter_id`),
  ADD KEY `calls_user_id_foreign` (`user_id`);

--
-- Índices para tabela `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Índices para tabela `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queues_department_id_foreign` (`department_id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_language_id_foreign` (`language_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `queues`
--
ALTER TABLE `queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`),
  ADD CONSTRAINT `calls_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `calls_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`),
  ADD CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `queues_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Limitadores para a tabela `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
