-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 18-Jan-2019 às 10:31
-- Versão do servidor: 5.5.60-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `financeiro`
--
CREATE DATABASE IF NOT EXISTS `financeiro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `financeiro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `backup`
--

CREATE TABLE IF NOT EXISTS `backup` (
  `id` bigint(20) NOT NULL,
  `linha` int(11) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `abbrev_tipo` varchar(255) NOT NULL,
  `dia_x` varchar(255) NOT NULL,
  `mes_3` float NOT NULL,
  `mes_2` float NOT NULL,
  `mes_1` float NOT NULL,
  `validacao` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `mes` int(11) NOT NULL,
  `ano` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `planilha_consolidada`
--

CREATE TABLE IF NOT EXISTS `planilha_consolidada` (
  `id` bigint(20) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `externalizacao` varchar(10) NOT NULL,
  `diario1` float NOT NULL,
  `diario2` float NOT NULL,
  `diario3` float NOT NULL,
  `diario4` float NOT NULL,
  `diario5` float NOT NULL,
  `diario6` float NOT NULL,
  `semanal1` float NOT NULL,
  `semanal2` float NOT NULL,
  `semanal3` float NOT NULL,
  `semanal4` float NOT NULL,
  `mensal1` float NOT NULL,
  `mensal2` float NOT NULL,
  `mensal3` float NOT NULL,
  `anual1` float NOT NULL,
  `anual2` float NOT NULL,
  `anual3` float NOT NULL,
  `anual4` float NOT NULL,
  `anual5` float NOT NULL,
  `total` float NOT NULL,
  `replicacao` varchar(10) NOT NULL,
  `high_mes_atual` float NOT NULL,
  `medium_mes_atual` float NOT NULL,
  `priority` varchar(255) NOT NULL,
  `obs` text NOT NULL,
  `jobs` bigint(20) NOT NULL,
  `high_mes_anterior` float NOT NULL,
  `medium_mes_anterior` float NOT NULL,
  `diferenca_high` float NOT NULL,
  `diferenca_medium` float NOT NULL,
  `descricao_validacao` text NOT NULL,
  `mes` int(11) NOT NULL,
  `ano` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planilha_consolidada`
--
ALTER TABLE `planilha_consolidada`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `planilha_consolidada`
--
ALTER TABLE `planilha_consolidada`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
