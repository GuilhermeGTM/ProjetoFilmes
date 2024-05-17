-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/05/2024 às 23:29
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbfilmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `genero` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nome`, `genero`) VALUES
(22, 'Senhor das Armas', 'Guerra, Drama'),
(21, 'Bastardos Inglorious ', 'Guerra, Ação'),
(20, 'Avatar', 'Ação, Ficção cientifica'),
(23, 'Infiltrado', 'Ação, Suspense '),
(24, 'Jogos Vorazes', 'Ação, Aventura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `token`) VALUES
(5, 'Guilherme Timm Moreira', 'guilherme-gtm@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'a6055a18e3c85e746ab0ed9db8298192');

-- --------------------------------------------------------

--
-- Estrutura para tabela `votos`
--

CREATE TABLE `votos` (
  `id` int(4) NOT NULL,
  `cod_filmes` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `data` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `votos`
--

INSERT INTO `votos` (`id`, `cod_filmes`, `nome`, `email`, `data`) VALUES
(32, 15, 'guilherme', 'guilherme-gtm@hotmail.com', '0000-00-00'),
(33, 14, 'pedro', 'pedro@hotmail.com', '0000-00-00'),
(34, 15, 'laura', 'laura@hotmail.com', '0000-00-00'),
(35, 16, 'joao', 'joao@hotmail.com', '0000-00-00'),
(36, 20, 'Guilherme', 'guilherme@hotmail.com', '0000-00-00'),
(37, 22, 'Gustavo', 'gustavo@hotmail.com', '0000-00-00'),
(38, 24, 'Michela', 'michela@hotmail.com', '0000-00-00'),
(39, 20, 'teste1', 'teste1@hotmail.com', '0000-00-00'),
(40, 20, 'teste2', 'teste2@hotmail.com', '0000-00-00'),
(41, 22, 'teste3', 'teste3@hotmail.com', '0000-00-00'),
(42, 25, 'teste4', 'teste4@hotmail.com', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senha` (`senha`);

--
-- Índices de tabela `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `votos`
--
ALTER TABLE `votos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
