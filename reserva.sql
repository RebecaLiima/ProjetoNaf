-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 18-Mar-2019 às 20:55
-- Versão do servidor: 5.6.41
-- versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webaula_testenaf`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `Horario_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `Cliente_id` int(11) NOT NULL,
  `Servico_id` int(11) NOT NULL,
  `Atendente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`id`, `Horario_id`, `status`, `Cliente_id`, `Servico_id`, `Atendente_id`) VALUES
(1, 1, 'Agendado', 1, 1, 1),
(2, 1, 'Agendado', 2, 1, 2),
(3, 2, 'Agendado', 2, 1, 1),
(4, 2, 'Agendado', 26, 1, 1),
(5, 3, 'Agendado', 10, 1, 1),
(6, 2, 'Agendado', 10, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`,`Horario_id`,`Cliente_id`,`Servico_id`,`Atendente_id`),
  ADD KEY `fk_Reserva_Horario1_idx` (`Horario_id`),
  ADD KEY `fk_Reserva_Cliente1_idx` (`Cliente_id`),
  ADD KEY `fk_Reserva_Servico1_idx` (`Servico_id`),
  ADD KEY `fk_Reserva_Atendente1_idx` (`Atendente_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_Reserva_Atendente1` FOREIGN KEY (`Atendente_id`) REFERENCES `atendente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Cliente1` FOREIGN KEY (`Cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Horario1` FOREIGN KEY (`Horario_id`) REFERENCES `horario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Servico1` FOREIGN KEY (`Servico_id`) REFERENCES `servico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
