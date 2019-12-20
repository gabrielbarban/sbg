-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 20, 2019 at 07:16 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controle`
--

-- --------------------------------------------------------

--
-- Table structure for table `campanhas`
--

CREATE TABLE `campanhas` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `texto` varchar(3000) NOT NULL,
  `tipo` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campanhas`
--

INSERT INTO `campanhas` (`id`, `nome`, `texto`, `tipo`, `empresa_id`, `data_cadastro`) VALUES
(1, 'envio teste', 'Este Ã© apenas um teste <b>nessa porra</b>', 1, 1, '2019-10-29 20:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `usuario1` int(11) NOT NULL,
  `usuario2` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `texto` varchar(6000) NOT NULL,
  `lido` int(11) NOT NULL DEFAULT '0',
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `usuario1`, `usuario2`, `empresa_id`, `texto`, `lido`, `data_cadastro`) VALUES
(24, 43, 42, 5, 'OlÃ¡ JosÃ©, qualquer dÃºvida entre em contato comigo ', 1, '2019-03-08 00:46:07'),
(25, 43, 42, 5, 'Bom dia Dr., vi que vocÃª chegou a acessar a plataforma. Como estÃ¡ indo?', 1, '2019-04-22 18:55:14'),
(26, 49, 1, 1, 'Oi, tudo bem?', 1, '2019-04-10 20:12:53'),
(27, 1, 49, 1, 'Estou bem sim e vc?', 1, '2019-04-10 20:13:52'),
(28, 49, 1, 1, 'sim', 1, '2019-04-10 20:14:01'),
(29, 49, 1, 1, 'vc vai embora que hs?', 1, '2019-04-10 20:14:08'),
(30, 49, 1, 1, '?', 1, '2019-04-10 20:23:40'),
(31, 1, 49, 1, 'vsf', 1, '2019-04-10 20:23:45'),
(32, 42, 43, 5, 'Tudo bem Gabriel', 0, '2019-04-22 18:55:23'),
(33, 42, 43, 5, 'Quando podemos marcar um treinamento?', 0, '2019-04-22 18:59:02'),
(34, 61, 63, 1, 'Eai cara', 0, '2019-06-20 13:44:48'),
(35, 61, 63, 1, 'Parar entrar na tela de gerenciamento de leads:', 0, '2019-06-20 13:45:27'),
(36, 61, 63, 1, 'Parar entrar na tela de gerenciamento de leads:', 0, '2019-06-20 13:45:31'),
(37, 61, 63, 1, '1) vc loga com seu email kadu.doro@gmail.com e sua senha: 123', 0, '2019-06-20 13:46:10'),
(38, 61, 63, 1, 'Depois vc entra coloca a URL: https://barban.ddns.net/sbg/leads', 0, '2019-06-20 13:46:46'),
(39, 61, 63, 1, 'Essa URL tem 2 bloqueios... somente se estiver com usuario logado e se usuario for eu ou voce, pra garantir', 0, '2019-06-20 13:47:39'),
(40, 61, 53, 1, 'OlÃ¡ Aleandro', 0, '2019-07-12 21:24:43'),
(41, 61, 53, 1, 'td bem?', 0, '2019-07-12 21:24:50'),
(42, 61, 67, 1, 'eai', 0, '2019-07-22 17:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `data_nasc` varchar(60) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresa_id` int(11) NOT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `cpf` varchar(40) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `endereco` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `data_nasc`, `data_cadastro`, `empresa_id`, `rg`, `cpf`, `telefone`, `celular`, `email`, `endereco`) VALUES
(1, 'teste', '30/10/1999', '2019-01-09 13:38:51', 1, '', '', '', '', '', ''),
(2, 'Gabriel Barban Rocha', '28/04/1995', '2019-02-05 16:34:19', 1, '36.947.842-3', '424.925.238-88', '11 37742158', '11 939261285', 'barbangabriel@gmail.com', 'Avenida dos Ourives, 480 - Bloco2, Apto 63'),
(3, 'teste pedoro', '02/11/2001', '2019-01-09 13:38:59', 1, '', '', '', '', '', ''),
(4, 'gabriel rocha', '28/04/1995', '2019-01-09 13:18:37', 1, '', '', '', '', '', ''),
(5, 'teste santos', '28/04/1995', '2019-01-08 17:35:53', 1, '', '', '', '', '', ''),
(6, 'Ricardo Gomes', '28/04/1995', '2019-12-04 19:19:31', 1, '', '', '', '', '', ''),
(7, 'teste gomes da costa', '30/10/1999', '2019-01-09 13:38:51', 1, '', '', '', '', '', ''),
(8, 'Hugo', '01/09/1955', '2019-01-09 16:05:53', 1, '', '', '', '', '', ''),
(9, 'Hugo Boss', '01/01/1990', '2019-01-09 16:30:45', 1, '', '', '', '', '', ''),
(10, 'Luis Inacio Lula da Silva', '04/01/1949', '2019-02-06 20:45:35', 1, '', '11111111111111', '', '', '', ''),
(11, 'Jonas Castro Alves', '09/04/1994', '2019-01-09 16:43:10', 1, '', '', '', '', '', ''),
(12, 'Juliana Kadov Alik', '08/07/1987', '2019-02-05 16:38:55', 1, '274.881.410-08', '20.708.544-4', '11 12345678', '11 98765432', '', ''),
(14, 'kaio barros', '01/01/1995', '2019-01-09 18:09:10', 1, '', '', '', '', '', ''),
(15, 'Juca Kfouri', '01/01/1955', '2019-06-21 20:29:06', 1, '', '', '', '', '', ''),
(17, 'Foguinho', '02/02/1942', '2019-01-09 18:18:08', 1, '', '', '', '', '', ''),
(18, 'Lima Duarte', '02/03/1939', '2019-01-11 18:08:59', 1, '', '', '', '', '', ''),
(19, 'Coca Cola Brasil', '01/01/1990', '2019-01-14 13:51:49', 1, '', '', '', '', '', ''),
(20, 'FÃ¡bio Castro Alves', '03/06/1999', '2019-01-14 15:30:48', 1, '369478423', '42492523888', '', '', '', ''),
(21, 'Eduardo Bolsonaro', '02/09/1988', '2019-01-16 14:30:43', 1, '123', '456', '', '', '', ''),
(22, 'Pedro Augusto Nunes', '02/04/1955', '2019-01-29 20:40:20', 1, '1232143254', '544235324555', '', '', '', ''),
(23, 'paciente teste', '', '2019-02-06 20:51:23', 3, '', '', NULL, NULL, NULL, NULL),
(24, 'Alessandra Guedes', '15/03/1994', '2019-02-14 13:59:26', 1, '12345678', '123456784', NULL, NULL, NULL, NULL),
(25, 'Rafael Basquens', '19//07/1988', '2019-08-23 21:26:43', 1, '12345', '67890', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companhia`
--

CREATE TABLE `companhia` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `inicio_funcionamento` int(11) NOT NULL,
  `fim_funcionamento` int(11) NOT NULL,
  `razao_social` varchar(200) NOT NULL,
  `cnpj` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `celular` varchar(80) NOT NULL,
  `telefone` varchar(80) NOT NULL,
  `responsavel` varchar(150) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `salto` int(11) NOT NULL,
  `flag_crm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companhia`
--

INSERT INTO `companhia` (`id`, `nome`, `inicio_funcionamento`, `fim_funcionamento`, `razao_social`, `cnpj`, `email`, `celular`, `telefone`, `responsavel`, `data_cadastro`, `salto`, `flag_crm`) VALUES
(1, 'Barban Softwares', 0, 23, 'Barban Softwares LTDA', '12345678901234', 'barbangabriel@gmail.com', '11 939261285', '11 22648903', 'Gabriel Barban Rocha', '2019-08-23 21:27:07', 3, 1),
(2, 'Empresa de teste', 0, 23, 'EMPRESA TESTE LTDA', '43243223423432', 'bonoro@planalto.gov', '11 939261285', '11 22648903', 'Jair Bonoro', '2019-03-20 16:45:21', 0, 1),
(3, 'Empresa teste', 0, 23, 'Empresa teste', '0', 'rodrigodevcode@gmail.com', '', '', 'Rodrigo', '2019-03-20 16:45:24', 0, 1),
(4, 'CLINICA TESTE', 0, 23, 'CLINICA TESTE', '0', 'jorgepaulo_paulo@hotmail.com', '(19)981600049', '0', 'Ricardo Mello', '2019-04-22 14:52:33', 0, 0),
(5, 'Vision', 0, 23, 'Vision Radiologia Odontologica Ltda', '07.624.486/0001-88', 'castanhosilveira@yahoo.com.br', '(19) 98853-5111', '(19) 3307-1615', 'JosÃ© Silveira', '2019-03-20 17:58:56', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `config_monitor`
--

CREATE TABLE `config_monitor` (
  `status_principal_id` int(11) NOT NULL,
  `tipo_principal` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_monitor`
--

INSERT INTO `config_monitor` (`status_principal_id`, `tipo_principal`, `empresa_id`) VALUES
(5, 1, 1),
(1, 1, 3),
(16, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contato_lead`
--

CREATE TABLE `contato_lead` (
  `nome` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `telefone` varchar(250) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `status` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contato_lead`
--

INSERT INTO `contato_lead` (`nome`, `email`, `telefone`, `data_cadastro`, `id`, `status`) VALUES
('MARCIO', 'mlvcataldo@gmail.com', '21964264689', '2019-06-19 15:12:20', 1, 'Emperrado'),
('Miguel Campos', 'campos_dentista@hotmail.com', '19 988711766', '2019-06-19 15:12:28', 6, 'Emperrado'),
('Antonio', 'montafacilgesso@gmail.com', '11958963892', '2019-06-19 15:12:33', 7, 'Emperrado'),
('clinica odontologica', 'clinicacotia10@gmail.com', '1142439263', '2019-06-19 15:12:37', 8, 'Emperrado'),
('Cristina Brocchi ', 'Campinas@drmatheusarantes.com.br', '19981945654', '2019-06-19 15:12:42', 9, 'Emperrado'),
('Maria Doraci ', 'alvesnathalia759@gmail.com', '11991514714', '2019-06-19 15:12:46', 11, 'Emperrado'),
('Ricardo Mello', 'ricko_mello@hotmail.com', '19981600049', '2019-06-19 15:12:54', 12, 'Emperrado'),
('jorge', 'jorgepaulo_paulo@hotmail.com', '(11) 9714-50880', '2019-06-19 15:13:06', 13, 'Emperrado'),
('Reginaldo Daniel de Godoi ', 'rwconsultoria10@gmail.com', '19907479289', '2019-06-19 15:13:11', 15, 'Emperrado'),
('adriana', 'adriana030681@gmail.com', '11 97481-1186', '2019-06-19 15:13:00', 17, 'Emperrado'),
('Ana pailq da silva foli', 'paula_foli@hotmail.com', '19 995261735', '2019-06-19 15:13:15', 18, 'Emperrado'),
('Aleandro jesus da silva', 'dr.aleandrojesus@gmail.com', '11942284700', '2019-06-21 20:43:21', 19, 'Conversas iniciais'),
('fabia andrade', 'drafabiaandrade@gmail.com', '11 954797775', '2019-06-19 15:14:28', 21, 'Conversas iniciais'),
('wilson', 'tecnico@jmmedical.com.br', '1147559292', '2019-06-19 15:14:32', 24, 'Conversas iniciais'),
('Marina de Almeida Cunzolo', 'marinacunzolo@gmail.com', '12982536006', '2019-06-19 15:14:16', 25, 'Conversas iniciais'),
('Eduardo GonÃ§alves', 'admin@geradox.com.br', '(31) 8888-8565', '2019-06-19 15:26:50', 26, 'Novo'),
('Eduardo GonÃ§alves', 'admin@grdoc.com.br', '(31) 8888-8565', '2019-06-19 15:26:53', 27, 'Novo'),
('Mariana Gomes do nascimento ', 'Marygomesrebeca@gmail.com ', '11964529863', '2019-06-21 20:38:32', 28, 'Emperrado'),
('Eunice de Jesus Carneiro', 'nissejc23@gmail.com', '11948105071', '2019-06-21 20:35:39', 29, 'Emperrado'),
('Testa tudo', 'SU@gmail.com', '1999365478', '2019-06-21 01:17:07', 30, 'Novo'),
('vdvvdv', 'admin@admin.com', '123213321', '2019-07-04 00:13:52', 31, 'Novo');

-- --------------------------------------------------------

--
-- Table structure for table `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `codigo` varchar(7000) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documentos`
--

INSERT INTO `documentos` (`id`, `nome`, `codigo`, `empresa_id`, `data_cadastro`) VALUES
(1, 'Atestado', '<div id=\"documento\">\r\n<center><b><i><font size=\"5\">CLÃNICA DE RADIOLOGIA BARBAN LTDA</font></i></b></center><center><b><i><font size=\"5\">________________________________________________________________</font></i></b></center><center><b><i><br></i></b></center><center><b><i><br></i></b></center><center><b><i>ATESTADO</i></b></center>\r\n<br>\r\nDeclaro que o paciente <span id=\"nome\"></span> (CPF: <span id=\"cpf\"></span>) realizou exame <span id=\"descricao\"></span>, no dia <span id=\"data_cadastro\"></span>.\r\n<br><br>\r\n</div>', 1, '2019-12-04 14:49:23'),
(4, 'Termo de responsabilidade', '<div id=\"documento\"><center><span style=\"font-weight: bolder;\"><i><font size=\"5\">CLÃNICA DE RADIOLOGIA BARBAN LTDA</font></i></span></center><center><span style=\"font-weight: bolder;\"><i><font size=\"5\">________________________________________________________________</font></i></span></center><center><span style=\"font-weight: bolder;\"><i><font size=\"5\"><br></font></i></span></center><center><span style=\"font-weight: bolder;\"><i><font size=\"5\"><br></font></i></span></center><center><b><i>TERMO DE RESPONSABILIDADE</i></b></center>\r\n<br>\r\nPaciente <span id=\"nome\"></span> (CPF: <span id=\"cpf\"></span>) estÃ¡ ciente da utilizaÃ§Ã£o de piercing e dos riscos e eventuais erros de diagnÃ³sticos que isso pode acarretar no resultado do exame.\r\n<br><br>\r\n<i>SÃ£o Paulo, __ de ________________ de 20</i>\r\n<br><br>\r\n<center><img style=\"width: 80px; height: 90px\" src=\"../uploads/logo-1.png\"></center>\r\n</div>', 1, '2019-12-04 14:51:49'),
(5, 'Atestado escolar', '<div id=\"documento\">\r\n<img src=\"../uploads/logo-5.png\" style=\"float: left\"/>\r\n<br><br><br><br><br><br><br><b><center>Atestado</center></b><br><br>\r\nAtesto para fins escolares que o paciente <span id=\"nome\"></span>, esteve sob meus cuidados profissionais nesta data, no perÃ­odo de ____ atÃ© Ã s ____.<br><br><br>\r\nCampinas, <span id=\"dia\"></span> de <span id=\"mes\"></span> de <span id=\"ano\"></span><br><br><br><br><br>\r\n<font style=\"float: right\"><b>_________________________________<br>Dr. JosÃ© Maria Castanho Silveira</b><br><i>CRO-SP 102201 â€“ Especialista Radiologia<br>cpf 056.842.868-44</i></font>\r\n<br><br>\r\n</div>', 5, '2019-02-22 19:04:47'),
(6, 'Atestado trabalhista', '<div id=\"documento\">\r\n<img src=\"../uploads/logo-5.png\" style=\"float: left\"/>\r\n<br><br><br><br><br><br><br><b><center>Atestado</center></b><br><br>\r\nAtesto para fins trabalhistas que o paciente <span id=\"nome\"></span>, esteve sob meus cuidados profissionais nesta data, no perÃ­odo de ____ atÃ© Ã s ____.<br><br><br>\r\nCampinas, <span id=\"dia\"></span> de <span id=\"mes\"></span> de <span id=\"ano\"></span><br><br><br><br><br>\r\n<font style=\"float: right\"><b>_________________________________<br>Dr. JosÃ© Maria Castanho Silveira</b><br><i>CRO-SP 102201 â€“ Especialista Radiologia<br>cpf 056.842.868-44</i></font>\r\n<br><br>\r\n</div>', 5, '2019-02-22 19:04:32'),
(7, 'Recibo', '<div id=\"documento\">\r\n<img src=\"../uploads/logo-5.png\" style=\"float: left\"/>\r\n<br><br><br><br><br><br><br><b><center>Recibo</center></b><br><br>\r\nRecebi do paciente <span id=\"nome\"></span> CPF: <span id=\"cpf\"></span>, a quantia supra de R$ <span id=\"valor\"></span> referente ao pagamento do seu exame radiogrÃ¡fico.<br><br><br>\r\nCampinas, <span id=\"dia\"></span> de <span id=\"mes\"></span> de <span id=\"ano\"></span><br><br><br><br><br>\r\n<font style=\"float: right\"><b>_________________________________<br>Dr. JosÃ© Maria Castanho Silveira</b><br><i>CRO-SP 102201 â€“ Especialista Radiologia<br>cpf 056.842.868-44</i></font>\r\n<br><br>\r\n</div>', 5, '2019-02-22 19:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `razao_social` varchar(300) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `telefone` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tipo` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresa_id` int(11) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `razao_social`, `cnpj`, `telefone`, `email`, `tipo`, `data_cadastro`, `empresa_id`, `ativo`) VALUES
(1, 'Amil BR', '', '', '', '', 1, '2019-02-04 17:37:24', 1, 0),
(2, 'Unimed Master', '', '', '', '', 1, '2019-02-04 17:37:39', 1, 1),
(3, 'Sulamerica', '', '', '', '', 1, '2019-02-04 17:37:39', 2, 1),
(4, 'Bradesco SaÃºde', '', '', '', '', 1, '2019-02-04 17:37:39', 2, 1),
(5, 'OdontoPrev', '', '', '', '', 1, '2019-02-04 17:37:39', 2, 1),
(6, 'iteris', '', '', '', '', 1, '2019-02-04 17:37:39', 1, 0),
(7, 'MGMT Band', '', '', '', '', 1, '2019-02-04 17:37:39', 2, 1),
(8, 'Amil Dental', '', '', '', '', 1, '2019-02-05 17:54:44', 1, 0),
(9, 'OdontoPrev', '', '', '', '', 1, '2019-02-04 17:37:39', 1, 1),
(10, 'Coca Cola BR', '', '', '', '', 1, '2019-02-05 17:15:28', 1, 0),
(11, 'Sulamerica SaÃºde', '', '', '', '', 1, '2019-02-12 17:46:38', 1, 1),
(12, 'Filmes radiologicos LTDA', '', '', '', '', 2, '2019-02-05 17:53:13', 1, 0),
(13, 'FÃ¡brica de copos plÃ¡sticos ME', '', '', '', '', 2, '2019-02-05 17:44:15', 1, 1),
(14, 'Rifas e bolinhas JLV', '', '', '', '', 2, '2019-02-05 17:54:32', 1, 1),
(15, 'teste', '', '', '', '', 2, '2019-02-05 17:59:43', 1, 0),
(16, 'Amil Odonto', '', '', '', '', 1, '2019-02-05 17:59:18', 1, 0),
(17, 'convenio particular', '', '', '', '', 1, '2019-02-05 17:59:15', 1, 0),
(18, 'PARTICULAR', '', '', '', '', 1, '2019-02-05 17:59:30', 1, 0),
(19, 'Particular X', '', '', '', '', 1, '2019-02-12 17:44:06', 1, 0),
(20, 'teste', '', '', '', '', 2, '2019-02-06 17:02:08', 1, 0),
(21, 'Microsoft Brasil', '', '', '', '', 2, '2019-02-06 17:21:09', 1, 1),
(22, 'Stark Industries', '', '', '', '', 2, '2019-02-06 17:57:24', 3, 1),
(23, 'Amil', '', '', '', '', 1, '2019-02-06 20:57:42', 3, 1),
(24, 'Particular', '', '', '', '', 1, '2019-02-14 19:26:37', 1, 1),
(25, 'OneHealth', 'Grupo Amil LTDA', '3484713574132098593248', '11 2355-6780', 'contato@onehealth.com.br', 1, '2019-02-14 20:03:36', 1, 1),
(26, 'Receita Federal', '', '', '', '', 2, '2019-02-18 19:24:24', 1, 1),
(27, 'Particular A', '', '', '', '', 1, '2019-02-21 20:00:28', 5, 1),
(28, 'Particular B', '', '', '', '', 1, '2019-02-21 20:00:37', 5, 1),
(29, 'Particular C', '', '', '', '', 1, '2019-02-21 20:01:11', 5, 1),
(30, 'Particular D', '', '', '', '', 1, '2019-02-21 20:01:16', 5, 1),
(31, 'Particular E', '', '', '', '', 1, '2019-02-21 20:01:27', 5, 1),
(32, 'Particular F', '', '', '', '', 1, '2019-02-21 20:01:37', 5, 1),
(33, 'Particular G', '', '', '', '', 1, '2019-02-21 20:01:43', 5, 1),
(34, 'Particular H', '', '', '', '', 1, '2019-02-21 20:01:52', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `empresas_tipo`
--

CREATE TABLE `empresas_tipo` (
  `id` int(11) NOT NULL,
  `nome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrega`
--

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `ativo` int(11) NOT NULL DEFAULT '1',
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrega`
--

INSERT INTO `entrega` (`id`, `nome`, `ativo`, `empresa_id`) VALUES
(1, 'MOTOBOY', 0, 1),
(2, 'teste 2', 0, 1),
(3, 'Motoboy', 1, 1),
(4, 'Bicicleta', 1, 1),
(5, 'Sedex', 1, 1),
(6, 'na clÃ­nica', 1, 1),
(7, 'Retirar', 1, 5),
(8, 'Motoboy', 1, 5),
(9, 'Correios', 1, 5),
(10, 'jorge', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `etiqueta_individual`
--

CREATE TABLE `etiqueta_individual` (
  `id` int(11) NOT NULL,
  `codigo` varchar(5000) NOT NULL,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etiqueta_individual`
--

INSERT INTO `etiqueta_individual` (`id`, `codigo`, `empresa_id`) VALUES
(1, '<div id=\"etiqueta-individual\" style=\"width: 300px; height: 100px; border: 2px solid; border-radius: 8px;\">\r\n          Nome: <span id=\"nome\"></span><br>\r\n          Nascimento: <span id=\"nascimento\"></span><br>\r\n          Data de Cadastro: <span id=\"data_cadastro\"></span><br>\r\n          DescriÃ§Ã£o: <span id=\"descricao\"></span>\r\n</div>', 1),
(2, '<div id=\"etiqueta-individual\" style=\"width: 300px; height: 100px; border: 2px solid; border-radius: 8px;\">\r\n          Nome: <span id=\"nome\"></span><br>\r\n          Nascimento: <span id=\"nascimento\"></span><br>\r\n          Data de Cadastro: <span id=\"data_cadastro\"></span><br>\r\n          CPF: <span id=\"cpf\"></span>\r\n</div>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `etiqueta_pimaco`
--

CREATE TABLE `etiqueta_pimaco` (
  `id` int(11) NOT NULL,
  `codigo` varchar(16000) NOT NULL,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etiqueta_pimaco`
--

INSERT INTO `etiqueta_pimaco` (`id`, `codigo`, `empresa_id`) VALUES
(1, '<div id=\"etiqueta-individual\" style=\"width: 210mm; height: 297mm; border: 2px solid; border-radius: 8px;\">\r\n<div style=\"margin-top: 5mm; margin-left: 4mm; margin-right: 4mm; margin-bottom: 15mm\">\r\n\r\n<div id=\"a1\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"a2\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"a3\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"a4\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"a5\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"a6\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"a7\" style=\"width: 100mm; height: 38mm; border: 1px dashed;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b1\" style=\"width: 100mm;height: 38mm;border: 1px dashed;margin-top: -1019px;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b2\" style=\"width: 100mm;height: 38mm;border: 1px dashed;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b3\" style=\"width: 100mm;height: 38mm;border: 1px dashed;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b4\" style=\"width: 100mm;height: 38mm;border: 1px dashed;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b5\" style=\"width: 100mm; height: 38mm; border: 1px dashed;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b6\" style=\"width: 100mm; height: 38mm; border: 1px dashed;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n<div id=\"b7\" style=\"width: 100mm; height: 38mm; border: 1px dashed;margin-left: 380px;\" onclick=\"visualizar(this)\">\r\n  <span id=\"nome\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nascimento\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"descricao\" style=\"visibility: hidden;\"></span><br>\r\n  <span id=\"nome_empresas\" style=\"visibility: hidden;\"></span><br>\r\n</div>\r\n\r\n</div>\r\n</div>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financas`
--

CREATE TABLE `financas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `valor` float NOT NULL,
  `forma_id` int(11) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financas`
--

INSERT INTO `financas` (`id`, `descricao`, `valor`, `forma_id`, `empresas_id`, `usuario_id`, `data_cadastro`, `categoria_id`) VALUES
(1, 'teste', 15.6, 4, 13, 1, '2019-02-06 18:06:13', 1),
(8, 'teste', 45, 11, 21, 1, '2019-02-26 10:45:55', 2);

-- --------------------------------------------------------

--
-- Table structure for table `financas_categorias`
--

CREATE TABLE `financas_categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financas_categorias`
--

INSERT INTO `financas_categorias` (`id`, `nome`, `data_cadastro`, `empresa_id`) VALUES
(1, 'Aluguel', '2019-02-06 15:55:34', 1),
(2, 'Depto. Pessoal', '2019-02-06 15:55:45', 1),
(3, 'teste', '2019-02-06 17:57:57', 3),
(4, 'Procedimentos', '2019-02-12 13:02:59', 1),
(5, 'Encargos', '2019-02-18 19:23:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `formas_pagamento`
--

CREATE TABLE `formas_pagamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formas_pagamento`
--

INSERT INTO `formas_pagamento` (`id`, `nome`, `data_cadastro`, `empresa_id`) VALUES
(4, 'Dinheiro', '2019-01-03 19:43:11', 1),
(10, 'Pay-Pal', '2019-01-07 14:46:55', 2),
(11, 'CartÃ£o de CrÃ©dito', '2019-02-05 17:09:48', 1),
(12, 'Dinheiro', '2019-02-06 17:57:44', 3),
(13, 'CartÃ£o de DÃ©bito', '2019-02-15 18:03:32', 1),
(14, 'Boleto', '2019-02-15 18:03:37', 1),
(15, 'ConvÃªnio', '2019-02-18 19:17:37', 1),
(16, 'Dinheiro', '2019-02-21 19:58:06', 5),
(17, 'Adicional', '2019-02-21 19:58:32', 5),
(18, 'Desconto', '2019-02-21 19:58:38', 5),
(19, 'DÃ©bito', '2019-02-21 19:58:46', 5),
(20, 'CrÃ©dito', '2019-02-21 19:58:52', 5);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `acao` varchar(200) NOT NULL,
  `dados` varchar(500) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `ip_acesso` varchar(100) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `acao`, `dados`, `usuario_id`, `empresa_id`, `ip_acesso`, `data_cadastro`) VALUES
(48, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-20 16:44:47'),
(49, 'Logou no sistema', '---', 40, 1, '179.99.212.93', '2019-02-20 17:47:21'),
(50, 'Enviou nova mensagem', 'Nome do documento: ', 40, 1, '179.99.212.93', '2019-02-20 17:48:02'),
(51, 'Enviou nova mensagem', 'Nome do documento: ', 1, 1, '179.99.212.93', '2019-02-20 17:48:22'),
(52, 'Enviou nova mensagem', 'Nome do documento: ', 40, 1, '179.99.212.93', '2019-02-20 17:48:39'),
(53, 'Enviou nova mensagem', 'Nome do documento: ', 40, 1, '179.99.212.93', '2019-02-20 17:48:44'),
(54, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-20 19:36:39'),
(55, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-20 20:36:26'),
(56, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-20 20:40:25'),
(57, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-21 13:25:23'),
(58, 'Enviou nova mensagem', 'Nome do documento: ', 1, 1, '179.99.212.93', '2019-02-21 13:58:30'),
(59, 'Logou no sistema', '---', 41, 4, '179.99.212.93', '2019-02-21 17:33:37'),
(60, 'Logou no sistema', '---', 41, 4, '179.238.192.214', '2019-02-21 18:41:15'),
(61, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-02-21 19:24:12'),
(62, 'Atualizou cadastro de usuÃ¡rio', 'Nome: Jose Silveira, E-mail: castanhosilveira@yahoo.com.br, Username: jose', 42, 5, '179.99.212.93', '2019-02-21 19:24:22'),
(63, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-02-21 19:24:29'),
(64, 'Atualizou dados da companhia', '---', 42, 5, '179.99.212.93', '2019-02-21 19:24:49'),
(65, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Suporte SBG', 42, 5, '179.99.212.93', '2019-02-21 19:28:20'),
(66, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-21 19:28:29'),
(67, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-21 19:28:44'),
(68, 'Enviou nova mensagem', 'Nome do documento: ', 43, 5, '179.99.212.93', '2019-02-21 19:29:22'),
(69, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-02-21 19:29:47'),
(70, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-21 19:30:02'),
(71, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Rubia Ramos', 43, 5, '179.99.212.93', '2019-02-21 19:34:01'),
(72, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Vitoria Alves', 43, 5, '179.99.212.93', '2019-02-21 19:34:21'),
(73, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: BÃ¡rbara Souza', 43, 5, '179.99.212.93', '2019-02-21 19:34:40'),
(74, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Elisa Oliveira', 43, 5, '179.99.212.93', '2019-02-21 19:35:26'),
(75, 'Logou no sistema', '---', 47, 5, '179.99.212.93', '2019-02-21 19:36:28'),
(76, 'Logou no sistema', '---', 46, 5, '179.99.212.93', '2019-02-21 19:37:15'),
(77, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-21 19:37:29'),
(78, 'Logou no sistema', '---', 44, 5, '179.99.212.93', '2019-02-21 19:44:20'),
(79, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-21 19:47:11'),
(80, 'Atualizou dados da companhia', '---', 43, 5, '179.99.212.93', '2019-02-21 19:49:01'),
(81, 'Cadastrou novo status', 'Nome do status: Cadastrado', 43, 5, '179.99.212.93', '2019-02-21 19:56:56'),
(82, 'Cadastrou novo status', 'Nome do status: Atendido', 43, 5, '179.99.212.93', '2019-02-21 19:57:15'),
(83, 'Cadastrou novo status', 'Nome do status: Entregue', 43, 5, '179.99.212.93', '2019-02-21 19:57:23'),
(84, 'Cadastrou novo status', 'Nome do status: Arquivado', 43, 5, '179.99.212.93', '2019-02-21 19:57:28'),
(85, 'Atualizou dados do monitor', '---', 43, 5, '179.99.212.93', '2019-02-21 19:57:36'),
(86, 'Cadastrou nova forma de pagamento', 'Nome: Dinheiro', 43, 5, '179.99.212.93', '2019-02-21 19:58:06'),
(87, 'Cadastrou nova forma de pagamento', 'Nome: Adicional', 43, 5, '179.99.212.93', '2019-02-21 19:58:32'),
(88, 'Cadastrou nova forma de pagamento', 'Nome: Desconto', 43, 5, '179.99.212.93', '2019-02-21 19:58:38'),
(89, 'Cadastrou nova forma de pagamento', 'Nome: DÃ©bito', 43, 5, '179.99.212.93', '2019-02-21 19:58:46'),
(90, 'Cadastrou nova forma de pagamento', 'Nome: CrÃ©dito', 43, 5, '179.99.212.93', '2019-02-21 19:58:52'),
(91, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular A', 43, 5, '179.99.212.93', '2019-02-21 20:00:28'),
(92, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular B', 43, 5, '179.99.212.93', '2019-02-21 20:00:37'),
(93, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular C', 43, 5, '179.99.212.93', '2019-02-21 20:01:11'),
(94, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular D', 43, 5, '179.99.212.93', '2019-02-21 20:01:16'),
(95, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular E', 43, 5, '179.99.212.93', '2019-02-21 20:01:27'),
(96, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular F', 43, 5, '179.99.212.93', '2019-02-21 20:01:37'),
(97, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular G', 43, 5, '179.99.212.93', '2019-02-21 20:01:43'),
(98, 'Cadastrou nova empresa', 'Nome da nova empresa: Particular H', 43, 5, '179.99.212.93', '2019-02-21 20:01:52'),
(99, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:37:27'),
(100, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:37:47'),
(101, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:37:59'),
(102, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:38:07'),
(103, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:38:15'),
(104, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:38:23'),
(105, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:38:37'),
(106, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:38:53'),
(107, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:39:08'),
(108, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:39:19'),
(109, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:39:31'),
(110, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:39:50'),
(111, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:40:04'),
(112, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-21 20:40:13'),
(113, 'Logou no sistema', '---', 43, 5, '177.140.240.82', '2019-02-22 01:52:58'),
(114, 'Logou no sistema', '---', 42, 5, '177.140.240.82', '2019-02-22 01:55:36'),
(115, 'Enviou nova mensagem', 'Nome do documento: ', 42, 5, '177.140.240.82', '2019-02-22 01:56:14'),
(116, 'Enviou nova mensagem', 'Nome do documento: ', 43, 5, '177.140.240.82', '2019-02-22 01:56:40'),
(117, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-22 13:27:44'),
(118, 'Cadastrou nova forma de entrega', 'Nome da forma de entrega: Retirar', 43, 5, '179.99.212.93', '2019-02-22 13:28:50'),
(119, 'Cadastrou nova forma de entrega', 'Nome da forma de entrega: Motoboy', 43, 5, '179.99.212.93', '2019-02-22 13:29:56'),
(120, 'Cadastrou nova forma de entrega', 'Nome da forma de entrega: Correios', 43, 5, '179.99.212.93', '2019-02-22 13:30:03'),
(121, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-22 13:30:41'),
(122, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:16:34'),
(123, 'Cadastrou novo cliente', 'Nome do cliente: Paciente TESTE', 43, 5, '179.99.212.93', '2019-02-22 14:17:04'),
(124, 'Cadastrou novo registro', 'ID do registro: 67', 43, 5, '179.99.212.93', '2019-02-22 14:17:37'),
(125, 'Cadastrou novo registro', 'ID do registro: 68', 43, 5, '179.99.212.93', '2019-02-22 14:24:41'),
(126, 'Cadastrou novo registro', 'ID do registro: 69', 43, 5, '179.99.212.93', '2019-02-22 14:27:58'),
(127, 'Cadastrou novo registro', 'ID do registro: 70', 43, 5, '179.99.212.93', '2019-02-22 14:29:41'),
(128, 'Cadastrou novo registro', 'ID do registro: 71', 43, 5, '179.99.212.93', '2019-02-22 14:49:56'),
(129, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:52:22'),
(130, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:56:09'),
(131, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:56:28'),
(132, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:57:12'),
(133, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:58:00'),
(134, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:58:29'),
(135, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 14:59:03'),
(136, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 15:01:04'),
(137, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 15:01:16'),
(138, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 15:01:31'),
(139, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 15:07:05'),
(140, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 15:15:39'),
(141, 'Cadastrou novo novo documento', 'Nome do documento: Atestado trabalhista', 43, 5, '179.99.212.93', '2019-02-22 15:16:32'),
(142, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 15:16:43'),
(143, 'Cadastrou novo novo documento', 'Nome do documento: Recibo', 43, 5, '179.99.212.93', '2019-02-22 16:04:46'),
(144, 'Atualizou documento', 'ID do documento: 7, Nome do documento: Recibo', 43, 5, '179.99.212.93', '2019-02-22 16:06:54'),
(145, 'Cadastrou novo cliente', 'Nome do cliente: Ronaldo NazÃ¡rio de Lima', 43, 5, '179.99.212.93', '2019-02-22 17:47:19'),
(146, 'Cadastrou novo registro', 'ID do registro: 72', 43, 5, '179.99.212.93', '2019-02-22 17:47:45'),
(147, 'Cadastrou novo cliente', 'Nome do cliente: Gabriel Barban', 43, 5, '179.99.212.93', '2019-02-22 17:51:37'),
(148, 'Cadastrou novo registro', 'ID do registro: 73', 43, 5, '179.99.212.93', '2019-02-22 17:52:05'),
(149, 'Puxou histÃ³rico de cliente', 'ID do cliente: 27', 43, 5, '179.99.212.93', '2019-02-22 17:56:13'),
(150, 'Puxou histÃ³rico de cliente', 'ID do cliente: 27', 43, 5, '179.99.212.93', '2019-02-22 18:49:51'),
(151, 'Puxou histÃ³rico de cliente', 'ID do cliente: 27', 43, 5, '179.99.212.93', '2019-02-22 18:53:38'),
(152, 'Puxou histÃ³rico de cliente', 'ID do cliente: 27', 43, 5, '179.99.212.93', '2019-02-22 18:58:51'),
(153, 'Puxou histÃ³rico de cliente', 'ID do cliente: 27', 43, 5, '179.99.212.93', '2019-02-22 18:59:09'),
(154, 'Puxou histÃ³rico de cliente', 'ID do cliente: 25', 43, 5, '179.99.212.93', '2019-02-22 18:59:24'),
(155, 'Atualizou documento', 'ID do documento: 7, Nome do documento: Recibo', 43, 5, '179.99.212.93', '2019-02-22 19:04:21'),
(156, 'Atualizou documento', 'ID do documento: 6, Nome do documento: Atestado trabalhista', 43, 5, '179.99.212.93', '2019-02-22 19:04:32'),
(157, 'Atualizou documento', 'ID do documento: 5, Nome do documento: Atestado escolar', 43, 5, '179.99.212.93', '2019-02-22 19:04:47'),
(158, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-22 20:02:02'),
(159, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-22 20:02:07'),
(160, 'Gerou relatorio de registros por parceiros', '---', 43, 5, '179.99.212.93', '2019-02-22 20:02:56'),
(161, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-22 20:03:06'),
(162, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-22 20:03:08'),
(163, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-22 20:03:09'),
(164, 'Logou no sistema', '---', 1, 1, '191.13.245.22', '2019-02-25 21:12:35'),
(165, 'Logou no sistema', '---', 1, 1, '201.48.167.105', '2019-02-26 10:43:36'),
(166, 'Atualizou saÃ­da', 'ID da saÃ­da: 8', 1, 1, '201.48.167.105', '2019-02-26 10:45:55'),
(167, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-26 13:55:48'),
(168, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-02-26 13:56:18'),
(169, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-26 13:56:31'),
(170, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-02-28 13:52:17'),
(171, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-28 14:17:17'),
(172, 'Listou valores de uma empresa', 'ID da empresa: 31', 43, 5, '179.99.212.93', '2019-02-28 14:17:26'),
(173, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-28 14:17:29'),
(174, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-28 14:27:00'),
(175, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-02-28 14:27:02'),
(176, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-28 15:52:08'),
(177, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-02-28 15:52:13'),
(178, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-28 16:54:22'),
(179, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-02-28 16:54:24'),
(180, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-02-28 20:16:26'),
(181, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-01 13:37:57'),
(182, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-01 13:59:24'),
(183, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-01 13:59:54'),
(184, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-01 13:59:57'),
(185, 'Listou valores de uma empresa', 'ID da empresa: 34', 43, 5, '179.99.212.93', '2019-03-01 14:00:22'),
(186, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-01 16:46:09'),
(187, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-01 18:55:43'),
(188, 'Logou no sistema', '---', 5, 5, '189.120.120.145', '2019-03-04 02:41:22'),
(189, 'Logou no sistema', '---', 5, 5, '189.120.120.145', '2019-03-04 02:42:23'),
(190, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-06 16:37:09'),
(191, 'Logou no sistema', '---', 5, 5, '179.99.212.93', '2019-03-06 16:37:32'),
(192, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-06 16:47:40'),
(193, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-06 16:48:08'),
(194, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-03-06 16:57:23'),
(195, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-03-06 16:57:28'),
(196, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-06 16:57:34'),
(197, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-03-06 16:57:38'),
(198, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-03-06 17:00:56'),
(199, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-03-06 17:01:07'),
(200, 'Listou valores de uma empresa', 'ID da empresa: 28', 43, 5, '179.99.212.93', '2019-03-06 17:01:23'),
(201, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-06 17:01:29'),
(202, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-06 17:01:39'),
(203, 'Listou valores de uma empresa', 'ID da empresa: 29', 43, 5, '179.99.212.93', '2019-03-06 17:04:43'),
(204, 'Listou valores de uma empresa', 'ID da empresa: 29', 43, 5, '179.99.212.93', '2019-03-06 17:24:12'),
(205, 'Listou valores de uma empresa', 'ID da empresa: 30', 43, 5, '179.99.212.93', '2019-03-06 17:24:16'),
(206, 'Listou valores de uma empresa', 'ID da empresa: 30', 43, 5, '179.99.212.93', '2019-03-06 17:26:43'),
(207, 'Listou valores de uma empresa', 'ID da empresa: 30', 43, 5, '179.99.212.93', '2019-03-06 17:26:45'),
(208, 'Listou valores de uma empresa', 'ID da empresa: 30', 43, 5, '179.99.212.93', '2019-03-06 17:26:46'),
(209, 'Listou valores de uma empresa', 'ID da empresa: 30', 43, 5, '179.99.212.93', '2019-03-06 17:26:47'),
(210, 'Listou valores de uma empresa', 'ID da empresa: 30', 43, 5, '179.99.212.93', '2019-03-06 17:31:47'),
(211, 'Listou valores de uma empresa', 'ID da empresa: 31', 43, 5, '179.99.212.93', '2019-03-06 17:35:31'),
(212, 'Listou valores de uma empresa', 'ID da empresa: 31', 43, 5, '179.99.212.93', '2019-03-06 17:35:54'),
(213, 'Listou valores de uma empresa', 'ID da empresa: 33', 43, 5, '179.99.212.93', '2019-03-06 17:40:40'),
(214, 'Listou valores de uma empresa', 'ID da empresa: 34', 43, 5, '179.99.212.93', '2019-03-06 17:43:05'),
(215, 'Listou valores de uma empresa', 'ID da empresa: 34', 43, 5, '179.99.212.93', '2019-03-06 17:44:08'),
(216, 'Listou valores de uma empresa', 'ID da empresa: 34', 43, 5, '179.99.212.93', '2019-03-06 17:44:19'),
(217, 'Atualizou dados da companhia', '---', 43, 5, '179.99.212.93', '2019-03-06 17:48:31'),
(218, 'Atualizou dados da companhia', '---', 43, 5, '179.99.212.93', '2019-03-06 17:48:55'),
(219, 'Listou valores de uma empresa', 'ID da empresa: 34', 43, 5, '179.99.212.93', '2019-03-06 17:51:20'),
(220, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-06 17:51:35'),
(221, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-06 17:52:33'),
(222, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-03-06 17:52:44'),
(223, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-03-06 17:52:48'),
(224, 'Enviou nova mensagem', 'Nome do documento: ', 43, 5, '179.99.212.93', '2019-03-06 18:11:47'),
(225, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-03-06 18:12:49'),
(226, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-06 18:13:27'),
(227, 'Puxou histÃ³rico de cliente', 'ID do cliente: 1', 1, 1, '179.99.212.93', '2019-03-06 18:13:37'),
(228, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.99.212.93', '2019-03-06 18:13:49'),
(229, 'Puxou histÃ³rico de cliente', 'ID do cliente: 4', 1, 1, '179.99.212.93', '2019-03-06 18:14:43'),
(230, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.99.212.93', '2019-03-06 18:14:46'),
(231, 'Atualizou dados do monitor', '---', 1, 1, '179.99.212.93', '2019-03-06 18:16:09'),
(232, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-03-06 19:47:56'),
(233, 'Enviou nova mensagem', 'Nome do documento: ', 42, 5, '179.99.212.93', '2019-03-06 19:49:21'),
(234, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-06 20:21:37'),
(235, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-07 12:59:42'),
(236, 'Listou valores de uma empresa', 'ID da empresa: 31', 43, 5, '179.99.212.93', '2019-03-07 13:00:19'),
(237, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-03-07 13:07:02'),
(238, 'Enviou nova mensagem', 'Nome do documento: ', 42, 5, '179.99.212.93', '2019-03-07 13:07:18'),
(239, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-07 13:28:59'),
(240, 'Logou no sistema', '---', 40, 1, '179.99.212.93', '2019-03-07 17:01:57'),
(241, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-07 18:23:16'),
(242, 'Enviou nova mensagem', 'Nome do documento: ', 43, 5, '179.99.212.93', '2019-03-07 19:34:19'),
(243, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-03-07 19:34:23'),
(244, 'Listou valores de uma empresa', 'ID da empresa: 28', 42, 5, '179.99.212.93', '2019-03-07 19:34:37'),
(245, 'Listou valores de uma empresa', 'ID da empresa: 28', 42, 5, '179.99.212.93', '2019-03-07 19:34:43'),
(246, 'Atualizou dados da companhia', '---', 42, 5, '179.99.212.93', '2019-03-07 19:37:22'),
(247, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-07 20:15:41'),
(248, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.99.212.93', '2019-03-07 20:15:52'),
(249, 'Logou no sistema', '---', 42, 5, '201.53.246.174', '2019-03-08 00:38:04'),
(250, 'Gerou relatorio de parceiros', '---', 42, 5, '201.53.246.174', '2019-03-08 00:45:42'),
(251, 'Logou no sistema', '---', 42, 5, '201.82.227.145', '2019-03-08 12:19:23'),
(252, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-08 13:17:59'),
(253, 'Enviou nova mensagem', 'Nome do documento: ', 43, 5, '179.99.212.93', '2019-03-08 13:18:50'),
(254, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-03-08 13:19:00'),
(255, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-03-08 13:19:05'),
(256, 'Gerou relatorio de parceiros', '---', 43, 5, '179.99.212.93', '2019-03-08 13:19:10'),
(257, 'Listou valores de uma empresa', 'ID da empresa: 27', 43, 5, '179.99.212.93', '2019-03-08 13:19:28'),
(258, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-03-08 13:22:15'),
(259, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-08 17:44:24'),
(260, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-08 17:44:24'),
(261, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-08 21:18:50'),
(262, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-12 20:28:36'),
(263, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.99.212.93', '2019-03-12 20:29:08'),
(264, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-15 14:53:30'),
(265, 'Gerou relatorio de caixa', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:10'),
(266, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '179.99.212.93', '2019-03-15 14:54:21'),
(267, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-03-15 14:54:24'),
(268, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-15 14:54:29'),
(269, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '179.99.212.93', '2019-03-15 14:54:32'),
(270, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-03-15 14:54:34'),
(271, 'Gerou relatorio de parceiros', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:39'),
(272, 'Gerou relatorio de parceiros', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:42'),
(273, 'Gerou relatorio de parceiros', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:47'),
(274, 'Gerou relatorio de parceiros', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:50'),
(275, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:54'),
(276, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '179.99.212.93', '2019-03-15 14:54:56'),
(277, 'Logou no sistema', '---', 40, 1, '186.220.64.121', '2019-03-16 23:27:18'),
(278, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-18 18:35:13'),
(279, 'Logou no sistema', '---', 42, 5, '201.82.227.145', '2019-03-18 20:03:45'),
(280, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-19 16:37:19'),
(281, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-20 16:48:27'),
(282, 'Cadastrou nova campanha', 'Nome: teste', 43, 5, '179.99.212.93', '2019-03-20 16:59:52'),
(283, 'Deletou campanha', '-------', 43, 5, '179.99.212.93', '2019-03-20 17:43:24'),
(284, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-20 19:24:00'),
(285, 'Gerou relatorio de registros', '---', 1, 1, '179.99.212.93', '2019-03-20 19:35:21'),
(286, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-21 13:11:36'),
(287, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-21 14:44:06'),
(288, 'Logou no sistema', '---', 40, 1, '179.99.212.93', '2019-03-21 16:59:04'),
(289, 'Gerou relatorio de caixa', '---', 40, 1, '179.99.212.93', '2019-03-21 16:59:25'),
(290, 'Gerou relatorio de caixa', '---', 40, 1, '179.99.212.93', '2019-03-21 16:59:27'),
(291, 'Gerou relatorio de caixa', '---', 40, 1, '179.99.212.93', '2019-03-21 16:59:27'),
(292, 'Gerou relatorio de caixa', '---', 40, 1, '179.99.212.93', '2019-03-21 16:59:28'),
(293, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-22 15:33:16'),
(294, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-22 16:53:30'),
(295, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '179.99.212.93', '2019-03-22 16:53:54'),
(296, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-03-22 16:53:59'),
(297, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '179.99.212.93', '2019-03-22 16:55:30'),
(298, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-03-22 16:55:33'),
(299, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-03-22 16:55:35'),
(300, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-22 16:55:39'),
(301, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-22 16:56:50'),
(302, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-22 16:57:02'),
(303, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-22 16:57:05'),
(304, 'Logou no sistema', '---', 43, 5, '179.99.212.93', '2019-03-22 17:18:52'),
(305, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-26 17:34:46'),
(306, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-26 20:39:17'),
(307, 'Logou no sistema', '---', 1, 1, '201.48.167.105', '2019-03-27 14:51:25'),
(308, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-27 20:41:20'),
(309, 'Puxou histÃ³rico de cliente', 'ID do cliente: 4', 1, 1, '179.99.212.93', '2019-03-27 20:42:04'),
(310, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.99.212.93', '2019-03-27 20:42:07'),
(311, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-03-27 20:42:56'),
(312, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '179.99.212.93', '2019-03-27 20:42:59'),
(313, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '179.99.212.93', '2019-03-27 20:43:01'),
(314, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-03-27 20:43:03'),
(315, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-03-27 20:43:06'),
(316, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-28 13:37:49'),
(317, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-28 17:53:56'),
(318, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-03-29 15:47:01'),
(319, 'Gerou relatorio de parceiros', '---', 1, 1, '179.99.212.93', '2019-03-29 15:49:14'),
(320, 'Logou no sistema', '---', 41, 4, '179.99.212.93', '2019-04-01 13:27:32'),
(321, 'Atualizou dados da companhia', '---', 41, 4, '179.99.212.93', '2019-04-01 13:27:59'),
(322, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: AntÃ´nio', 41, 4, '179.99.212.93', '2019-04-01 13:28:24'),
(323, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-01 13:28:47'),
(324, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 41', 48, 4, '179.99.212.93', '2019-04-01 13:28:55'),
(325, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-01 17:04:33'),
(326, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-01 20:01:25'),
(327, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-04 20:07:33'),
(328, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-08 12:49:48'),
(329, 'Atualizou dados da companhia', '---', 48, 4, '179.99.212.93', '2019-04-08 12:50:00'),
(330, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-10 13:48:26'),
(331, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-10 14:57:39'),
(332, 'Atualizou dados da companhia', '---', 48, 4, '179.99.212.93', '2019-04-10 14:58:20'),
(333, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-10 20:06:26'),
(334, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-10 20:08:15'),
(335, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '179.99.212.93', '2019-04-10 20:08:27'),
(336, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-04-10 20:08:30'),
(337, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-04-10 20:08:56'),
(338, 'Gerou relatorio de parceiros', '---', 1, 1, '179.99.212.93', '2019-04-10 20:09:21'),
(339, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '179.99.212.93', '2019-04-10 20:09:27'),
(340, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '179.99.212.93', '2019-04-10 20:09:28'),
(341, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-04-10 20:09:31'),
(342, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-04-10 20:09:35'),
(343, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-04-10 20:09:49'),
(344, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Rita Lee', 1, 1, '179.99.212.93', '2019-04-10 20:10:40'),
(345, 'Logou no sistema', '---', 49, 1, '179.99.212.93', '2019-04-10 20:11:13'),
(346, 'Listou valores de uma empresa', 'ID da empresa: 9', 49, 1, '179.99.212.93', '2019-04-10 20:12:10'),
(347, 'Atualizou valor', 'Nome do valor: Telerradiografia lateral', 49, 1, '179.99.212.93', '2019-04-10 20:12:17'),
(348, 'Listou valores de uma empresa', 'ID da empresa: 9', 49, 1, '179.99.212.93', '2019-04-10 20:12:17'),
(349, 'Enviou nova mensagem', 'Nome do documento: ', 49, 1, '179.99.212.93', '2019-04-10 20:12:33'),
(350, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-10 20:12:42'),
(351, 'Logou no sistema', '---', 49, 1, '179.99.212.93', '2019-04-10 20:13:15'),
(352, 'Enviou nova mensagem', 'Nome do documento: ', 1, 1, '179.99.212.93', '2019-04-10 20:13:52'),
(353, 'Enviou nova mensagem', 'Nome do documento: ', 49, 1, '179.99.212.93', '2019-04-10 20:14:01'),
(354, 'Enviou nova mensagem', 'Nome do documento: ', 49, 1, '179.99.212.93', '2019-04-10 20:14:08'),
(355, 'Enviou nova mensagem', 'Nome do documento: ', 49, 1, '179.99.212.93', '2019-04-10 20:14:20'),
(356, 'Enviou nova mensagem', 'Nome do documento: ', 1, 1, '179.99.212.93', '2019-04-10 20:23:45'),
(357, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-11 14:04:27'),
(358, 'Logou no sistema', '---', 48, 4, '179.99.212.93', '2019-04-15 20:58:24'),
(359, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-16 13:36:28'),
(361, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-04-22 17:55:57'),
(362, 'Logou no sistema', '---', 42, 5, '179.99.212.93', '2019-04-22 18:55:11'),
(363, 'Enviou nova mensagem', 'Nome do documento: ', 42, 5, '179.99.212.93', '2019-04-22 18:55:23'),
(364, 'Enviou nova mensagem', 'Nome do documento: ', 42, 5, '179.99.212.93', '2019-04-22 18:59:02'),
(365, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-23 15:04:16'),
(366, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 40', 1, 1, '179.99.212.93', '2019-04-23 15:04:28'),
(367, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 49', 1, 1, '179.99.212.93', '2019-04-23 15:04:31'),
(368, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Reginaldo Daniel de Godoi ', 1, 1, '179.99.212.93', '2019-04-23 15:04:57'),
(369, 'Logou no sistema', '---', 50, 1, '179.99.212.93', '2019-04-23 15:05:11'),
(370, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-04-23 19:42:59'),
(371, 'Logou no sistema', '---', 48, 4, '201.81.172.77', '2019-04-30 19:16:20'),
(372, 'Cadastrou nova forma de entrega', 'Nome da forma de entrega: jorge', 48, 4, '201.81.172.77', '2019-04-30 19:17:47'),
(373, 'Desativou entrega', 'ID da entrega: 10', 48, 4, '201.81.172.77', '2019-04-30 19:17:54'),
(374, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-05-03 18:53:13'),
(375, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-05-10 21:22:05'),
(376, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-05-22 14:16:29'),
(377, 'Atualizou parceiro', 'ID do parceiro: 5', 1, 1, '179.99.212.93', '2019-05-22 14:21:35'),
(378, 'Cadastrou nova campanha', 'Nome: CAMPANHA TESTE', 1, 1, '179.99.212.93', '2019-05-22 14:22:54'),
(379, 'Atualizou dados da companhia', '---', 1, 1, '179.99.212.93', '2019-05-22 14:24:30'),
(380, 'Atualizou dados da companhia', '---', 1, 1, '179.99.212.93', '2019-05-22 14:25:28'),
(381, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-05-22 14:27:51'),
(382, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '179.99.212.93', '2019-05-22 14:27:55'),
(383, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-05-22 14:28:01'),
(384, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '179.99.212.93', '2019-05-22 14:28:05'),
(385, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '179.99.212.93', '2019-05-22 14:28:14'),
(386, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '179.99.212.93', '2019-05-22 14:28:21'),
(387, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '179.99.212.93', '2019-05-22 14:28:26'),
(388, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-05-22 14:28:29'),
(389, 'Atualizou valor', 'Nome do valor: Telerradiografia lateral', 1, 1, '179.99.212.93', '2019-05-22 14:28:44'),
(390, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-05-22 14:28:44'),
(391, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.99.212.93', '2019-05-22 14:28:59'),
(392, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-05-30 17:00:21'),
(393, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Ana pailq da silva foli', 1, 1, '179.99.212.93', '2019-05-30 17:00:53'),
(394, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Adriana 03', 1, 1, '179.99.212.93', '2019-05-30 17:01:36'),
(395, 'Logou no sistema', '---', 51, 1, '179.99.212.93', '2019-05-30 17:03:40'),
(396, 'Logou no sistema', '---', 52, 1, '179.99.212.93', '2019-05-30 17:05:12'),
(397, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-05-30 17:08:39'),
(398, 'Logou no sistema', '---', 51, 1, '179.241.196.44', '2019-05-30 17:41:45'),
(399, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-05-31 15:26:13'),
(400, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-06-03 13:57:28'),
(401, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Aleandro Jesus da Silva', 1, 1, '179.99.212.93', '2019-06-03 13:58:02'),
(402, 'Logou no sistema', '---', 53, 1, '179.99.212.93', '2019-06-03 13:58:18'),
(403, 'Logou no sistema', '---', 53, 1, '179.99.212.93', '2019-06-03 14:04:09'),
(404, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-06-06 14:28:49'),
(405, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Fabia Andrade', 1, 1, '179.99.212.93', '2019-06-06 14:29:30'),
(406, 'Logou no sistema', '---', 54, 1, '179.99.212.93', '2019-06-06 14:29:53'),
(407, 'Logou no sistema', '---', 1, 1, '179.99.212.93', '2019-06-06 14:33:57'),
(408, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-12 18:36:35'),
(409, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-12 18:41:08'),
(410, 'Logou no sistema', '---', 1, 1, '143.208.20.115', '2019-06-12 18:44:29'),
(411, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-12 18:45:25'),
(412, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-13 20:55:15'),
(413, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: ClÃ¡udio LourenÃ§o Rocha', 1, 1, '179.191.101.70', '2019-06-13 21:00:14'),
(414, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Gabriel Barban Rocha', 1, 1, '179.191.101.70', '2019-06-13 21:01:12'),
(415, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-14 14:16:54'),
(416, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: wilson', 1, 1, '177.33.142.94', '2019-06-14 19:08:39'),
(417, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-17 17:06:51'),
(418, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.191.101.70', '2019-06-17 17:07:58'),
(419, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Marina de Almeida Cunzolo', 1, 1, '187.57.228.183', '2019-06-17 18:21:49'),
(420, 'Logou no sistema', '---', 58, 1, '187.57.228.183', '2019-06-17 18:27:53'),
(421, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-17 20:48:49'),
(422, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '179.191.101.70', '2019-06-17 20:49:01'),
(423, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Eduardo GonÃ§alves', 1, 1, '186.216.138.97', '2019-06-18 17:09:05'),
(424, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Eduardo GonÃ§alves', 1, 1, '186.216.138.97', '2019-06-18 17:09:43'),
(425, 'Gerou relatorio de registros', '---', 60, 1, '186.216.138.97', '2019-06-18 17:11:09'),
(426, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-18 17:21:33'),
(427, 'Puxou histÃ³rico de cliente', 'ID do cliente: 1', 1, 1, '179.191.101.70', '2019-06-18 17:22:31'),
(428, 'Puxou histÃ³rico de cliente', 'ID do cliente: 1', 1, 1, '179.191.101.70', '2019-06-18 17:22:48'),
(429, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-19 15:02:51'),
(430, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 56', 1, 1, '179.191.101.70', '2019-06-19 15:03:06'),
(431, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Gabriel Barban', 1, 1, '179.191.101.70', '2019-06-19 15:03:30'),
(432, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: teeeste', 1, 1, '179.191.101.70', '2019-06-19 15:04:55'),
(433, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 62', 1, 1, '179.191.101.70', '2019-06-19 15:05:17'),
(434, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Kadu Morais', 1, 1, '179.191.101.70', '2019-06-19 15:07:12'),
(435, 'Logou no sistema', '---', 63, 1, '179.191.101.70', '2019-06-19 15:07:28'),
(436, 'Logou no sistema', '---', 63, 1, '201.48.167.105', '2019-06-19 15:09:56'),
(437, 'Logou no sistema', '---', 61, 1, '179.191.101.70', '2019-06-19 20:41:10'),
(438, 'Logou no sistema', '---', 61, 1, '179.191.101.70', '2019-06-19 21:00:30'),
(439, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 55', 61, 1, '179.191.101.70', '2019-06-19 21:01:48'),
(440, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Mariana Gomes do nascimento ', 1, 1, '45.162.8.6', '2019-06-19 22:33:55'),
(441, 'Logou no sistema', '---', 61, 1, '191.39.30.255', '2019-06-20 02:12:38'),
(442, 'Logou no sistema', '---', 61, 1, '191.39.7.163', '2019-06-20 13:43:20'),
(443, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '191.39.7.163', '2019-06-20 13:44:48'),
(444, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '191.39.7.163', '2019-06-20 13:45:27'),
(445, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '191.39.7.163', '2019-06-20 13:45:31'),
(446, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '191.39.7.163', '2019-06-20 13:46:10'),
(447, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '191.39.7.163', '2019-06-20 13:46:46'),
(448, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '191.39.7.163', '2019-06-20 13:47:39'),
(449, 'Logou no sistema', '---', 63, 1, '191.39.7.163', '2019-06-20 13:48:19'),
(450, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Eunice de Jesus Carneiro', 1, 1, '189.110.43.190', '2019-06-21 00:16:38'),
(451, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: Testa tudo', 1, 1, '152.233.210.92', '2019-06-21 01:17:07'),
(452, 'Puxou histÃ³rico de cliente', 'ID do cliente: 15', 66, 1, '152.233.210.92', '2019-06-21 01:18:36'),
(453, 'Logou no sistema', '---', 1, 1, '187.109.41.244', '2019-06-21 20:27:04'),
(454, 'Puxou histÃ³rico de cliente', 'ID do cliente: 15', 1, 1, '187.109.41.244', '2019-06-21 20:28:02'),
(455, 'Puxou histÃ³rico de cliente', 'ID do cliente: 15', 1, 1, '187.109.41.244', '2019-06-21 20:29:15'),
(456, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '187.109.41.244', '2019-06-21 20:29:35'),
(457, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '187.109.41.244', '2019-06-21 20:30:13'),
(458, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:19'),
(459, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:25'),
(460, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:28'),
(461, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:31'),
(462, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:34'),
(463, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:35'),
(464, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:42'),
(465, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:45'),
(466, 'Gerou relatorio de registros por parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:47'),
(467, 'Gerou relatorio de parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:50'),
(468, 'Gerou relatorio de parceiros', '---', 1, 1, '187.109.41.244', '2019-06-21 20:30:53'),
(469, 'Logou no sistema', '---', 61, 1, '187.109.41.244', '2019-06-21 20:31:48'),
(470, 'Logou no sistema', '---', 61, 1, '187.109.41.244', '2019-06-21 20:32:26'),
(471, 'Logou no sistema', '---', 61, 1, '187.109.41.244', '2019-06-21 20:32:26'),
(472, 'Logou no sistema', '---', 61, 1, '187.109.41.244', '2019-06-21 20:32:27'),
(473, 'Logou no sistema', '---', 61, 1, '187.109.41.244', '2019-06-21 20:32:27'),
(474, 'Logou no sistema', '---', 61, 1, '187.109.41.244', '2019-06-21 20:32:27'),
(475, 'Logou no sistema', '---', 61, 1, '191.39.22.230', '2019-06-21 21:35:06'),
(476, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-25 20:38:05'),
(477, 'Deletou usuÃ¡rio', 'ID do usuÃ¡rio: 66', 1, 1, '179.191.101.70', '2019-06-25 20:47:40'),
(478, 'Logou no sistema', '---', 1, 1, '179.191.101.70', '2019-06-26 14:04:27'),
(479, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.191.101.70', '2019-06-26 17:51:14'),
(480, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '179.191.101.70', '2019-06-26 17:52:12'),
(481, 'Cadastro novo usuÃ¡rio', 'Nome do novo usuÃ¡rio: vdvvdv', 1, 1, '187.235.146.26', '2019-07-04 00:13:52'),
(482, 'Gerou relatorio de registros', '---', 67, 1, '187.235.93.195', '2019-07-04 00:15:59'),
(483, 'Gerou relatorio de registros', '---', 67, 1, '187.235.93.195', '2019-07-04 00:16:10'),
(484, 'Gerou relatorio de registros', '---', 67, 1, '187.235.184.141', '2019-07-04 00:16:14'),
(485, 'Gerou relatorio de registros', '---', 67, 1, '187.235.184.141', '2019-07-04 00:16:18'),
(486, 'Gerou relatorio de registros', '---', 67, 1, '187.235.153.25', '2019-07-04 00:16:23'),
(487, 'Gerou relatorio de registros', '---', 67, 1, '187.235.153.25', '2019-07-04 00:16:27'),
(488, 'Gerou relatorio de parceiros', '---', 67, 1, '187.235.153.25', '2019-07-04 00:16:32'),
(489, 'Logou no sistema', '---', 61, 1, '179.191.101.70', '2019-07-11 18:51:21'),
(490, 'Logou no sistema', '---', 61, 1, '179.191.101.70', '2019-07-11 18:51:27'),
(491, 'Logou no sistema', '---', 61, 1, '179.191.101.70', '2019-07-11 18:51:27'),
(492, 'Logou no sistema', '---', 61, 1, '179.191.101.70', '2019-07-12 21:23:08'),
(493, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '179.191.101.70', '2019-07-12 21:24:43'),
(494, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '179.191.101.70', '2019-07-12 21:24:50'),
(495, 'Logou no sistema', '---', 61, 1, '200.232.163.133', '2019-07-22 12:53:46'),
(496, 'Enviou nova mensagem', 'Nome do documento: ', 61, 1, '200.232.163.133', '2019-07-22 17:03:13'),
(497, 'Mudou status de registro', 'ID do registro: 64', 61, 1, '200.232.163.133', '2019-07-22 17:58:55'),
(498, 'Listou valores de uma empresa', 'ID da empresa: 9', 61, 1, '200.232.163.133', '2019-07-22 18:00:24'),
(499, 'Listou valores de uma empresa', 'ID da empresa: 9', 61, 1, '200.232.163.133', '2019-07-22 18:00:30'),
(500, 'Logou no sistema', '---', 1, 1, '200.232.163.133', '2019-07-24 19:52:05'),
(501, 'Logou no sistema', '---', 61, 1, '172.17.0.1', '2019-07-31 19:07:17'),
(502, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-07-31 19:26:29'),
(503, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-01 18:55:00'),
(504, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-01 20:05:43'),
(505, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-01 20:06:27'),
(506, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-01 20:17:28'),
(507, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-01 20:18:17'),
(508, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-01 20:18:29'),
(509, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-08-21 19:57:17'),
(510, 'Cadastrou novo registro', 'ID do registro: 67', 1, 1, '172.17.0.1', '2019-08-22 18:04:48'),
(511, 'Cadastrou novo registro', 'ID do registro: 68', 1, 1, '172.17.0.1', '2019-08-23 21:21:28'),
(512, 'Cadastrou novo cliente', 'Nome do cliente: Rafael Basquens', 1, 1, '172.17.0.1', '2019-08-23 21:26:43'),
(513, 'Cadastrou novo registro', 'ID do registro: 69', 1, 1, '172.17.0.1', '2019-08-23 21:27:07'),
(514, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-08-26 14:14:31'),
(515, 'Deletou campanha', '-------', 1, 1, '172.17.0.1', '2019-08-26 14:34:53'),
(516, 'Gerou relatorio de registros', '---', 1, 1, '172.17.0.1', '2019-08-26 14:37:13'),
(517, 'Gerou relatorio de registros', '---', 1, 1, '172.17.0.1', '2019-08-26 14:37:18'),
(518, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-08-26 14:38:13'),
(519, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-08-26 14:38:18'),
(520, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '172.17.0.1', '2019-08-26 14:38:21'),
(521, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '172.17.0.1', '2019-08-26 14:38:26'),
(522, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-08-26 14:38:43'),
(523, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-08-26 14:39:12'),
(524, 'Atualizou valor', 'Nome do valor: Radiografia Periapical', 1, 1, '172.17.0.1', '2019-08-26 14:39:18'),
(525, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-08-26 14:39:19'),
(526, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-08-26 14:39:28'),
(527, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '172.17.0.1', '2019-08-26 14:40:25'),
(528, 'Cadastrou novo status', 'Nome do status: ', 1, 1, '172.17.0.1', '2019-08-26 18:37:38'),
(529, 'Cadastrou novo relatÃ³rio customizado', 'Nome do relatÃ³rio customizado: teste 3', 1, 1, '172.17.0.1', '2019-08-26 18:47:49'),
(530, 'Deletou status', 'ID do status: 20', 1, 1, '172.17.0.1', '2019-08-26 19:29:18'),
(531, 'Deletou relatÃ³rio customizado', 'ID do relatÃ³rio customizado: ', 1, 1, '172.17.0.1', '2019-08-26 19:36:32'),
(532, 'Deletou relatÃ³rio customizado', 'ID do relatÃ³rio customizado: 2', 1, 1, '172.17.0.1', '2019-08-26 19:37:38'),
(533, 'Deletou relatÃ³rio customizado', 'ID do relatÃ³rio customizado: 1', 1, 1, '172.17.0.1', '2019-08-26 19:48:44'),
(534, 'Cadastrou novo relatÃ³rio customizado', 'Nome do relatÃ³rio customizado: Relatorio consolidado', 1, 1, '172.17.0.1', '2019-08-26 20:54:25'),
(535, 'Deletou relatÃ³rio customizado', 'ID do relatÃ³rio customizado: 3', 1, 1, '172.17.0.1', '2019-08-26 20:54:29'),
(536, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-10-26 11:50:48'),
(537, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-10-26 13:47:31'),
(538, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-10-26 13:48:47'),
(539, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-10-29 19:52:21'),
(540, 'Atualizou documento', 'ID do documento: 1, Nome do documento: Atestado', 1, 1, '172.17.0.1', '2019-10-29 20:14:55'),
(541, 'Cadastrou nova campanha', 'Nome: envio teste', 1, 1, '172.17.0.1', '2019-10-29 20:32:09'),
(542, 'Atualizou dados da campanha', 'ID da campanha: 1', 1, 1, '172.17.0.1', '2019-10-29 20:35:23'),
(543, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-11-22 17:10:49'),
(544, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '172.17.0.1', '2019-11-22 17:12:46'),
(545, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-11-22 17:12:49'),
(546, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '172.17.0.1', '2019-11-22 17:13:01'),
(547, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '172.17.0.1', '2019-11-22 17:13:03'),
(548, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-11-22 17:14:40'),
(549, 'Puxou histÃ³rico de cliente', 'ID do cliente: 3', 1, 1, '172.17.0.1', '2019-11-22 17:16:26'),
(550, 'Puxou histÃ³rico de cliente', 'ID do cliente: 7', 1, 1, '172.17.0.1', '2019-11-22 17:16:32'),
(551, 'Puxou histÃ³rico de cliente', 'ID do cliente: 1', 1, 1, '172.17.0.1', '2019-11-22 17:16:34'),
(552, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-11-26 19:26:14'),
(553, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 18:50:56'),
(554, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 20:05:57'),
(555, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 20:57:08'),
(556, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 21:08:56'),
(557, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:07:52'),
(558, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:08:32'),
(559, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:25'),
(560, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:27'),
(561, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:29'),
(562, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:32'),
(563, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:34'),
(564, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:36'),
(565, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:09:57');
INSERT INTO `log` (`id`, `acao`, `dados`, `usuario_id`, `empresa_id`, `ip_acesso`, `data_cadastro`) VALUES
(566, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '172.17.0.1', '2019-12-03 22:13:30'),
(567, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:16:43'),
(568, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:17:11'),
(569, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:17:36'),
(570, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:20:01'),
(571, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:25:51'),
(572, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:34:23'),
(573, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-03 22:34:43'),
(574, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-12-03 22:39:07'),
(575, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-03 22:39:25'),
(576, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-04 13:09:05'),
(577, 'Listou valores de uma empresa', 'ID da empresa: 2', 1, 1, '172.17.0.1', '2019-12-04 13:12:45'),
(578, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '172.17.0.1', '2019-12-04 13:12:52'),
(579, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-12-04 13:12:55'),
(580, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '172.17.0.1', '2019-12-04 13:12:57'),
(581, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-04 13:13:02'),
(582, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-04 13:25:15'),
(583, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-04 13:25:33'),
(584, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-04 13:25:44'),
(585, 'Listou valores de uma empresa', 'ID da empresa: 9', 1, 1, '172.17.0.1', '2019-12-04 13:25:48'),
(586, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 13:57:32'),
(587, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:10:46'),
(588, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:30:10'),
(589, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:31:39'),
(590, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:31:48'),
(591, 'Puxou histÃ³rico de cliente', 'ID do cliente: 2', 1, 1, '172.17.0.1', '2019-12-04 14:33:54'),
(592, 'Puxou histÃ³rico de cliente', 'ID do cliente: 4', 1, 1, '172.17.0.1', '2019-12-04 14:35:09'),
(593, 'Puxou histÃ³rico de cliente', 'ID do cliente: 10', 1, 1, '172.17.0.1', '2019-12-04 14:35:16'),
(594, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:40:32'),
(595, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:43:26'),
(596, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:43:45'),
(597, 'Logou no sistema', '---', 61, 1, '172.17.0.1', '2019-12-04 14:43:58'),
(598, 'Logou no sistema', '---', 61, 1, '172.17.0.1', '2019-12-04 14:44:49'),
(599, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:45:23'),
(600, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:46:13'),
(601, 'Atualizou documento', 'ID do documento: 1, Nome do documento: Atestado', 1, 1, '172.17.0.1', '2019-12-04 14:49:23'),
(602, 'Atualizou documento', 'ID do documento: 4, Nome do documento: Termo de responsabilidade', 1, 1, '172.17.0.1', '2019-12-04 14:51:49'),
(603, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 14:55:54'),
(604, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 15:15:13'),
(605, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 15:16:11'),
(606, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 15:17:21'),
(607, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '172.17.0.1', '2019-12-04 15:18:07'),
(608, 'Listou valores de uma empresa', 'ID da empresa: 11', 1, 1, '172.17.0.1', '2019-12-04 15:18:15'),
(609, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-04 15:32:13'),
(610, 'Listou valores de uma empresa', 'ID da empresa: 25', 1, 1, '172.17.0.1', '2019-12-04 19:13:44'),
(611, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-12-04 19:13:47'),
(612, 'Logou no sistema', '---', 1, 1, '192.168.1.32', '2019-12-04 19:48:17'),
(613, 'Logou no sistema', '---', 1, 1, '192.168.1.32', '2019-12-04 19:49:06'),
(614, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-05 15:19:39'),
(615, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-05 17:52:15'),
(616, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-06 18:06:27'),
(617, 'Logou no sistema', '---', 1, 1, '192.168.1.32', '2019-12-13 19:49:44'),
(618, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-16 13:47:18'),
(619, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-16 14:07:47'),
(620, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-16 14:49:42'),
(621, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-12-16 14:50:42'),
(622, 'Logou no sistema', '---', 1, 1, '172.17.0.1', '2019-12-18 13:54:18'),
(623, 'Listou valores de uma empresa', 'ID da empresa: 24', 1, 1, '172.17.0.1', '2019-12-18 13:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `parceiros`
--

CREATE TABLE `parceiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(60) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ativo` int(11) NOT NULL DEFAULT '1',
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parceiros`
--

INSERT INTO `parceiros` (`id`, `nome`, `email`, `telefone`, `data_cadastro`, `ativo`, `empresa_id`) VALUES
(1, 'Solicitante TESTE', 'solicitante@teste.com.br', '11 3774-2158', '2019-02-18 14:06:06', 1, 1),
(2, 'Parceiro 2', 'parceiro@bol.com.br', '11 939261285', '2019-02-15 15:45:34', 0, 1),
(3, 'Parceiro 3', 'parceiro3@hotmail.com', '21 22648903', '2019-02-15 15:45:37', 0, 1),
(4, 'teste', '', '', '2019-02-15 16:02:09', 0, 1),
(5, 'Gabriel Barban', 'barbangabriel@gmail.com', '11 22648903', '2019-05-22 14:21:35', 1, 1),
(6, 'ACDC', '', '', '2019-02-21 19:32:11', 1, 5),
(7, 'Adriano Prataroti', '', '', '2019-02-21 19:32:11', 1, 5),
(8, 'Alberto Tinen', '', '', '2019-02-21 19:32:11', 1, 5),
(9, 'Alicia Dudorenko', '', '', '2019-02-21 19:32:11', 1, 5),
(10, 'Anabela Chaves', '', '', '2019-02-21 19:32:11', 1, 5),
(11, 'Anchieta Odontologia', '', '', '2019-02-21 19:32:11', 1, 5),
(12, 'AndrÃ© Coelho de Faria', '', '', '2019-02-21 19:32:11', 1, 5),
(13, 'Andre Held', '', '', '2019-02-21 19:32:11', 1, 5),
(14, 'Antonio Albuquerque', '', '', '2019-02-21 19:32:11', 1, 5),
(15, 'Antonio Campanha', '', '', '2019-02-21 19:32:11', 1, 5),
(16, 'Antonio Montagner ', '', '', '2019-02-21 19:32:11', 1, 5),
(17, 'AOESP', '', '', '2019-02-21 19:32:11', 1, 5),
(18, 'Astrid Ferreira', '', '', '2019-02-21 19:32:11', 1, 5),
(19, 'Bruno Nogueira', '', '', '2019-02-21 19:32:11', 1, 5),
(20, 'Caio Peixoto', '', '', '2019-02-21 19:32:11', 1, 5),
(21, 'Carla Alvarenga ', '', '', '2019-02-21 19:32:11', 1, 5),
(22, 'Carolina Gati', '', '', '2019-02-21 19:32:11', 1, 5),
(23, 'Christian Wolf', '', '', '2019-02-21 19:32:11', 1, 5),
(24, 'Cia do Sorriso', '', '', '2019-02-21 19:32:11', 1, 5),
(25, 'Clarissa Freitas', '', '', '2019-02-21 19:32:11', 1, 5),
(26, 'Claudia Regina Tinen', '', '', '2019-02-21 19:32:11', 1, 5),
(27, 'Claudio Jorge', '', '', '2019-02-21 19:32:11', 1, 5),
(28, 'Cristiane V. Luiz', '', '', '2019-02-21 19:32:11', 1, 5),
(29, 'Daniel AssunÃ§Ã£o', '', '', '2019-02-21 19:32:11', 1, 5),
(30, 'Daniel Zerbinatti', '', '', '2019-02-21 19:32:11', 1, 5),
(31, 'Danielle C. Santos', '', '', '2019-02-21 19:32:11', 1, 5),
(32, 'Dental Kids', '', '', '2019-02-21 19:32:11', 1, 5),
(33, 'Edgard Del Passo', '', '', '2019-02-21 19:32:11', 1, 5),
(34, 'Edgard Del Passo Junior', '', '', '2019-02-21 19:32:11', 1, 5),
(35, 'Edgard Zerbinatti', '', '', '2019-02-21 19:32:11', 1, 5),
(36, 'Eduardo Lagoa', '', '', '2019-02-21 19:32:11', 1, 5),
(37, 'Ely Barbosa', '', '', '2019-02-21 19:32:11', 1, 5),
(38, 'Elza Castanho', '', '', '2019-02-21 19:32:11', 1, 5),
(39, 'ESI Brasil', '', '', '2019-02-21 19:32:11', 1, 5),
(40, 'EspaÃ§o Odontologia', '', '', '2019-02-21 19:32:11', 1, 5),
(41, 'EspaÃ§o Sorriso', '', '', '2019-02-21 19:32:11', 1, 5),
(42, 'Euclides Neto', '', '', '2019-02-21 19:32:11', 1, 5),
(43, 'Fabiana Felix', '', '', '2019-02-21 19:32:11', 1, 5),
(44, 'Felipe Silva ', '', '', '2019-02-21 19:32:11', 1, 5),
(45, 'Fernanda Pignato', '', '', '2019-02-21 19:32:11', 1, 5),
(46, 'Flavio Fantinato', '', '', '2019-02-21 19:32:11', 1, 5),
(47, 'Francisco Mendes', '', '', '2019-02-21 19:32:11', 1, 5),
(48, 'Frederico Krum', '', '', '2019-02-21 19:32:11', 1, 5),
(49, 'Gabriel Hansted ', '', '', '2019-02-21 19:32:11', 1, 5),
(50, 'Gabriela Salles', '', '', '2019-02-21 19:32:11', 1, 5),
(51, 'Giuliano Marincolo', '', '', '2019-02-21 19:32:11', 1, 5),
(52, 'Gustavo Borghi', '', '', '2019-02-21 19:32:11', 1, 5),
(53, 'Gustavo C. Morais ', '', '', '2019-02-21 19:32:11', 1, 5),
(54, 'Gustavo G. Teixeira', '', '', '2019-02-21 19:32:11', 1, 5),
(55, 'Held Odontologia', '', '', '2019-02-21 19:32:11', 1, 5),
(56, 'Helga  Stades', '', '', '2019-02-21 19:32:11', 1, 5),
(57, 'Helio Gonzales ', '', '', '2019-02-21 19:32:11', 1, 5),
(58, 'Henrique Smanio', '', '', '2019-02-21 19:32:11', 1, 5),
(59, 'HospÃ­tal Mario Gatti', '', '', '2019-02-21 19:32:11', 1, 5),
(60, 'Imocamp', '', '', '2019-02-21 19:32:11', 1, 5),
(61, 'Jean Gardin', '', '', '2019-02-21 19:32:11', 1, 5),
(62, 'Jorge Guido Jr ', '', '', '2019-02-21 19:32:11', 1, 5),
(63, 'Juliana Barbosa', '', '', '2019-02-21 19:32:11', 1, 5),
(64, 'Karen Marconi', '', '', '2019-02-21 19:32:11', 1, 5),
(65, 'Karina Garcia Carvalho', '', '', '2019-02-21 19:32:11', 1, 5),
(66, 'Karina Lika', '', '', '2019-02-21 19:32:11', 1, 5),
(67, 'Katia Beltz ', '', '', '2019-02-21 19:32:11', 1, 5),
(68, 'Kleber Basso', '', '', '2019-02-21 19:32:11', 1, 5),
(69, 'Lainer Lemos', '', '', '2019-02-21 19:32:11', 1, 5),
(70, 'Lilian Pessoto', '', '', '2019-02-21 19:32:11', 1, 5),
(71, 'Luciana Jalbut', '', '', '2019-02-21 19:32:11', 1, 5),
(72, 'Luciane Bologna', '', '', '2019-02-21 19:32:11', 1, 5),
(73, 'Luciane Borelli', '', '', '2019-02-21 19:32:11', 1, 5),
(74, 'Luis Fernando Kovac', '', '', '2019-02-21 19:32:11', 1, 5),
(75, 'Marcellus Vinicius ', '', '', '2019-02-21 19:32:11', 1, 5),
(76, 'Marcelo D. Pupo Nogueira', '', '', '2019-02-21 19:32:11', 1, 5),
(77, 'Marcelo Franceschi', '', '', '2019-02-21 19:32:11', 1, 5),
(78, 'Marcos Pace', '', '', '2019-02-21 19:32:11', 1, 5),
(79, 'Marcos Roberto GonÃ§alves', '', '', '2019-02-21 19:32:11', 1, 5),
(80, 'Marcos Vicente', '', '', '2019-02-21 19:32:11', 1, 5),
(81, 'Mariana Alvarenga', '', '', '2019-02-21 19:32:11', 1, 5),
(82, 'Marina Torres', '', '', '2019-02-21 19:32:11', 1, 5),
(83, 'Marjorie Assis', '', '', '2019-02-21 19:32:11', 1, 5),
(84, 'Mauricio Assis', '', '', '2019-02-21 19:32:11', 1, 5),
(85, 'Mauricio Von Zuben', '', '', '2019-02-21 19:32:11', 1, 5),
(86, 'Melchiades A. de Oliveira Jr.', '', '', '2019-02-21 19:32:11', 1, 5),
(87, 'Miwa Maeda', '', '', '2019-02-21 19:32:11', 1, 5),
(88, 'Mosiah Teixeira', '', '', '2019-02-21 19:32:11', 1, 5),
(89, 'Multi Odontologia', '', '', '2019-02-21 19:32:11', 1, 5),
(90, 'Murilo Barizon', '', '', '2019-02-21 19:32:11', 1, 5),
(91, 'Naoko Yamashita', '', '', '2019-02-21 19:32:11', 1, 5),
(92, 'Nelson Almeida Jr.', '', '', '2019-02-21 19:32:11', 1, 5),
(93, 'Nelson Opperman', '', '', '2019-02-21 19:32:11', 1, 5),
(94, 'Odontocompany', '', '', '2019-02-21 19:32:11', 1, 5),
(95, 'Odontocompany- parceria', '', '', '2019-02-21 19:32:11', 1, 5),
(96, 'Oral Sin ', '', '', '2019-02-21 19:32:11', 1, 5),
(97, 'Patricia Araujo', '', '', '2019-02-21 19:32:11', 1, 5),
(98, 'Patricia Rochael', '', '', '2019-02-21 19:32:11', 1, 5),
(99, 'Paulo Marcondes', '', '', '2019-02-21 19:32:11', 1, 5),
(100, 'Pedro Bacelar', '', '', '2019-02-21 19:32:11', 1, 5),
(101, 'Rapahel Rossi', '', '', '2019-02-21 19:32:11', 1, 5),
(102, 'Renata Rossi', '', '', '2019-02-21 19:32:11', 1, 5),
(103, 'Renato Araujo', '', '', '2019-02-21 19:32:11', 1, 5),
(104, 'Renato SimÃµes Angelo', '', '', '2019-02-21 19:32:11', 1, 5),
(105, 'Ricardo Felix', '', '', '2019-02-21 19:32:11', 1, 5),
(106, 'Ricardo JordÃ£o', '', '', '2019-02-21 19:32:11', 1, 5),
(107, 'Roberta Held', '', '', '2019-02-21 19:32:11', 1, 5),
(108, 'Rodrigo Chagas', '', '', '2019-02-21 19:32:11', 1, 5),
(109, 'Ronie Rosa', '', '', '2019-02-21 19:32:11', 1, 5),
(110, 'Rosana Frascatti', '', '', '2019-02-21 19:32:11', 1, 5),
(111, 'Sandra Rodrigues', '', '', '2019-02-21 19:32:11', 1, 5),
(112, 'Sandro Raffa', '', '', '2019-02-21 19:32:11', 1, 5),
(113, 'Sarah Hindebrand', '', '', '2019-02-21 19:32:11', 1, 5),
(114, 'Sergio Oliveira', '', '', '2019-02-21 19:32:11', 1, 5),
(115, 'Sidney Rocha', '', '', '2019-02-21 19:32:11', 1, 5),
(116, 'Silvia Renzo', '', '', '2019-02-21 19:32:11', 1, 5),
(117, 'Simone Tufaile ', '', '', '2019-02-21 19:32:11', 1, 5),
(118, 'SP Implantes ', '', '', '2019-02-21 19:32:11', 1, 5),
(119, 'SUS', '', '', '2019-02-21 19:32:11', 1, 5),
(120, 'Telma Oliveira ', '', '', '2019-02-21 19:32:11', 1, 5),
(121, 'Thulio Krauss', '', '', '2019-02-21 19:32:11', 1, 5),
(122, 'Unicamp', '', '', '2019-02-21 19:32:11', 1, 5),
(123, 'Vanessa Sanches ', '', '', '2019-02-21 19:32:11', 1, 5),
(124, 'Vitta Piena', '', '', '2019-02-21 19:32:11', 1, 5),
(125, 'Wellington Santos', '', '', '2019-02-21 19:32:11', 1, 5),
(126, 'Wesley Silva ', '', '', '2019-02-21 19:32:11', 1, 5),
(127, 'Willian Negreiros', '', '', '2019-02-21 19:32:11', 1, 5),
(128, 'Wilson Victor', '', '', '2019-02-21 19:32:11', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `valor` float NOT NULL,
  `status_id` int(11) NOT NULL,
  `ativo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `entrega_id` int(11) NOT NULL,
  `parceiro_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registro`
--

INSERT INTO `registro` (`id`, `codigo`, `descricao`, `valor`, `status_id`, `ativo`, `tipo`, `entrega_id`, `parceiro_id`, `cliente_id`, `usuario_id`, `empresa_id`, `data_cadastro`) VALUES
(53, 0, 'Atendimento um', 110.3, 5, 0, 1, 0, 1, 2, 1, 1, '2019-02-15 15:49:10'),
(54, 0, 'teste 2', 35.6, 11, 0, 1, 0, 1, 12, 1, 1, '2019-02-15 15:49:24'),
(55, 0, 'teste 3', 169.77, 5, 0, 1, 0, 1, 10, 1, 1, '2019-02-15 15:49:24'),
(56, 0, 'RaioX - Perna', 49.77, 4, 0, 1, 0, 1, 24, 1, 1, '2019-02-15 15:49:24'),
(57, 0, 'DocumentaÃ§Ã£o Completa (panorÃ¢mica, telerradiografia lateral, 8 periapicais, 1 anÃ¡lise de modelo)', 130, 5, 0, 1, 0, 1, 2, 1, 1, '2019-02-18 19:16:30'),
(58, 0, 'Tomografia ATM', 95.8, 4, 0, 1, 4, 1, 12, 1, 1, '2019-02-18 19:16:36'),
(59, 0, 'Panoramica Express', 40, 5, 0, 1, 0, 1, 15, 1, 1, '2019-02-18 19:16:32'),
(60, 0, 'Telerradiografia lateral', 48, 5, 0, 1, 4, 1, 1, 1, 1, '2019-02-18 19:16:34'),
(61, 0, 'DocumentaÃ§Ã£o Completa (panorÃ¢mica, telerradiografia lateral, 8 periapicais, 1 anÃ¡lise de modelo)', 130, 4, 0, 1, 5, 1, 2, 1, 1, '2019-02-18 19:16:38'),
(62, 0, 'Panoramica Bitewing', 49.77, 11, 0, 1, 3, 5, 2, 1, 1, '2019-02-18 19:16:39'),
(63, 0, 'Periapical Isolada', 27.54, 4, 1, 1, 6, 5, 6, 1, 1, '2019-02-18 19:18:08'),
(64, 0, 'Tomografia ATM', 95.8, 11, 1, 1, 3, 1, 12, 1, 1, '2019-07-22 17:58:55'),
(65, 0, 'Panoramica Bitewing', 49.77, 5, 1, 1, 5, 1, 10, 1, 1, '2019-02-18 19:19:09'),
(66, 0, 'Telerradiografia lateral', 80.76, 5, 0, 1, 3, 5, 14, 1, 1, '2019-02-19 14:53:35'),
(67, 1, 'Telerradiografia lateral', 48, 4, 1, 1, 6, 1, 2, 1, 1, '2019-08-22 18:04:48'),
(68, 2, 'Periapical bitewing', 5.45, 5, 1, 1, 4, 1, 2, 1, 1, '2019-08-23 21:21:28'),
(69, 3, 'Panoramica Bitewing', 49.77, 5, 1, 1, 5, 5, 25, 1, 1, '2019-08-23 21:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `registro_itens`
--

CREATE TABLE `registro_itens` (
  `id` int(11) NOT NULL,
  `valor_empresa_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `registro_id` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registro_itens`
--

INSERT INTO `registro_itens` (`id`, `valor_empresa_id`, `quantidade`, `registro_id`, `data_cadastro`) VALUES
(16, 13, 1, 53, '2019-02-01 19:48:06'),
(17, 18, 1, 54, '2019-02-05 16:26:06'),
(18, 19, 1, 55, '2019-02-05 17:14:03'),
(19, 10, 1, 55, '2019-02-05 17:14:04'),
(20, 10, 1, 56, '2019-02-14 14:04:08'),
(21, 22, 1, 57, '2019-02-15 14:41:00'),
(22, 23, 1, 58, '2019-02-15 14:41:19'),
(23, 20, 1, 59, '2019-02-15 15:52:16'),
(24, 21, 1, 60, '2019-02-18 14:17:00'),
(25, 22, 1, 61, '2019-02-18 15:15:27'),
(26, 10, 1, 62, '2019-02-18 15:35:15'),
(27, 26, 6, 63, '2019-02-18 19:18:08'),
(28, 23, 1, 64, '2019-02-18 19:18:36'),
(29, 10, 1, 65, '2019-02-18 19:19:10'),
(30, 16, 1, 66, '2019-02-19 14:23:19'),
(31, 34, 1, 71, '2019-02-22 14:49:56'),
(32, 38, 1, 72, '2019-02-22 17:47:45'),
(33, 35, 1, 73, '2019-02-22 17:52:05'),
(34, 21, 1, 67, '2019-08-22 18:04:48'),
(35, 17, 1, 68, '2019-08-23 21:21:28'),
(36, 10, 1, 69, '2019-08-23 21:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `registro_pagametno`
--

CREATE TABLE `registro_pagametno` (
  `registro_id` int(11) NOT NULL,
  `forma_id` int(11) NOT NULL,
  `valor` float NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registro_pagametno`
--

INSERT INTO `registro_pagametno` (`registro_id`, `forma_id`, `valor`, `data_cadastro`, `id`) VALUES
(53, 4, 110.3, '2019-02-01 19:48:06', 21),
(54, 4, 35.6, '2019-02-05 16:26:06', 22),
(55, 4, 120, '2019-02-05 17:14:03', 23),
(55, 11, 49.77, '2019-02-05 17:14:03', 24),
(56, 4, 49.77, '2019-02-14 14:04:08', 25),
(57, 11, 130, '2019-02-15 14:41:00', 26),
(58, 4, 95.8, '2019-02-15 14:41:19', 27),
(59, 4, 40, '2019-02-15 15:52:16', 28),
(60, 4, 48, '2019-02-18 14:17:00', 29),
(61, 11, 130, '2019-02-18 15:15:27', 30),
(62, 14, 49.77, '2019-02-18 15:35:15', 31),
(63, 15, 27.54, '2019-02-18 19:18:08', 32),
(64, 11, 95.8, '2019-02-18 19:18:36', 33),
(65, 4, 49.77, '2019-02-18 19:19:10', 34),
(66, 15, 80.76, '2019-02-19 14:23:19', 35),
(67, 16, 245, '2019-02-22 14:17:37', 36),
(70, 16, 245, '2019-02-22 14:29:41', 37),
(71, 16, 220, '2019-02-22 14:49:56', 38),
(71, 18, 25, '2019-02-22 14:49:56', 39),
(72, 16, 40, '2019-02-22 17:47:45', 40),
(72, 20, 20, '2019-02-22 17:47:45', 41),
(73, 16, 100, '2019-02-22 17:52:05', 42),
(73, 19, 85, '2019-02-22 17:52:05', 43),
(67, 4, 48, '2019-08-22 18:04:48', 44),
(68, 4, 5.45, '2019-08-23 21:21:28', 45),
(69, 13, 49.77, '2019-08-23 21:27:07', 46);

-- --------------------------------------------------------

--
-- Table structure for table `relatorios`
--

CREATE TABLE `relatorios` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relatorio_custom`
--

CREATE TABLE `relatorio_custom` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `query` varchar(300) NOT NULL,
  `apelidos` varchar(300) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresa_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relatorio_custom`
--

INSERT INTO `relatorio_custom` (`id`, `nome`, `query`, `apelidos`, `data_cadastro`, `empresa_id`, `usuario_id`) VALUES
(4, 'Relatorio consolidado', 'c.nome,r.data_cadastro,r.valor', 'Nome do cliente,Data do registro,Valor', '2019-08-26 20:54:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `nome`, `empresa_id`, `data_cadastro`) VALUES
(4, 'Analisando', 1, '2019-02-05 17:20:03'),
(5, 'Cadastrado', 1, '2019-01-03 20:04:27'),
(8, 'Flopado', 2, '2019-01-07 14:46:35'),
(9, 'Arquivado', 2, '2019-01-07 14:46:41'),
(11, 'Pendente', 1, '2019-01-07 19:27:17'),
(14, 'Esquecido', 2, '2019-01-08 14:30:49'),
(15, 'Limbo', 2, '2019-01-08 14:30:54'),
(16, 'Cadastrado', 5, '2019-02-21 19:56:56'),
(17, 'Atendido', 5, '2019-02-21 19:57:15'),
(18, 'Entregue', 5, '2019-02-21 19:57:23'),
(19, 'Arquivado', 5, '2019-02-21 19:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `tipos`
--

CREATE TABLE `tipos` (
  `Nome` varchar(50) NOT NULL,
  `Identificação` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipos`
--

INSERT INTO `tipos` (`Nome`, `Identificação`) VALUES
('Entrada', 1),
('Saída', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tipos_permissao`
--

CREATE TABLE `tipos_permissao` (
  `nome` varchar(200) NOT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipos_permissao`
--

INSERT INTO `tipos_permissao` (`nome`, `codigo`) VALUES
('Pode cadastrar e visualizar registros', 1),
('Pode visualizar dashboard', 2),
('Pode gerar relatorios', 3),
('Pode buscar clientes', 4),
('Pode visualizar e configurar monitor', 5),
('Pode alterar dados da companhia', 6),
('Pode alterar permissões de usuários', 7),
('Pode alterar formas de pagamento', 8),
('Pode alterar empresas', 9),
('Pode alterar status', 10),
('Pode acessar saídas', 11),
('Pode gerenciar categorias financeiras', 12),
('Pode gerenciar parcerias', 13);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `senha` varchar(20) NOT NULL,
  `url_inicial` varchar(150) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `flag_digitando` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `data_cadastro`, `senha`, `url_inicial`, `empresa_id`, `email`, `flag_digitando`) VALUES
(1, 'UsuÃ¡rio teste', 'teste', '2019-12-03 22:16:58', 'teste', 'registros', 1, 'teste@teste.com.br', 0),
(39, 'Rodrigo DEV', 'rodrigo', '2019-02-14 13:30:21', '123', 'inicial', 3, 'rodrigodevcode@gmail.com', 0),
(42, 'Jose Silveira', 'jose', '2019-04-22 18:59:01', '123', 'inicial', 5, 'castanhosilveira@yahoo.com.br', 0),
(43, 'Suporte SBG', 'suporte', '2019-03-08 13:18:50', 'suporte', 'configuracoes', 5, 'suporte@vision.com.br', 0),
(44, 'Rubia Ramos', 'rubia.ramos', '2019-02-21 19:44:03', '123', 'registros', 5, 'rubia@vision.com.br', 0),
(45, 'Vitoria Alves', 'vitoria.alves', '2019-02-21 19:34:21', '123', 'novo_registro', 5, 'vitoria@vision.com.br', 0),
(46, 'BÃ¡rbara Souza', 'barbara.souza', '2019-02-21 19:34:39', '123', 'novo_registro', 5, 'barbara@vision.com.br', 0),
(47, 'Elisa Oliveira', 'elisa.oliveira', '2019-02-21 19:35:26', '123', 'novo_registro', 5, 'elisa@vision.com.br', 0),
(48, 'Jorge Paulo', 'jorge.paulo', '2019-04-22 14:53:07', '123', 'inicial', 4, 'jorgepaulo_paulo@hotmail.com', 0),
(50, 'Reginaldo Daniel de Godoi ', 'reginaldo', '2019-04-23 15:05:04', '123', 'inicial', 1, 'rwconsultoria10@gmail.com', 0),
(51, 'Ana pailq da silva foli', 'ana.pailq', '2019-05-30 17:01:00', '123', 'inicial', 1, 'paula_foli@hotmail.com', 0),
(52, 'Adriana 03', 'adriana.03', '2019-05-30 17:01:42', '123', 'inicial', 1, 'adriana030681@gmail.com', 0),
(53, 'Aleandro Jesus da Silva', 'aleandro.jesus', '2019-06-03 13:58:08', '123', 'inicial', 1, 'dr.aleandrojesus@gmail.com', 0),
(54, 'Fabia Andrade', 'fabia.andrade', '2019-06-06 14:29:41', '123', 'inicial', 1, 'drafabiaandrade@gmail.com', 0),
(57, 'wilson', 'tecnico@jmmedical.com.br', '2019-06-14 19:08:39', 'clinica290', 'novo_registro', 1, 'tecnico@jmmedical.com.br', 0),
(58, 'Marina de Almeida Cunzolo', 'marinacunzolo@gmail.com', '2019-06-17 18:21:49', 'ma072325', 'novo_registro', 1, 'marinacunzolo@gmail.com', 0),
(59, 'Eduardo GonÃ§alves', 'admin@geradox.com.br', '2019-06-18 17:09:05', 'ana070611', 'novo_registro', 1, 'admin@geradox.com.br', 0),
(60, 'Eduardo GonÃ§alves', 'admin@grdoc.com.br', '2019-06-18 17:09:43', 'ana070611', 'novo_registro', 1, 'admin@grdoc.com.br', 0),
(61, 'Gabriel Barban', 'gabriel.barban', '2019-12-04 14:45:10', 'gabriel1995', 'registros', 1, 'barbangabriel@gmail.com', 0),
(63, 'Kadu Morais', 'kadu.doro', '2019-06-19 15:07:21', '123', 'registros', 1, 'kadu.doro@gmail.com', 0),
(64, 'Mariana Gomes do nascimento ', 'Marygomesrebeca@gmail.com ', '2019-06-19 22:33:55', '556677', 'novo_registro', 1, 'Marygomesrebeca@gmail.com ', 0),
(65, 'Eunice de Jesus Carneiro', 'nissejc23@gmail.com', '2019-06-21 00:16:38', '123456cl', 'novo_registro', 1, 'nissejc23@gmail.com', 0),
(67, 'filhadaputa', 'admin@admin.com', '2019-07-04 00:37:22', '1234', 'novo_registro', 1, 'admin@admin.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios_permissoes`
--

INSERT INTO `usuarios_permissoes` (`id`, `usuario_id`, `codigo`, `ativo`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(11, 1, 6, 1),
(12, 1, 7, 1),
(13, 1, 8, 1),
(14, 1, 9, 1),
(15, 1, 10, 1),
(26, 1, 11, 1),
(38, 1, 12, 1),
(63, 38, 1, 1),
(64, 38, 2, 1),
(65, 38, 3, 1),
(66, 38, 4, 1),
(67, 38, 5, 1),
(68, 38, 6, 1),
(69, 38, 7, 1),
(70, 38, 8, 1),
(71, 38, 9, 1),
(72, 38, 10, 1),
(73, 38, 11, 1),
(74, 38, 12, 1),
(75, 39, 1, 1),
(76, 39, 2, 1),
(77, 39, 3, 1),
(78, 39, 4, 1),
(79, 39, 5, 1),
(80, 39, 6, 1),
(81, 39, 7, 1),
(82, 39, 8, 1),
(83, 39, 9, 1),
(84, 39, 10, 1),
(85, 39, 11, 1),
(86, 39, 12, 1),
(87, 40, 1, 1),
(88, 40, 2, 1),
(89, 40, 3, 1),
(90, 40, 4, 1),
(91, 40, 5, 1),
(92, 40, 6, 1),
(93, 40, 7, 1),
(94, 40, 8, 1),
(95, 40, 9, 1),
(96, 40, 10, 1),
(97, 40, 11, 1),
(98, 40, 12, 1),
(99, 40, 13, 1),
(100, 1, 13, 1),
(101, 38, 13, 1),
(102, 39, 13, 1),
(103, 40, 1, 1),
(104, 40, 2, 1),
(105, 40, 3, 1),
(106, 40, 4, 1),
(107, 40, 5, 1),
(108, 40, 6, 1),
(109, 40, 7, 1),
(110, 40, 8, 1),
(111, 40, 9, 1),
(112, 40, 10, 1),
(113, 40, 11, 1),
(114, 40, 12, 1),
(115, 40, 13, 1),
(116, 41, 1, 1),
(117, 41, 2, 1),
(118, 41, 3, 1),
(119, 41, 4, 1),
(120, 41, 5, 1),
(121, 41, 6, 1),
(122, 41, 7, 1),
(123, 41, 8, 1),
(124, 41, 9, 1),
(125, 41, 10, 1),
(126, 41, 11, 1),
(127, 41, 12, 1),
(128, 41, 13, 1),
(129, 42, 1, 1),
(130, 42, 2, 1),
(131, 42, 3, 1),
(132, 42, 4, 1),
(133, 42, 5, 1),
(134, 42, 6, 1),
(135, 42, 7, 1),
(136, 42, 8, 1),
(137, 42, 9, 1),
(138, 42, 10, 1),
(139, 42, 11, 1),
(140, 42, 12, 1),
(141, 42, 13, 1),
(142, 43, 1, 1),
(143, 43, 2, 1),
(144, 43, 3, 1),
(145, 43, 4, 1),
(146, 43, 5, 1),
(147, 43, 6, 1),
(148, 43, 7, 1),
(149, 43, 8, 1),
(150, 43, 9, 1),
(151, 43, 10, 1),
(152, 43, 11, 1),
(153, 43, 12, 1),
(154, 43, 13, 1),
(155, 44, 1, 1),
(156, 44, 2, 0),
(157, 44, 3, 1),
(158, 44, 4, 1),
(159, 44, 5, 1),
(160, 44, 6, 0),
(161, 44, 7, 0),
(162, 44, 8, 1),
(163, 44, 9, 1),
(164, 44, 10, 0),
(165, 44, 11, 1),
(166, 44, 12, 0),
(167, 44, 13, 1),
(168, 45, 1, 1),
(169, 45, 2, 0),
(170, 45, 3, 0),
(171, 45, 4, 1),
(172, 45, 5, 1),
(173, 45, 6, 0),
(174, 45, 7, 0),
(175, 45, 8, 0),
(176, 45, 9, 0),
(177, 45, 10, 0),
(178, 45, 11, 0),
(179, 45, 12, 0),
(180, 45, 13, 0),
(181, 46, 1, 1),
(182, 46, 2, 0),
(183, 46, 3, 0),
(184, 46, 4, 1),
(185, 46, 5, 0),
(186, 46, 6, 0),
(187, 46, 7, 0),
(188, 46, 8, 0),
(189, 46, 9, 0),
(190, 46, 10, 0),
(191, 46, 11, 0),
(192, 46, 12, 0),
(193, 46, 13, 0),
(194, 47, 1, 1),
(195, 47, 2, 0),
(196, 47, 3, 0),
(197, 47, 4, 1),
(198, 47, 5, 0),
(199, 47, 6, 0),
(200, 47, 7, 0),
(201, 47, 8, 0),
(202, 47, 9, 0),
(203, 47, 10, 0),
(204, 47, 11, 0),
(205, 47, 12, 0),
(206, 47, 13, 0),
(207, 48, 1, 1),
(208, 48, 2, 1),
(209, 48, 3, 1),
(210, 48, 4, 1),
(211, 48, 5, 1),
(212, 48, 6, 1),
(213, 48, 7, 1),
(214, 48, 8, 1),
(215, 48, 9, 1),
(216, 48, 10, 1),
(217, 48, 11, 1),
(218, 48, 12, 1),
(219, 48, 13, 1),
(220, 49, 1, 0),
(221, 49, 2, 0),
(222, 49, 3, 1),
(223, 49, 4, 0),
(224, 49, 5, 0),
(225, 49, 6, 0),
(226, 49, 7, 0),
(227, 49, 8, 0),
(228, 49, 9, 1),
(229, 49, 10, 0),
(230, 49, 11, 1),
(231, 49, 12, 0),
(232, 49, 13, 0),
(233, 50, 1, 1),
(234, 50, 2, 1),
(235, 50, 3, 1),
(236, 50, 4, 1),
(237, 50, 5, 1),
(238, 50, 6, 1),
(239, 50, 7, 1),
(240, 50, 8, 1),
(241, 50, 9, 1),
(242, 50, 10, 1),
(243, 50, 11, 1),
(244, 50, 12, 1),
(245, 50, 13, 1),
(246, 51, 1, 1),
(247, 51, 2, 1),
(248, 51, 3, 1),
(249, 51, 4, 1),
(250, 51, 5, 1),
(251, 51, 6, 1),
(252, 51, 7, 1),
(253, 51, 8, 1),
(254, 51, 9, 1),
(255, 51, 10, 1),
(256, 51, 11, 1),
(257, 51, 12, 1),
(258, 51, 13, 1),
(259, 52, 1, 1),
(260, 52, 2, 1),
(261, 52, 3, 1),
(262, 52, 4, 1),
(263, 52, 5, 1),
(264, 52, 6, 1),
(265, 52, 7, 1),
(266, 52, 8, 1),
(267, 52, 9, 1),
(268, 52, 10, 1),
(269, 52, 11, 1),
(270, 52, 12, 1),
(271, 52, 13, 1),
(272, 53, 1, 1),
(273, 53, 2, 1),
(274, 53, 3, 1),
(275, 53, 4, 1),
(276, 53, 5, 1),
(277, 53, 6, 1),
(278, 53, 7, 1),
(279, 53, 8, 1),
(280, 53, 9, 1),
(281, 53, 10, 1),
(282, 53, 11, 1),
(283, 53, 12, 1),
(284, 53, 13, 1),
(285, 54, 1, 1),
(286, 54, 2, 1),
(287, 54, 3, 1),
(288, 54, 4, 1),
(289, 54, 5, 1),
(290, 54, 6, 1),
(291, 54, 7, 1),
(292, 54, 8, 1),
(293, 54, 9, 1),
(294, 54, 10, 1),
(295, 54, 11, 1),
(296, 54, 12, 1),
(297, 54, 13, 1),
(298, 55, 1, 1),
(299, 55, 2, 1),
(300, 55, 3, 1),
(301, 55, 4, 1),
(302, 55, 5, 1),
(303, 55, 6, 1),
(304, 55, 7, 1),
(305, 55, 8, 1),
(306, 55, 9, 1),
(307, 55, 10, 1),
(308, 55, 11, 1),
(309, 55, 12, 1),
(310, 55, 13, 1),
(311, 56, 1, 1),
(312, 56, 2, 1),
(313, 56, 3, 1),
(314, 56, 4, 1),
(315, 56, 5, 1),
(316, 56, 6, 1),
(317, 56, 7, 1),
(318, 56, 8, 1),
(319, 56, 9, 1),
(320, 56, 10, 1),
(321, 56, 11, 1),
(322, 56, 12, 1),
(323, 56, 13, 1),
(324, 57, 1, 1),
(325, 57, 2, 1),
(326, 57, 3, 1),
(327, 57, 4, 1),
(328, 57, 5, 1),
(329, 57, 6, 1),
(330, 57, 7, 1),
(331, 57, 8, 1),
(332, 57, 9, 1),
(333, 57, 10, 1),
(334, 57, 11, 1),
(335, 57, 12, 1),
(336, 57, 13, 1),
(337, 58, 1, 1),
(338, 58, 2, 1),
(339, 58, 3, 1),
(340, 58, 4, 1),
(341, 58, 5, 1),
(342, 58, 6, 1),
(343, 58, 7, 1),
(344, 58, 8, 1),
(345, 58, 9, 1),
(346, 58, 10, 1),
(347, 58, 11, 1),
(348, 58, 12, 1),
(349, 58, 13, 1),
(350, 59, 1, 1),
(351, 59, 2, 1),
(352, 59, 3, 1),
(353, 59, 4, 1),
(354, 59, 5, 1),
(355, 59, 6, 1),
(356, 59, 7, 1),
(357, 59, 8, 1),
(358, 59, 9, 1),
(359, 59, 10, 1),
(360, 59, 11, 1),
(361, 59, 12, 1),
(362, 59, 13, 1),
(363, 60, 1, 1),
(364, 60, 2, 1),
(365, 60, 3, 1),
(366, 60, 4, 1),
(367, 60, 5, 1),
(368, 60, 6, 1),
(369, 60, 7, 1),
(370, 60, 8, 1),
(371, 60, 9, 1),
(372, 60, 10, 1),
(373, 60, 11, 1),
(374, 60, 12, 1),
(375, 60, 13, 1),
(376, 61, 1, 1),
(377, 61, 2, 1),
(378, 61, 3, 1),
(379, 61, 4, 1),
(380, 61, 5, 1),
(381, 61, 6, 1),
(382, 61, 7, 1),
(383, 61, 8, 1),
(384, 61, 9, 1),
(385, 61, 10, 1),
(386, 61, 11, 1),
(387, 61, 12, 1),
(388, 61, 13, 1),
(389, 62, 1, 1),
(390, 62, 2, 1),
(391, 62, 3, 1),
(392, 62, 4, 1),
(393, 62, 5, 1),
(394, 62, 6, 1),
(395, 62, 7, 1),
(396, 62, 8, 1),
(397, 62, 9, 1),
(398, 62, 10, 1),
(399, 62, 11, 1),
(400, 62, 12, 1),
(401, 62, 13, 1),
(402, 63, 1, 1),
(403, 63, 2, 1),
(404, 63, 3, 1),
(405, 63, 4, 1),
(406, 63, 5, 1),
(407, 63, 6, 1),
(408, 63, 7, 1),
(409, 63, 8, 1),
(410, 63, 9, 1),
(411, 63, 10, 1),
(412, 63, 11, 1),
(413, 63, 12, 1),
(414, 63, 13, 1),
(415, 64, 1, 1),
(416, 64, 2, 1),
(417, 64, 3, 1),
(418, 64, 4, 1),
(419, 64, 5, 1),
(420, 64, 6, 1),
(421, 64, 7, 1),
(422, 64, 8, 1),
(423, 64, 9, 1),
(424, 64, 10, 1),
(425, 64, 11, 1),
(426, 64, 12, 1),
(427, 64, 13, 1),
(428, 65, 1, 1),
(429, 65, 2, 1),
(430, 65, 3, 1),
(431, 65, 4, 1),
(432, 65, 5, 1),
(433, 65, 6, 1),
(434, 65, 7, 1),
(435, 65, 8, 1),
(436, 65, 9, 1),
(437, 65, 10, 1),
(438, 65, 11, 1),
(439, 65, 12, 1),
(440, 65, 13, 1),
(441, 66, 1, 1),
(442, 66, 2, 1),
(443, 66, 3, 1),
(444, 66, 4, 1),
(445, 66, 5, 1),
(446, 66, 6, 1),
(447, 66, 7, 1),
(448, 66, 8, 1),
(449, 66, 9, 1),
(450, 66, 10, 1),
(451, 66, 11, 1),
(452, 66, 12, 1),
(453, 66, 13, 1),
(454, 67, 1, 1),
(455, 67, 2, 1),
(456, 67, 3, 1),
(457, 67, 4, 1),
(458, 67, 5, 1),
(459, 67, 6, 1),
(460, 67, 7, 1),
(461, 67, 8, 1),
(462, 67, 9, 1),
(463, 67, 10, 1),
(464, 67, 11, 1),
(465, 67, 12, 1),
(466, 67, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `valores`
--

CREATE TABLE `valores` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `valor` float NOT NULL,
  `tempo` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresas_id` int(11) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valores`
--

INSERT INTO `valores` (`id`, `nome`, `valor`, `tempo`, `data_cadastro`, `empresas_id`, `ativo`) VALUES
(1, 'Periapical Bitewing 4.0', 8.95, 0, '2019-01-07 17:16:48', 1, 1),
(2, 'panoramica', 20.5, 0, '2019-01-07 17:16:11', 1, 0),
(3, 'Telerradiografia Frontal', 47.5, 0, '2019-01-07 17:02:40', 1, 1),
(4, 'Periapical Isolada', 5.49, 0, '2019-01-07 17:32:18', 1, 1),
(5, 'periapical bitewing', 4.96, 0, '2019-01-07 17:22:56', 2, 0),
(6, 'Teste', 50.89, 0, '2019-01-07 17:27:14', 1, 0),
(7, 'Periapical Isolada', 3.89, 0, '2019-01-07 17:35:21', 3, 1),
(8, 'Panoramica Express', 12.56, 0, '2019-01-07 17:38:35', 3, 1),
(9, 'DocumentaÃ§Ã£o Completa', 120, 0, '2019-01-07 17:39:01', 4, 1),
(10, 'Panoramica Bitewing', 49.77, 3, '2019-02-18 14:36:23', 2, 1),
(11, 'Levantamento Periapical', 115.4, 0, '2019-01-08 13:04:08', 7, 1),
(12, 'Panoramica Bitewing', 95, 0, '2019-01-08 13:04:24', 7, 1),
(13, 'Telerradiografia Frontal', 44.9, 2, '2019-02-18 14:25:30', 2, 1),
(14, 'consultoria PHP', 150.67, 0, '2019-01-09 17:48:14', 6, 1),
(15, 'IntegraÃ§Ã£o com API Externa', 120.77, 0, '2019-01-09 17:54:39', 6, 1),
(16, 'Telerradiografia lateral', 80.76, 2, '2019-05-22 14:28:44', 9, 1),
(17, 'Periapical bitewing', 5.45, 0, '2019-01-09 19:15:05', 9, 1),
(18, 'Peck (6 garrafas - 2L)', 35.6, 0, '2019-01-14 13:52:49', 10, 1),
(19, 'Doc completa I (1 panoramica, 1 telerradiografia, 8 periapical, 1 anÃ¡lise de modelo)', 120, 0, '2019-02-05 17:12:52', 2, 1),
(20, 'Panoramica Express', 40, 0, '2019-02-14 19:26:52', 24, 1),
(21, 'Telerradiografia lateral', 48, 0, '2019-02-14 19:27:27', 24, 1),
(22, 'DocumentaÃ§Ã£o Completa (panorÃ¢mica, telerradiografia lateral, 8 periapicais, 1 anÃ¡lise de modelo)', 130, 0, '2019-02-14 19:29:27', 24, 1),
(23, 'Tomografia ATM', 95.8, 5, '2019-02-18 14:36:50', 24, 1),
(24, 'Panoramica Express', 46.5, 0, '2019-02-15 17:59:35', 11, 1),
(25, 'Telerradiografia lateral', 30, 0, '2019-02-14 19:30:08', 11, 1),
(26, 'Periapical Isolada', 4.59, 0, '2019-02-14 19:30:16', 11, 1),
(27, 'teste', 4.9, 1, '2019-02-19 20:40:41', 9, 1),
(28, 'PanorÃ¢mica', 115, 0, '2019-02-21 20:37:47', 27, 1),
(29, 'Endo', 285, 0, '2019-02-21 20:37:59', 27, 1),
(30, 'RegiÃ£o', 255, 0, '2019-02-21 20:38:07', 27, 1),
(31, 'Arcada', 355, 0, '2019-02-21 20:38:15', 27, 1),
(32, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 27, 1),
(33, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 27, 1),
(34, '14 (Levantamento Periapical)', 245, 0, '2019-02-21 20:38:53', 27, 1),
(35, 'Doc Standard', 185, 0, '2019-02-21 20:39:08', 27, 1),
(36, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 27, 1),
(37, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 27, 1),
(38, 'Modelo de estudo', 60, 0, '2019-02-21 20:39:50', 27, 1),
(39, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 27, 1),
(40, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 27, 1),
(41, 'PanorÃ¢mica', 115, 0, '2019-02-21 20:37:47', 28, 1),
(42, 'Endo', 285, 0, '2019-02-21 20:37:59', 28, 1),
(43, 'RegiÃ£o', 210, 0, '2019-02-21 20:38:07', 28, 1),
(44, 'Arcada', 305, 0, '2019-02-21 20:38:15', 28, 1),
(45, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 28, 1),
(46, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 28, 1),
(47, '14 (Levantamento Periapical)', 245, 0, '2019-02-21 20:38:53', 28, 1),
(48, 'Doc Standard', 185, 0, '2019-02-21 20:39:08', 28, 1),
(49, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 28, 1),
(50, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 28, 1),
(51, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 28, 1),
(52, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 28, 1),
(53, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 28, 1),
(54, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 28, 1),
(55, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:38', 27, 1),
(56, 'PanorÃ¢mica', 115, 0, '2019-02-21 20:37:47', 29, 1),
(57, 'Endo', 285, 0, '2019-02-21 20:37:59', 29, 1),
(58, 'RegiÃ£o', 190, 0, '2019-02-21 20:38:07', 29, 1),
(59, 'Arcada', 290, 0, '2019-02-21 20:38:15', 29, 1),
(60, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 29, 1),
(61, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 29, 1),
(62, '14 (Levantamento Periapical)', 245, 0, '2019-02-21 20:38:53', 29, 1),
(63, 'Doc Standard', 185, 0, '2019-02-21 20:39:08', 29, 1),
(64, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 29, 1),
(65, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 29, 1),
(66, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 29, 1),
(67, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 29, 1),
(68, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 29, 1),
(69, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 29, 1),
(70, 'PanorÃ¢mica', 85, 0, '2019-02-21 20:37:47', 30, 1),
(71, 'Endo', 285, 0, '2019-02-21 20:37:59', 30, 1),
(72, 'RegiÃ£o', 225, 0, '2019-02-21 20:38:07', 30, 1),
(73, 'Arcada', 325, 0, '2019-02-21 20:38:15', 30, 1),
(74, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 30, 1),
(75, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 30, 1),
(76, '14 (Levantamento Periapical)', 235, 0, '2019-02-21 20:38:53', 30, 1),
(77, 'Doc Standard', 165, 0, '2019-02-21 20:39:08', 30, 1),
(78, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 30, 1),
(79, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 30, 1),
(80, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 30, 1),
(81, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 30, 1),
(82, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 30, 1),
(83, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 30, 1),
(84, 'PanorÃ¢mica', 85, 0, '2019-02-21 20:37:47', 31, 1),
(85, 'Endo', 285, 0, '2019-02-21 20:37:59', 31, 1),
(86, 'RegiÃ£o', 225, 0, '2019-02-21 20:38:07', 31, 1),
(87, 'Arcada', 325, 0, '2019-02-21 20:38:15', 31, 1),
(88, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 31, 1),
(89, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 31, 1),
(90, '14 (Levantamento Periapical)', 240, 0, '2019-02-21 20:38:53', 31, 1),
(91, 'Doc Standard', 155, 0, '2019-02-21 20:39:08', 31, 1),
(92, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 31, 1),
(93, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 31, 1),
(94, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 31, 1),
(95, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 31, 1),
(96, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 31, 1),
(97, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 31, 1),
(98, 'PanorÃ¢mica', 85, 0, '2019-02-21 20:37:47', 32, 1),
(99, 'Endo', 285, 0, '2019-02-21 20:37:59', 32, 1),
(100, 'RegiÃ£o', 215, 0, '2019-02-21 20:38:07', 32, 1),
(101, 'Arcada', 315, 0, '2019-02-21 20:38:15', 32, 1),
(102, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 32, 1),
(103, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 32, 1),
(104, '14 (Levantamento Periapical)', 225, 0, '2019-02-21 20:38:53', 32, 1),
(105, 'Doc Standard', 135, 0, '2019-02-21 20:39:08', 32, 1),
(106, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 32, 1),
(107, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 32, 1),
(108, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 32, 1),
(109, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 32, 1),
(110, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 32, 1),
(111, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 32, 1),
(112, 'PanorÃ¢mica', 80, 0, '2019-02-21 20:37:47', 33, 1),
(113, 'Endo', 285, 0, '2019-02-21 20:37:59', 33, 1),
(114, 'RegiÃ£o', 210, 0, '2019-02-21 20:38:07', 33, 1),
(115, 'Arcada', 310, 0, '2019-02-21 20:38:15', 33, 1),
(116, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 33, 1),
(117, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 33, 1),
(118, '14 (Levantamento Periapical)', 225, 0, '2019-02-21 20:38:53', 33, 1),
(119, 'Doc Standard', 155, 0, '2019-02-21 20:39:08', 33, 1),
(120, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 33, 1),
(121, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 33, 1),
(122, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 33, 1),
(123, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 33, 1),
(124, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 33, 1),
(125, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 33, 1),
(126, 'PanorÃ¢mica', 85, 0, '2019-02-21 20:37:47', 34, 1),
(127, 'Endo', 285, 0, '2019-02-21 20:37:59', 34, 1),
(128, 'RegiÃ£o', 205, 0, '2019-02-21 20:38:07', 34, 1),
(129, 'Arcada', 305, 0, '2019-02-21 20:38:15', 34, 1),
(130, 'Periapicais', 40, 0, '2019-02-21 20:38:22', 34, 1),
(131, 'Interproximais', 160, 0, '2019-02-21 20:38:37', 34, 1),
(132, '14 (Levantamento Periapical)', 235, 0, '2019-02-21 20:38:53', 34, 1),
(133, 'Doc Standard', 115, 0, '2019-02-21 20:39:08', 34, 1),
(134, 'Doc Plus', 220, 0, '2019-02-21 20:39:19', 34, 1),
(135, 'Doc Special', 280, 0, '2019-02-21 20:39:30', 34, 1),
(136, 'Modelo de estudo', 70, 0, '2019-02-21 20:39:50', 34, 1),
(137, 'Fotografia', 10, 0, '2019-02-21 20:40:04', 34, 1),
(138, 'DentalSlice', 120, 0, '2019-02-21 20:40:13', 34, 1),
(139, 'Modelo de trabalho', 60, 0, '2019-03-06 17:01:23', 34, 1),
(140, 'Radiografia Periapical', 8.5, 3, '2019-08-26 14:39:18', 24, 1),
(141, 'Exame teste', 1.5, 1, '2019-12-04 13:25:33', 9, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campanhas`
--
ALTER TABLE `campanhas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companhia`
--
ALTER TABLE `companhia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contato_lead`
--
ALTER TABLE `contato_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_empresas_companhia` (`empresa_id`);

--
-- Indexes for table `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etiqueta_individual`
--
ALTER TABLE `etiqueta_individual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etiqueta_pimaco`
--
ALTER TABLE `etiqueta_pimaco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financas`
--
ALTER TABLE `financas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financas_categorias`
--
ALTER TABLE `financas_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_empresa_formas` (`empresa_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parceiros`
--
ALTER TABLE `parceiros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_status` (`status_id`),
  ADD KEY `id_fk_usuario` (`usuario_id`),
  ADD KEY `id_fk_empresa` (`empresa_id`),
  ADD KEY `id_fk_cliente` (`cliente_id`);

--
-- Indexes for table `registro_itens`
--
ALTER TABLE `registro_itens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registro_pagametno`
--
ALTER TABLE `registro_pagametno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatorios`
--
ALTER TABLE `relatorios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatorio_custom`
--
ALTER TABLE `relatorio_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_empresa_status` (`empresa_id`);

--
-- Indexes for table `tipos_permissao`
--
ALTER TABLE `tipos_permissao`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_empresa_usuario` (`empresa_id`);

--
-- Indexes for table `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `valores`
--
ALTER TABLE `valores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_empresas_valor` (`empresas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campanhas`
--
ALTER TABLE `campanhas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `companhia`
--
ALTER TABLE `companhia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contato_lead`
--
ALTER TABLE `contato_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `etiqueta_individual`
--
ALTER TABLE `etiqueta_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `etiqueta_pimaco`
--
ALTER TABLE `etiqueta_pimaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financas`
--
ALTER TABLE `financas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `financas_categorias`
--
ALTER TABLE `financas_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=624;

--
-- AUTO_INCREMENT for table `parceiros`
--
ALTER TABLE `parceiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `registro_itens`
--
ALTER TABLE `registro_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `registro_pagametno`
--
ALTER TABLE `registro_pagametno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `relatorios`
--
ALTER TABLE `relatorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorio_custom`
--
ALTER TABLE `relatorio_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tipos_permissao`
--
ALTER TABLE `tipos_permissao`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `valores`
--
ALTER TABLE `valores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `id_fk_empresas_companhia` FOREIGN KEY (`empresa_id`) REFERENCES `companhia` (`id`);

--
-- Constraints for table `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  ADD CONSTRAINT `id_fk_empresa_formas` FOREIGN KEY (`empresa_id`) REFERENCES `companhia` (`id`);

--
-- Constraints for table `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `id_fk_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `id_fk_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `id_fk_empresa_status` FOREIGN KEY (`empresa_id`) REFERENCES `companhia` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `id_fk_empresa_usuario` FOREIGN KEY (`empresa_id`) REFERENCES `companhia` (`id`);

--
-- Constraints for table `valores`
--
ALTER TABLE `valores`
  ADD CONSTRAINT `id_fk_empresas_valor` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
