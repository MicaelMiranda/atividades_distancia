-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 01-Nov-2019 às 00:33
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marcondes`
--
DROP DATABASE IF EXISTS `marcondes`;
CREATE DATABASE IF NOT EXISTS `marcondes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `marcondes`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `classe` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `menu`
--

INSERT INTO `menu` (`id`, `endereco`, `classe`, `descricao`, `ordem`) VALUES
(1, '?pagina=cadastro', 'btn btn-info mx-2 mt-2', 'Cadastrar nova pessoa', 3),
(2, '?pagina=listagem', 'btn btn-info mx-2 mt-2', 'Listar Pessoas cadastradas', 2),
(3, '?', 'btn btn-danger mx-2 mt-2', 'Home', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`) VALUES
(1, 'Marcondes 1'),
(2, 'Marcondes 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `login` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `email`, `nome`, `password`) VALUES
(1, 'marcondes', 'marcondesmacaneiro@gmail.com', 'Marcondes Maçaneiro', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_endereco_uindex` (`endereco`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_login_uindex` (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
