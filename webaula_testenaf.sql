-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 20-Maio-2019 às 19:51
-- Versão do servidor: 5.6.43
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
-- Estrutura da tabela `atendente`
--

CREATE TABLE `atendente` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `atendente`
--

INSERT INTO `atendente` (`id`, `nome`) VALUES
(1, 'Ana Paula'),
(2, 'João Souza'),
(3, 'Francisco Silva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `telefone`, `cpf`, `email`, `senha`) VALUES
(1, 'Ana Paula', '911119999', '999.999.999-00', 'ana@naf.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'Rick Man', NULL, '00.0000', 'r@naf.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 'Marirone', '912346789', '999.999.999-00', 'm@naf.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'Philipe', '75999848440', '00000000000', '312151046@unifacs.edu.br', '25d55ad283aa400af464c76d713c07ad'),
(12, 'João Philipe', '912345678', '999.99.999-00', 'f@gmail.com', '202cb962ac59075b964b07152d234b70'),
(26, 'Luiz Altarquia', '901101001', '999.999.999-00', 'l@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(27, 'Jose Barriguinha', '912344321', '888.888.888-8', 'j@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(28, 'Menino da Bolacha', '75983634862', '8094597785', 'meninobolachudo@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(29, 'Menino da Bolacha', '75983634862', '8094597785', 'meninobolachudo@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(30, 'Natan Santana', '75992301031', '862.014.29506', 'tansantana19@gmail.com', 'f1459705fc747a3a82f1502f5eb72897'),
(31, 'Doug', '00000000', '010111001', 'email@email.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`id`, `data`) VALUES
(1, '2019-03-11'),
(2, '2019-03-12'),
(3, '2019-03-13'),
(4, '2019-03-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `horario` time DEFAULT NULL,
  `Dia_id` int(11) NOT NULL,
  `disponivel` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horario`
--

INSERT INTO `horario` (`id`, `horario`, `Dia_id`, `disponivel`) VALUES
(1, '13:00:00', 1, 0),
(2, '14:00:00', 1, 0),
(3, '15:00:00', 2, 1);

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `listadocs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`id`, `nome`, `listadocs`) VALUES
(1, 'Declara&ccedil;&atilde;o de Imposto de Renda', '1 - A, 2 - B, 3 - C.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atendente`
--
ALTER TABLE `atendente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`,`Dia_id`),
  ADD KEY `fk_Horario_Dia_idx` (`Dia_id`);

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
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atendente`
--
ALTER TABLE `atendente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `dia`
--
ALTER TABLE `dia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `fk_Horario_Dia` FOREIGN KEY (`Dia_id`) REFERENCES `dia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
