-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-01-2017 a las 06:44:04
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `doc_digitales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal_id` int(10) UNSIGNED NOT NULL,
  `nombre_empleado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `puesto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `sucursal_id`, `nombre_empleado`, `rfc`, `puesto`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mario Ruiz', 'rfc123w', '[editado]Desarrollador', '2016-12-21 08:00:00', '2016-12-22 08:41:12'),
(2, 1, 'Alonso Garcia', '123', 'oprador', '2016-12-22 05:22:33', '2016-12-22 05:22:33'),
(3, 1, 'Miguel', 'a', 'a', '2016-12-22 05:23:01', '2016-12-22 05:23:01'),
(4, 1, '', '', '', '2016-12-22 05:23:17', '2016-12-22 05:23:17'),
(5, 1, '', '', '', '2016-12-22 08:53:03', '2016-12-22 08:53:03'),
(6, 1, 'a', 'a', 'a', '2016-12-22 17:34:25', '2016-12-22 17:34:25'),
(7, 1, 'Jorge', '111', 'calidad', '2016-12-22 17:51:40', '2016-12-22 17:51:40'),
(8, 1, 'sss', 'ss', 'sss', '2016-12-22 17:55:07', '2016-12-22 17:55:07'),
(9, 1, 'Bubu', 'bubu123', 'Barrendero', '2016-12-22 18:26:41', '2016-12-22 18:26:41'),
(10, 1, 'Bubu2', 'ssss', '11', '2016-12-22 18:36:06', '2016-12-22 18:36:06'),
(11, 2, 'Bubu3', '1111', 'aaaa', '2016-12-22 18:36:47', '2016-12-22 18:36:47'),
(12, 4, 'Miguel-Winy', 'mm123', 'Guardiaa', '2016-12-22 19:04:51', '2016-12-22 19:07:55'),
(13, 4, 'Bayron', 'bb112', 'Perro', '2016-12-22 19:28:15', '2016-12-22 19:28:15'),
(16, 3, 'Blaky', 'aaaa', '123', '2016-12-22 19:49:47', '2016-12-22 19:49:47'),
(17, 5, 'Hola', 'test', 'test', '2016-12-22 19:54:07', '2016-12-22 19:54:07'),
(18, 5, 'yogi', 'yig23', 'Oso', '2016-12-22 20:02:50', '2016-12-22 20:02:50'),
(19, 3, 'yooo', 'yooo', 'yooo', '2016-12-22 20:11:04', '2016-12-22 20:11:04'),
(20, 6, 'carlos moya(editar)', 'dfkmfgkm6', 'operador(editdo)', '2016-12-24 12:15:25', '2016-12-24 12:19:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_21_174247_create_sucursal_table', 2),
(5, '2016_12_21_174346_create_employee_table', 3),
(7, '2016_12_21_183039_create_sucursal_company_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursals`
--

CREATE TABLE `sucursals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nombre_sucursal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_calle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_colonia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero_exterior` int(11) NOT NULL,
  `numero_interior` int(11) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sucursals`
--

INSERT INTO `sucursals` (`id`, `user_id`, `nombre_sucursal`, `nombre_calle`, `nombre_colonia`, `numero_exterior`, `numero_interior`, `codigo_postal`, `ciudad`, `pais`, `created_at`, `updated_at`) VALUES
(1, 1, 'Documentos digitales', '[edit]Alvaro Obregon', 'Primera seccion', 11, 11, 1234, 'Mexicali', 'Mexico', '2016-12-21 08:00:00', '2016-12-22 07:22:54'),
(2, 1, 'Documentos digitales prueba', 'Av reforma', 'primesa seccion', 22, 22, 22222, 'San Felipe', 'Mexico', '2016-12-22 07:24:25', '2016-12-22 07:24:25'),
(3, 2, 'Mexicali', 'a', 'a', 2, 2, 2, 'Los Angeles', 'USA', '2016-12-22 10:48:07', '2016-12-22 10:48:07'),
(4, 1, 'Documentos digitales test', 'Reforma', 'Valle dorado', 1111, 2, 12345, 'Tijuana', 'Mexico', '2016-12-22 19:04:11', '2016-12-22 19:04:11'),
(5, 3, 'Prueba', 'test', 'test2', 123, 123, 123, 'test3', 'test4', '2016-12-22 19:53:40', '2016-12-22 19:53:40'),
(6, 4, 'virreyes(editado)', 'sierra san luis', 'virreyes', 21290, 1201, 34545, 'mexicali', 'México', '2016-12-24 12:12:57', '2016-12-24 12:17:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `rfc`, `name_company`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mario Alonso Ruiz Garcia', 'sociolaborales@hotmail.com', NULL, NULL, '$2y$10$UQIgDqS.dylQFcb2qaQRkuM2L0Vj3xYkZbWEZj.D4oBe.6YkW9TM6', 'FzbaIOCs7zgwbtr57bYKzRf7U4daoN4Baau1P7pVlLOdiQFKXWCkRhbaDCcW', '2016-12-21 14:48:22', '2016-12-22 20:26:39'),
(2, 'Bayron Garcia', 'bayron@hotmail.com', NULL, NULL, '$2y$10$YHRWq/2d.R9y2AwIXqrDreLGBOa7bxCf3.Uu5tBnyUC4/iWXKTtw.', 'XTxub2ZrxbNumfPhUiEfKRtbFO1IkSEjRUFw2CHn3aGf3FEbfZFuTrUTX8QH', '2016-12-22 10:46:03', '2016-12-22 20:29:04'),
(3, 'Blaky', 'blaky@gmail.com', NULL, NULL, '$2y$10$6LbGf37/W64gDoliA5bZ3uoFyGAUK7I6TwnwDE3J9sjSjx7qv0qMK', 'lzAAFcyPTgM8nIev60K29nS4dp60t43kZMqHhZsUZyQ5s6yks7SIrZTdtNHT', '2016-12-22 19:52:45', '2016-12-22 20:25:45'),
(4, 'Alejandra', 'acocu_@hotmail.com', NULL, NULL, '$2y$10$9UChNdB8KL/9bICB9fvbXe7eHJ.DmrFHMB8OEiPSVm3341vCciL76', 'lpdNbUxf2RSn9cvNZRYEsw24d0zHNb4ntxJRVEHyTyqCaVYzNt9vrIO2JpBe', '2016-12-24 12:08:53', '2016-12-24 12:20:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleado_sucursal_id_index` (`sucursal_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `sucursals`
--
ALTER TABLE `sucursals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sucursal_company_user_id_index` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `sucursals`
--
ALTER TABLE `sucursals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
