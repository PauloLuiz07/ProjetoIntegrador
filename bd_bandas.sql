-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jan-2019 às 14:09
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_bandas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb01_estilos`
--

CREATE TABLE `tb01_estilos` (
  `estilo_cod` int(11) NOT NULL,
  `estilo_nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb01_estilos`
--

INSERT INTO `tb01_estilos` (`estilo_cod`, `estilo_nome`) VALUES
(6, '1001'),
(7, '1002'),
(8, '2001'),
(9, '3003');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb02_bandas`
--

CREATE TABLE `tb02_bandas` (
  `banda_cod` int(11) NOT NULL,
  `banda_nome` varchar(60) NOT NULL,
  `banda_estilo_cod` int(11) NOT NULL,
  `banda_ano` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb02_bandas`
--

INSERT INTO `tb02_bandas` (`banda_cod`, `banda_nome`, `banda_estilo_cod`, `banda_ano`) VALUES
(3, 'Rondinele Boiola', 6, 2000),
(4, 'Suzani Pé Pequeno', 6, 1999),
(5, 'Paulo Luiz ', 8, 1998),
(6, 'Jennifer', 9, 1995),
(7, 'Paulo Carpeado', 7, 1996);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb01_estilos`
--
ALTER TABLE `tb01_estilos`
  ADD PRIMARY KEY (`estilo_cod`);

--
-- Indexes for table `tb02_bandas`
--
ALTER TABLE `tb02_bandas`
  ADD PRIMARY KEY (`banda_cod`),
  ADD KEY `FK_tb02_bandas_tb01_estilos` (`banda_estilo_cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb01_estilos`
--
ALTER TABLE `tb01_estilos`
  MODIFY `estilo_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb02_bandas`
--
ALTER TABLE `tb02_bandas`
  MODIFY `banda_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb02_bandas`
--
ALTER TABLE `tb02_bandas`
  ADD CONSTRAINT `FK_tb02_bandas_tb01_estilos` FOREIGN KEY (`banda_estilo_cod`) REFERENCES `tb01_estilos` (`estilo_cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
