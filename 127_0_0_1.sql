-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:36
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--
DROP DATABASE IF EXISTS `sistemadelogin`;
CREATE DATABASE IF NOT EXISTS `sistemadelogin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistemadelogin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar_url` varchar(220) COLLATE utf8mb4_bin DEFAULT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar_url`, `token`, `tempo_de_vida`) VALUES
(1, 'daiana', 'daiana', 'daiana@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 13:48:42', NULL, '', '2019-09-12 19:29:41'),
(2, 'wanessa', 'nessa', 'wanessa@gmail.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:07:30', 'https://i.ytimg.com/vi/W1oltJiIOLE/maxresdefault.jpg', '', '2019-09-12 19:29:41'),
(3, 'nevasca', 'nevasca', 'nevasca@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:18:26', 'https://i.ytimg.com/vi/W1oltJiIOLE/maxresdefault.jpg', '', '2019-09-12 19:29:41'),
(4, 'wanessa', 'wanessa', 'nessa@gmail.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:41:18', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMWFRUXFxoYGRYWFxUXFxkYGBYXGBgZFRcYHiggGBslIBUaIjEhJSkrLi4uGCAzODMsNyguLisBCgoKDg0OGxAQGy0lICYtLS0tListLS0tLysrMi0wLS0tKy8tKy0tLy0tLS0tNi0tLS0tLS0rLS0tL', '', '2019-09-12 19:29:41'),
(5, 'daiana', 'correia', 'correia@gmail.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 13:38:20', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUQEBIVFRAVFRAQFRUQEhUPDw8PFRUWFhYVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGy0hHyUtLS0tLS0tLSstLS0tLS0vKy0tLS0tLS0tLS0tLS0uLS0tKy0tLSstLTctL', '', '2019-09-12 19:29:41');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
