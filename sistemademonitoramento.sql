-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2024 às 18:46
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemademonitoramento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alerta`
--

CREATE TABLE `alerta` (
  `id_alerta` int(255) NOT NULL,
  `id_usuario` int(255) NOT NULL,
  `id_dispositivo` int(255) NOT NULL,
  `descricao_alerta` text NOT NULL,
  `nivel_consumo` decimal(65,0) NOT NULL,
  `data_alerta` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alerta`
--

INSERT INTO `alerta` (`id_alerta`, `id_usuario`, `id_dispositivo`, `descricao_alerta`, `nivel_consumo`, `data_alerta`) VALUES
(1, 3, 1, 'jhefkbjds', 100, '2024-09-18 15:44:37.238664');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro de usuário`
--

CREATE TABLE `cadastro de usuário` (
  `id_usuario` int(255) NOT NULL,
  `nome` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `senha` varchar(222) NOT NULL,
  `telefone` varchar(222) NOT NULL,
  `endereco` varchar(222) NOT NULL,
  `cidade` varchar(222) NOT NULL,
  `estado` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro de usuário`
--

INSERT INTO `cadastro de usuário` (`id_usuario`, `nome`, `email`, `senha`, `telefone`, `endereco`, `cidade`, `estado`) VALUES
(1, 'Gabriela', 'gabi@gmail.com', '1234', '123456789', 'rua cactos', 'sao paulo', 'sao paulo'),
(2, 'Giovanna', 'gigi@gmail.com', '789', '232425', 'rua mamao', 'rio de janeiro', 'rio de janeiro'),
(3, 'Gustavo', 'gugu@gmail.com', '4787', '1445478', 'av xxxx', 'sao paulo', 'sao paulo'),
(4, 'Lucas', 'lucas@gmail.com', '1234', '12356', 'jhhfk\\sf', 'kshfkha', 'sudhfuwe'),
(5, 'Ana Silva', 'ana.silva@example.com', 'senha123', '11987654321', 'Rua A, 123', 'São Paulo', 'SP'),
(6, 'João Souza', 'joao.souza@example.com', 'senha123', '11987654322', 'Rua B, 234', 'Rio de Janeiro', 'RJ'),
(7, 'Maria Oliveira', 'maria.oliveira@example.com', 'senha123', '11987654323', 'Rua C, 345', 'Belo Horizonte', 'MG'),
(8, 'Pedro Santos', 'pedro.santos@example.com', 'senha123', '11987654324', 'Rua D, 456', 'Porto Alegre', 'RS'),
(9, 'Juliana Lima', 'juliana.lima@example.com', 'senha123', '11987654325', 'Rua E, 567', 'Curitiba', 'PR'),
(10, 'Lucas Pereira', 'lucas.pereira@example.com', 'senha123', '11987654326', 'Rua F, 678', 'Fortaleza', 'CE'),
(11, 'Fernanda Costa', 'fernanda.costa@example.com', 'senha123', '11987654327', 'Rua G, 789', 'Salvador', 'BA'),
(12, 'Gustavo Rocha', 'gustavo.rocha@example.com', 'senha123', '11987654328', 'Rua H, 890', 'Manaus', 'AM'),
(13, 'Isabella Gomes', 'isabella.gomes@example.com', 'senha123', '11987654329', 'Rua I, 901', 'Recife', 'PE'),
(14, 'Rafael Martins', 'rafael.martins@example.com', 'senha123', '11987654330', 'Rua J, 012', 'São Luís', 'MA'),
(15, 'Amanda Alves', 'amanda.alves@example.com', 'senha123', '11987654331', 'Rua K, 123', 'Teresina', 'PI'),
(16, 'Daniel Ferreira', 'daniel.ferreira@example.com', 'senha123', '11987654332', 'Rua L, 234', 'Belém', 'PA'),
(17, 'Patrícia Silva', 'patricia.silva@example.com', 'senha123', '11987654333', 'Rua M, 345', 'Florianópolis', 'SC'),
(18, 'Carlos Mendes', 'carlos.mendes@example.com', 'senha123', '11987654334', 'Rua N, 456', 'Natal', 'RN'),
(19, 'Mariana Lima', 'mariana.lima@example.com', 'senha123', '11987654335', 'Rua O, 567', 'João Pessoa', 'PB'),
(20, 'Fábio Cardoso', 'fabio.cardoso@example.com', 'senha123', '11987654336', 'Rua P, 678', 'Goiânia', 'GO'),
(21, 'Jéssica Almeida', 'jessica.almeida@example.com', 'senha123', '11987654337', 'Rua Q, 789', 'Campo Grande', 'MS'),
(22, 'Thiago Martins', 'thiago.martins@example.com', 'senha123', '11987654338', 'Rua R, 890', 'Maceió', 'AL'),
(23, 'Luana Ferreira', 'luana.ferreira@example.com', 'senha123', '11987654339', 'Rua S, 901', 'Vitória', 'ES'),
(24, 'André Oliveira', 'andre.oliveira@example.com', 'senha123', '11987654340', 'Rua T, 012', 'Aracaju', 'SE'),
(25, 'Sofia Nascimento', 'sofia.nascimento@example.com', 'senha123', '11987654341', 'Rua U, 123', 'São Paulo', 'SP'),
(26, 'Marcos Silva', 'marcos.silva@example.com', 'senha123', '11987654342', 'Rua V, 234', 'Rio de Janeiro', 'RJ'),
(27, 'Tatiane Dias', 'tatiane.dias@example.com', 'senha123', '11987654343', 'Rua W, 345', 'Belo Horizonte', 'MG'),
(28, 'Roberto Costa', 'roberto.costa@example.com', 'senha123', '11987654344', 'Rua X, 456', 'Porto Alegre', 'RS'),
(29, 'Vanessa Pires', 'vanessa.pires@example.com', 'senha123', '11987654345', 'Rua Y, 567', 'Curitiba', 'PR'),
(30, 'Leonardo Santos', 'leonardo.santos@example.com', 'senha123', '11987654346', 'Rua Z, 678', 'Fortaleza', 'CE'),
(31, 'Claudia Lima', 'claudia.lima@example.com', 'senha123', '11987654347', 'Rua AA, 789', 'Salvador', 'BA'),
(32, 'Julio Marques', 'julio.marques@example.com', 'senha123', '11987654348', 'Rua AB, 890', 'Manaus', 'AM'),
(33, 'Fernanda Alves', 'fernanda.alves@example.com', 'senha123', '11987654349', 'Rua AC, 901', 'Recife', 'PE'),
(34, 'Eduardo Gomes', 'eduardo.gomes@example.com', 'senha123', '11987654350', 'Rua AD, 012', 'São Luís', 'MA'),
(35, 'Tatiane Almeida', 'tatiane.almeida@example.com', 'senha123', '11987654351', 'Rua AE, 123', 'Teresina', 'PI'),
(36, 'Rafael Rodrigues', 'rafael.rodrigues@example.com', 'senha123', '11987654352', 'Rua AF, 234', 'Belém', 'PA'),
(37, 'Priscila Santos', 'priscila.santos@example.com', 'senha123', '11987654353', 'Rua AG, 345', 'Florianópolis', 'SC'),
(38, 'Gustavo Almeida', 'gustavo.almeida@example.com', 'senha123', '11987654354', 'Rua AH, 456', 'Natal', 'RN'),
(39, 'Bianca Lima', 'bianca.lima@example.com', 'senha123', '11987654355', 'Rua AI, 567', 'João Pessoa', 'PB'),
(40, 'Henrique Costa', 'henrique.costa@example.com', 'senha123', '11987654356', 'Rua AJ, 678', 'Goiânia', 'GO'),
(41, 'Lúcia Ferreira', 'lucia.ferreira@example.com', 'senha123', '11987654357', 'Rua AK, 789', 'Campo Grande', 'MS'),
(42, 'Rogério Santos', 'rogerio.santos@example.com', 'senha123', '11987654358', 'Rua AL, 890', 'Maceió', 'AL'),
(43, 'Marta Lima', 'marta.lima@example.com', 'senha123', '11987654359', 'Rua AM, 901', 'Vitória', 'ES'),
(44, 'Jorge Costa', 'jorge.costa@example.com', 'senha123', '11987654360', 'Rua AN, 012', 'Aracaju', 'SE'),
(45, 'Tânia Silva', 'tania.silva@example.com', 'senha123', '11987654361', 'Rua AO, 123', 'São Paulo', 'SP'),
(46, 'Alberto Gomes', 'alberto.gomes@example.com', 'senha123', '11987654362', 'Rua AP, 234', 'Rio de Janeiro', 'RJ'),
(47, 'Tatiane Lima', 'tatiane.lima@example.com', 'senha123', '11987654363', 'Rua AQ, 345', 'Belo Horizonte', 'MG'),
(48, 'Alexandre Santos', 'alexandre.santos@example.com', 'senha123', '11987654364', 'Rua AR, 456', 'Porto Alegre', 'RS'),
(49, 'Débora Almeida', 'debora.almeida@example.com', 'senha123', '11987654365', 'Rua AS, 567', 'Curitiba', 'PR'),
(50, 'Ricardo Lima', 'ricardo.lima@example.com', 'senha123', '11987654366', 'Rua AT, 678', 'Fortaleza', 'CE'),
(51, 'Leandro Costa', 'leandro.costa@example.com', 'senha123', '11987654367', 'Rua AU, 789', 'Salvador', 'BA'),
(52, 'Talita Pires', 'talita.pires@example.com', 'senha123', '11987654368', 'Rua AV, 890', 'Manaus', 'AM'),
(53, 'Marcio Almeida', 'marcio.almeida@example.com', 'senha123', '11987654369', 'Rua AW, 901', 'Recife', 'PE'),
(54, 'Juliana Gomes', 'juliana.gomes@example.com', 'senha123', '11987654370', 'Rua AX, 012', 'São Luís', 'MA'),
(55, 'Carlos Ferreira', 'carlos.ferreira@example.com', 'senha123', '11987654371', 'Rua AY, 123', 'Teresina', 'PI'),
(56, 'Renato Lima', 'renato.lima@example.com', 'senha123', '11987654381', 'Rua BI, 123', 'São Paulo', 'SP'),
(57, 'Marcela Gomes', 'marcela.gomes@example.com', 'senha123', '11987654382', 'Rua BJ, 234', 'Rio de Janeiro', 'RJ'),
(58, 'Felipe Costa', 'felipe.costa@example.com', 'senha123', '11987654383', 'Rua BK, 345', 'Belo Horizonte', 'MG'),
(59, 'Aline Pereira', 'aline.pereira@example.com', 'senha123', '11987654384', 'Rua BL, 456', 'Porto Alegre', 'RS'),
(60, 'Paulo Souza', 'paulo.souza@example.com', 'senha123', '11987654385', 'Rua BM, 567', 'Curitiba', 'PR'),
(61, 'Carolina Santos', 'carolina.santos@example.com', 'senha123', '11987654386', 'Rua BN, 678', 'Fortaleza', 'CE'),
(62, 'Henrique Oliveira', 'henrique.oliveira@example.com', 'senha123', '11987654387', 'Rua BO, 789', 'Salvador', 'BA'),
(63, 'Nathalia Lima', 'nathalia.lima@example.com', 'senha123', '11987654388', 'Rua BP, 890', 'Manaus', 'AM'),
(64, 'Vinícius Rocha', 'vinicius.rocha@example.com', 'senha123', '11987654389', 'Rua BQ, 901', 'Recife', 'PE'),
(65, 'Juliana Martins', 'juliana.martins@example.com', 'senha123', '11987654390', 'Rua BR, 012', 'São Luís', 'MA'),
(66, 'André Souza', 'andre.souza@example.com', 'senha123', '11987654391', 'Rua BS, 123', 'Teresina', 'PI'),
(67, 'Eduardo Santos', 'eduardo.santos@example.com', 'senha123', '11987654392', 'Rua BT, 234', 'Belém', 'PA'),
(68, 'Patrícia Ferreira', 'patricia.ferreira@example.com', 'senha123', '11987654393', 'Rua BU, 345', 'Florianópolis', 'SC'),
(69, 'Daniel Silva', 'daniel.silva@example.com', 'senha123', '11987654394', 'Rua BV, 456', 'Natal', 'RN'),
(70, 'Gabriel Alves', 'gabriel.alves@example.com', 'senha123', '11987654395', 'Rua BW, 567', 'João Pessoa', 'PB'),
(71, 'Fernanda Dias', 'fernanda.dias@example.com', 'senha123', '11987654396', 'Rua BX, 678', 'Goiânia', 'GO'),
(72, 'Tatiane Rodrigues', 'tatiane.rodrigues@example.com', 'senha123', '11987654397', 'Rua BY, 789', 'Campo Grande', 'MS'),
(73, 'Lucas Almeida', 'lucas.almeida@example.com', 'senha123', '11987654398', 'Rua BZ, 890', 'Maceió', 'AL'),
(74, 'Bruna Costa', 'bruna.costa@example.com', 'senha123', '11987654399', 'Rua CA, 901', 'Vitória', 'ES'),
(75, 'Rafael Ferreira', 'rafael.ferreira@example.com', 'senha123', '11987654400', 'Rua CB, 012', 'Aracaju', 'SE'),
(76, 'Rodrigo Lima', 'rodrigo.lima@example.com', 'senha123', '11987654401', 'Rua CC, 123', 'São Paulo', 'SP'),
(77, 'Marina Silva', 'marina.silva@example.com', 'senha123', '11987654402', 'Rua CD, 234', 'Rio de Janeiro', 'RJ'),
(78, 'Thiago Souza', 'thiago.souza@example.com', 'senha123', '11987654403', 'Rua CE, 345', 'Belo Horizonte', 'MG'),
(79, 'Luciana Santos', 'luciana.santos@example.com', 'senha123', '11987654404', 'Rua CF, 456', 'Porto Alegre', 'RS'),
(80, 'Vinícius Pereira', 'vinicius.pereira@example.com', 'senha123', '11987654405', 'Rua CG, 567', 'Curitiba', 'PR'),
(81, 'Eduarda Almeida', 'eduarda.almeida@example.com', 'senha123', '11987654406', 'Rua CH, 678', 'Fortaleza', 'CE'),
(82, 'Marcos Lima', 'marcos.lima@example.com', 'senha123', '11987654407', 'Rua CI, 789', 'Salvador', 'BA'),
(83, 'Beatriz Rocha', 'beatriz.rocha@example.com', 'senha123', '11987654408', 'Rua CJ, 890', 'Manaus', 'AM'),
(84, 'Fábio Martins', 'fabio.martins@example.com', 'senha123', '11987654409', 'Rua CK, 901', 'Recife', 'PE'),
(85, 'Amanda Gomes', 'amanda.gomes@example.com', 'senha123', '11987654410', 'Rua CL, 012', 'São Luís', 'MA'),
(86, 'Douglas Souza', 'douglas.souza@example.com', 'senha123', '11987654411', 'Rua CM, 123', 'Teresina', 'PI'),
(87, 'Letícia Silva', 'leticia.silva@example.com', 'senha123', '11987654412', 'Rua CN, 234', 'Belém', 'PA'),
(88, 'Felipe Santos', 'felipe.santos@example.com', 'senha123', '11987654413', 'Rua CO, 345', 'Florianópolis', 'SC'),
(89, 'Joana Almeida', 'joana.almeida@example.com', 'senha123', '11987654414', 'Rua CP, 456', 'Natal', 'RN'),
(90, 'Marcelo Costa', 'marcelo.costa@example.com', 'senha123', '11987654415', 'Rua CQ, 567', 'João Pessoa', 'PB'),
(91, 'Raquel Lima', 'raquel.lima@example.com', 'senha123', '11987654416', 'Rua CR, 678', 'Goiânia', 'GO'),
(92, 'Isabela Santos', 'isabela.santos@example.com', 'senha123', '11987654417', 'Rua CS, 789', 'Campo Grande', 'MS'),
(93, 'Júlio Ferreira', 'julio.ferreira@example.com', 'senha123', '11987654418', 'Rua CT, 890', 'Maceió', 'AL'),
(94, 'Tatiana Oliveira', 'tatiana.oliveira@example.com', 'senha123', '11987654419', 'Rua CU, 901', 'Vitória', 'ES'),
(95, 'Wesley Rocha', 'wesley.rocha@example.com', 'senha123', '11987654420', 'Rua CV, 012', 'Aracaju', 'SE'),
(96, 'Fernanda Silva', 'fernanda.silva@example.com', 'senha123', '11987654421', 'Rua CW, 123', 'São Paulo', 'SP'),
(97, 'Anderson Souza', 'anderson.souza@example.com', 'senha123', '11987654422', 'Rua CX, 234', 'Rio de Janeiro', 'RJ'),
(98, 'Tatiane Gomes', 'tatiane.gomes@example.com', 'senha123', '11987654423', 'Rua CY, 345', 'Belo Horizonte', 'MG'),
(99, 'Rodrigo Pereira', 'rodrigo.pereira@example.com', 'senha123', '11987654424', 'Rua CZ, 456', 'Porto Alegre', 'RS'),
(100, 'Sabrina Costa', 'sabrina.costa@example.com', 'senha123', '11987654425', 'Rua DA, 567', 'Curitiba', 'PR'),
(101, 'Matheus Lima', 'matheus.lima@example.com', 'senha123', '11987654426', 'Rua DB, 678', 'Fortaleza', 'CE'),
(102, 'Cristina Souza', 'cristina.souza@example.com', 'senha123', '11987654427', 'Rua DC, 789', 'Salvador', 'BA'),
(103, 'Felipe Rocha', 'felipe.rocha@example.com', 'senha123', '11987654428', 'Rua DD, 890', 'Manaus', 'AM'),
(104, 'Thaís Martins', 'thais.martins@example.com', 'senha123', '11987654429', 'Rua DE, 901', 'Recife', 'PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuraçao`
--

CREATE TABLE `configuraçao` (
  `id_configuracao` int(255) NOT NULL,
  `config_nome` varchar(255) NOT NULL,
  `config_valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consumo`
--

CREATE TABLE `consumo` (
  `id_consumo` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `consumo_kwh` decimal(10,2) DEFAULT NULL,
  `data_consumo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `consumo`
--

INSERT INTO `consumo` (`id_consumo`, `id_usuario`, `consumo_kwh`, `data_consumo`) VALUES
(1, 1, 4787.00, '2024-09-26 21:10:46'),
(2, 4, 5656.00, '2024-09-20 21:24:23');

--
-- Acionadores `consumo`
--
DELIMITER $$
CREATE TRIGGER `copiar_para_historico` AFTER INSERT ON `consumo` FOR EACH ROW BEGIN
    INSERT INTO Historico_Consumo (id_usuario, consumo_kwh, data_registro)
    VALUES (NEW.id_usuario, NEW.consumo_kwh, NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura`
--

CREATE TABLE `fatura` (
  `id_fatura` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `valor_total` decimal(65,0) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fatura`
--

INSERT INTO `fatura` (`id_fatura`, `id_usuario`, `valor_total`, `data_vencimento`, `data_pagamento`) VALUES
(1, 3, 100, '2024-09-03', '2024-09-20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerenciamento de dispositivos`
--

CREATE TABLE `gerenciamento de dispositivos` (
  `id_dispositivo` int(255) NOT NULL,
  `nome dispositivo` varchar(255) NOT NULL,
  `tipo dispositivo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `gerenciamento de dispositivos`
--

INSERT INTO `gerenciamento de dispositivos` (`id_dispositivo`, `nome dispositivo`, `tipo dispositivo`, `descricao`) VALUES
(1, 'televisao', 'eletrodomestico', 'consome muita energia'),
(2, 'geladeira', 'eltro', 'uhu'),
(3, 'tv', 'ahasd', 'akfhaif');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico_consumo`
--

CREATE TABLE `historico_consumo` (
  `id_historico` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `consumo_kwh` decimal(10,2) DEFAULT NULL,
  `data_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `historico_consumo`
--

INSERT INTO `historico_consumo` (`id_historico`, `id_usuario`, `consumo_kwh`, `data_registro`) VALUES
(1, 1, 4787.00, '2024-09-30 21:11:02'),
(2, 4, 5656.00, '2024-09-30 21:24:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao`
--

CREATE TABLE `localizacao` (
  `id_localizacao` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `localizacao`
--

INSERT INTO `localizacao` (`id_localizacao`, `descricao`, `data_registro`) VALUES
(1, 'teste 1', '2024-09-19 21:21:29');

--
-- Acionadores `localizacao`
--
DELIMITER $$
CREATE TRIGGER `inserir_manutencao` AFTER INSERT ON `localizacao` FOR EACH ROW BEGIN
    INSERT INTO Manutencao (id_localizacao, descricao_manutencao, data_manutencao)
    VALUES (NEW.id_localizacao, 'Nova localização registrada, pronta para manutenção.', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_usuario` int(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_usuario`, `senha`) VALUES
(1, '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manutencao`
--

CREATE TABLE `manutencao` (
  `id_manutencao` int(11) NOT NULL,
  `id_localizacao` int(11) DEFAULT NULL,
  `descricao_manutencao` varchar(255) DEFAULT NULL,
  `data_manutencao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `manutencao`
--

INSERT INTO `manutencao` (`id_manutencao`, `id_localizacao`, `descricao_manutencao`, `data_manutencao`) VALUES
(1, 1, 'Nova localização registrada, pronta para manutenção.', '2024-09-30 21:21:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio`
--

CREATE TABLE `relatorio` (
  `id_relatorio` int(255) NOT NULL,
  `id_usuario` int(255) NOT NULL,
  `id_dispositivo` int(11) NOT NULL,
  `consumo_total` decimal(20,0) NOT NULL,
  `periodo_inicio` date NOT NULL,
  `periodo_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `relatorio`
--

INSERT INTO `relatorio` (`id_relatorio`, `id_usuario`, `id_dispositivo`, `consumo_total`, `periodo_inicio`, `periodo_fim`) VALUES
(1, 1, 1, 100, '2024-06-05', '2024-11-01'),
(2, 2, 2, 456, '2024-09-04', '2024-09-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarifa`
--

CREATE TABLE `tarifa` (
  `id_tarifa` int(255) NOT NULL,
  `tipo_tarifa` int(255) NOT NULL,
  `valor_kwh` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alerta`
--
ALTER TABLE `alerta`
  ADD PRIMARY KEY (`id_alerta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_dispositivo` (`id_dispositivo`);

--
-- Índices para tabela `cadastro de usuário`
--
ALTER TABLE `cadastro de usuário`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `configuraçao`
--
ALTER TABLE `configuraçao`
  ADD PRIMARY KEY (`id_configuracao`);

--
-- Índices para tabela `consumo`
--
ALTER TABLE `consumo`
  ADD PRIMARY KEY (`id_consumo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`id_fatura`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `gerenciamento de dispositivos`
--
ALTER TABLE `gerenciamento de dispositivos`
  ADD PRIMARY KEY (`id_dispositivo`);

--
-- Índices para tabela `historico_consumo`
--
ALTER TABLE `historico_consumo`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `localizacao`
--
ALTER TABLE `localizacao`
  ADD PRIMARY KEY (`id_localizacao`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `manutencao`
--
ALTER TABLE `manutencao`
  ADD PRIMARY KEY (`id_manutencao`),
  ADD KEY `id_localizacao` (`id_localizacao`);

--
-- Índices para tabela `relatorio`
--
ALTER TABLE `relatorio`
  ADD PRIMARY KEY (`id_relatorio`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_dispositivo` (`id_dispositivo`);

--
-- Índices para tabela `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`id_tarifa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alerta`
--
ALTER TABLE `alerta`
  MODIFY `id_alerta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cadastro de usuário`
--
ALTER TABLE `cadastro de usuário`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de tabela `configuraçao`
--
ALTER TABLE `configuraçao`
  MODIFY `id_configuracao` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consumo`
--
ALTER TABLE `consumo`
  MODIFY `id_consumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fatura`
--
ALTER TABLE `fatura`
  MODIFY `id_fatura` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `gerenciamento de dispositivos`
--
ALTER TABLE `gerenciamento de dispositivos`
  MODIFY `id_dispositivo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `historico_consumo`
--
ALTER TABLE `historico_consumo`
  MODIFY `id_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `localizacao`
--
ALTER TABLE `localizacao`
  MODIFY `id_localizacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `manutencao`
--
ALTER TABLE `manutencao`
  MODIFY `id_manutencao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `relatorio`
--
ALTER TABLE `relatorio`
  MODIFY `id_relatorio` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `id_tarifa` int(255) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alerta`
--
ALTER TABLE `alerta`
  ADD CONSTRAINT `alerta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro de usuário` (`id_usuario`),
  ADD CONSTRAINT `alerta_ibfk_2` FOREIGN KEY (`id_dispositivo`) REFERENCES `gerenciamento de dispositivos` (`id_dispositivo`);

--
-- Limitadores para a tabela `consumo`
--
ALTER TABLE `consumo`
  ADD CONSTRAINT `consumo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro de usuário` (`id_usuario`);

--
-- Limitadores para a tabela `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fatura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro de usuário` (`id_usuario`);

--
-- Limitadores para a tabela `historico_consumo`
--
ALTER TABLE `historico_consumo`
  ADD CONSTRAINT `historico_consumo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro de usuário` (`id_usuario`);

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro de usuário` (`id_usuario`);

--
-- Limitadores para a tabela `manutencao`
--
ALTER TABLE `manutencao`
  ADD CONSTRAINT `manutencao_ibfk_1` FOREIGN KEY (`id_localizacao`) REFERENCES `localizacao` (`id_localizacao`);

--
-- Limitadores para a tabela `relatorio`
--
ALTER TABLE `relatorio`
  ADD CONSTRAINT `relatorio_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro de usuário` (`id_usuario`),
  ADD CONSTRAINT `relatorio_ibfk_2` FOREIGN KEY (`id_dispositivo`) REFERENCES `gerenciamento de dispositivos` (`id_dispositivo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
