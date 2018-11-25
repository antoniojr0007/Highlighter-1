-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Nov-2018 às 04:06
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accounts`
--

CREATE TABLE `accounts` (
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `hierarquia` set('B','P','O') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `IdUsuario` int(10) NOT NULL,
  `Nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Telefone` int(12) NOT NULL,
  `Usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Senha` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Cargo` set('A','B') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`IdUsuario`, `Nome`, `Email`, `Telefone`, `Usuario`, `Senha`, `Cargo`) VALUES
(1, 'nmbjk', 'jhjh', 4545, ' khgkjh ', ' 123', 'A'),
(2, 'jhgjhg', 'hghgh', 32325, ' hghg ', ' 123', 'A'),
(3, 'bjhhgjgjhg', 'kjgjfjgfghfh', 15645454, ' hgfdhg ', ' 123', 'A');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `IdLivro` int(50) NOT NULL,
  `Titulo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Genero` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Sinopse` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Imagem` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`IdLivro`, `Titulo`, `Genero`, `Sinopse`, `Imagem`) VALUES
(1, 'Uma flores ', 'Genero', 'Uma flores negra e todo mundo morreu ', 'C:Desktopimagens\0000KST.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`usuario`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`IdLivro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `IdUsuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `IdLivro` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
