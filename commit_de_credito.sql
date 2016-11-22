-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Nov 14, 2016 as 06:21 PM
-- Versão do Servidor: 5.1.33
-- Versão do PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `comite_de_credito`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `diversos`
--

CREATE TABLE IF NOT EXISTS `diversos` (
  `data` varchar(10) NOT NULL,
  `assuntos` varchar(300) NOT NULL,
  `comentarios` varchar(1000) NOT NULL,
  `gerente` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `diversos`
--

INSERT INTO `diversos` (`data`, `assuntos`, `comentarios`, `gerente`) VALUES
('2015-11-03', 'teste de comentarios; teste 2; teste 3', 'teste de comentÃ¡rios 1', ''),
('2015-11-05', 'assunto1; assunto2; assunto3', 'sem comentÃ¡rios', ''),
('2015-11-16', 'teste de comentarios; teste 2; teste 3', 'cdsacadsc', 'jhonata.ferreira'),
('2015-12-02', 'teste de assunto', 'testando assuntos', ''),
('2015-12-07', 'teste de comentarios; teste 2; teste 3', 'assuntos diversos', ''),
('2015-12-10', 'bancos', 'nÃ£o vamos pagar nesse dia', ''),
('2016-03-07', 'assunto1; assunto2; assunto3', 'Testando assuntos diversos', ''),
('2016-03-07', 'assunto 4; assunto 5; assunto 6', 'Teste 2 de assuntos diversos', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `justificar_faltas`
--

CREATE TABLE IF NOT EXISTS `justificar_faltas` (
  `data` varchar(10) NOT NULL,
  `justificativa` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `justificar_faltas`
--

INSERT INTO `justificar_faltas` (`data`, `justificativa`) VALUES
('2015-12-09', 'jonate foi fazer visita'),
('2015-12-09', 'Jonate foi fazer visita'),
('2015-12-10', 'Sem Justificativas'),
('2015-12-10', 'visitas'),
('2016-03-07', 'Jonate faltou porque foi fazer visita'),
('2016-04-11', 'Sem Justificativas'),
('2016-08-11', 'Os demais estavam em visita.'),
('2016-09-07', 'Sem Justificativas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `listagem_presentes`
--

CREATE TABLE IF NOT EXISTS `listagem_presentes` (
  `data` date NOT NULL,
  `nome` varchar(40) NOT NULL,
  `Justificativa` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `listagem_presentes`
--

INSERT INTO `listagem_presentes` (`data`, `nome`, `Justificativa`) VALUES
('2015-12-09', 'Rubens Reinaldo', ''),
('2015-12-09', 'Renato SÃ¡tiro ', ''),
('2015-12-09', 'Amanda Di Pace', ''),
('2015-12-09', 'Erick Morais', ''),
('2015-12-09', 'Gedeon Vitorio', ''),
('2015-12-09', 'Erika Pachu', ''),
('2015-12-09', 'Moacir Brasil', ''),
('2015-12-09', 'AntÃ´nio Luiz FranÃ§a', ''),
('2015-12-09', 'Maria RosivÃ¢nia', ''),
('2015-12-10', 'Rubens Reinaldo', ''),
('2015-12-10', 'Renato SÃ¡tiro ', ''),
('2015-12-10', 'Amanda Di Pace', ''),
('2015-12-10', 'Erick Morais', ''),
('2015-12-10', 'Gedeon Vitorio', ''),
('2015-12-10', 'Erika Pachu', ''),
('2015-12-10', 'Rubens Reinaldo', ''),
('2015-12-10', 'Renato SÃ¡tiro ', ''),
('2015-12-10', 'Amanda Di Pace', ''),
('2016-03-07', 'Rubens Reinaldo', ''),
('2016-03-07', 'Renato SÃ¡tiro ', ''),
('2016-03-07', 'Amanda Di Pace', ''),
('2016-03-07', 'Erick Morais', ''),
('2016-03-07', 'Gedeon Vitorio', ''),
('2016-03-07', 'Erika Pachu', ''),
('2016-03-07', 'Moacir Brasil', ''),
('2016-03-07', 'AntÃ´nio Luiz FranÃ§a', ''),
('2016-03-07', 'Maria RosivÃ¢nia', ''),
('2016-04-11', 'Jonate Maciel', ''),
('2016-08-11', 'Rubens Reinaldo', ''),
('2016-08-11', 'Renato SÃ¡tiro ', ''),
('2016-09-07', 'Rubens Reinaldo', ''),
('2016-09-07', 'Amanda Di Pace', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `numero_ata`
--

CREATE TABLE IF NOT EXISTS `numero_ata` (
  `data` varchar(10) NOT NULL,
  `numero_da_ata` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`numero_da_ata`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `numero_ata`
--

INSERT INTO `numero_ata` (`data`, `numero_da_ata`) VALUES
('2015-12-09', 1),
('2015-12-09', 2),
('2015-12-10', 3),
('2015-12-10', 4),
('2016-03-07', 5),
('2016-04-11', 6),
('2016-08-11', 7),
('2016-09-07', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `operacao`
--

CREATE TABLE IF NOT EXISTS `operacao` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `conta_corrente` int(6) unsigned zerofill DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data` varchar(12) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `finalidade` varchar(300) NOT NULL,
  `gerente` varchar(30) NOT NULL,
  `log` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `operacao`
--

INSERT INTO `operacao` (`id`, `conta_corrente`, `valor`, `data`, `tipo`, `finalidade`, `gerente`, `log`) VALUES
(1, 000123, '10.000,00', '2016-09-07', 'emprestimo', 'Compra de imovel', 'jhonata.ferreira', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `propostas`
--

CREATE TABLE IF NOT EXISTS `propostas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(14) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `data` varchar(12) NOT NULL,
  `gerente` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `propostas`
--

INSERT INTO `propostas` (`id`, `cpf_cnpj`, `nome`, `data`, `gerente`) VALUES
(1, '00000000001', 'jhonata', '2016-09-07', 'jhonata.ferreira'),
(2, '123', 'jose', '2016-09-12', 'jhonata.ferreira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_aprovacao`
--

CREATE TABLE IF NOT EXISTS `status_aprovacao` (
  `tipo` varchar(15) NOT NULL,
  `id_proposta` int(3) NOT NULL,
  `gerente` varchar(20) NOT NULL,
  `posicao` varchar(15) NOT NULL,
  `justificativa` varchar(200) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `status_aprovacao`
--

INSERT INTO `status_aprovacao` (`tipo`, `id_proposta`, `gerente`, `posicao`, `justificativa`, `nome`, `data`) VALUES
('proposta', 1, 'erika.pachu', 'favorÃ¡vel', 'justificativa PadrÃ£o', 'Josmar Montenegro', '2015-12-09'),
('proposta', 2, 'erika.pachu', 'favorÃ¡vel', 'justificativa PadrÃ£o', 'Jhonata Candido Ferreira', '2015-12-09'),
('operacao', 1, 'erika.pachu', 'favorÃ¡vel', 'justificativa PadrÃ£o', '099998', '2015-12-09'),
('operacao', 2, 'erika.pachu', 'favorÃ¡vel', 'justificativa PadrÃ£o', '098787', '2015-12-09'),
('proposta', 3, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o', 'alexandre macedo', '2015-12-10'),
('operacao', 3, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o', '004251', '2015-12-10'),
('proposta', 5, 'erika.pachu', 'favorÃ¡vel', 'justificativa PadrÃ£o', 'josÃ© alves', '2015-12-10'),
('operacao', 4, 'erika.pachu', 'favorÃ¡vel', 'justificativa PadrÃ£o', '123455', '2015-12-10'),
('operacao', 5, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o', '033333', '2016-02-23'),
('proposta', 6, 'jhonata.ferreira', 'favorÃ¡vel', 'Justificativa teste 1 - favorÃ¡vel', 'teste1', '2016-03-07'),
('operacao', 7, 'jhonata.ferreira', 'desfavorÃ¡vel', 'justificativa teste 2 - DesfavorÃ¡vel', '899898', '2016-03-07'),
('proposta', 8, 'jhonata.ferreira', 'desfavorÃ¡vel', 'justificativa PadrÃ£o teste 3 - DesfavorÃ¡vel', 'Teste3', '2016-03-07'),
('operacao', 6, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o operaÃ§Ã£o - favorÃ¡vel', '828282', '2016-03-07'),
('operacao', 7, 'jhonata.ferreira', 'desfavorÃ¡vel', 'justificativa PadrÃ£o op - DesfavorÃ¡vel', '899898', '2016-03-07'),
('operacao', 11, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o', '097225', '2016-08-11'),
('operacao', 12, 'jhonata.ferreira', 'desfavorÃ¡vel', 'justificativa PadrÃ£o', '097225', '2016-08-11'),
('proposta', 1, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o', 'jhonata', '2016-09-07'),
('operacao', 1, 'jhonata.ferreira', 'desfavorÃ¡vel', 'justificativa PadrÃ£o', '000123', '2016-09-07'),
('proposta', 2, 'jhonata.ferreira', 'favorÃ¡vel', 'justificativa PadrÃ£o', 'jose', '2016-09-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`, `nome`, `tipo`) VALUES
(1, 'erika.pachu', 'unicred2202', '', 'b'),
(2, 'vania.pedrosa', 'unicred2202', '', 'b'),
(3, 'renato.satiro', 'unicred2202', '', 'b'),
(4, 'jonate.maciel', 'unicred2202', '', 'b'),
(5, 'antonio.bencardino', 'unicred2202', '', 'b'),
(6, 'amanda.gomes', 'unicred2202', '', 'b'),
(7, 'moacir.brasil', 'unicred2202', '', 'b'),
(8, 'gedeon.vitorio', 'unicred2202', '', 'b'),
(9, 'erick.morais', 'unicred2202', '', 'b'),
(10, 'rubens.reinaldo', 'unicred2202', '', 'a'),
(11, 'luiz.franca', 'unicred2202', '', 'a'),
(12, 'alexandre.macedo', 'M@c3do22021', '', 'a'),
(13, 'jhonata.ferreira', 'M@c3do22021', 'Jhonata Candido Ferreira', 'a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_tipo`
--

CREATE TABLE IF NOT EXISTS `usuario_tipo` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `tipo` char(1) NOT NULL,
  `significado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `usuario_tipo`
--

INSERT INTO `usuario_tipo` (`id`, `tipo`, `significado`) VALUES
(1, 'a', 'administrador'),
(2, 'b', 'comum');
