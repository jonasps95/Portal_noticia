-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Ago-2020 às 22:48
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portal_noticia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(11, '::1', '2020-08-20 12:27:53', '5f3e88539be6d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'admin', 'admin', '595695efaac58.jpg', 'Guilherme C. Grillo', 2),
(2, 'guigui768', '123456', 'danki_bg.jpg', 'Guilherme C. Grillo', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '::1', '2017-06-12'),
(2, '192.168.0.2', '2017-06-11'),
(3, '::1', '2017-06-13'),
(4, '::1', '2017-06-13'),
(5, '::1', '2017-06-13'),
(6, '::1', '2017-06-13'),
(7, '::1', '2017-06-14'),
(8, '::1', '2017-06-14'),
(9, '::1', '2017-06-16'),
(10, '::1', '2017-06-20'),
(11, '::1', '2017-06-20'),
(12, '::1', '2017-06-20'),
(13, '::1', '2017-06-20'),
(14, '::1', '2017-06-26'),
(15, '::1', '2017-06-27'),
(16, '::1', '2017-07-03'),
(17, '::1', '2020-08-11'),
(18, '::1', '2020-08-18'),
(19, '::1', '2020-08-18'),
(20, '::1', '2020-08-18'),
(21, '::1', '2020-08-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.categorias`
--

CREATE TABLE `tb_site.categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.categorias`
--

INSERT INTO `tb_site.categorias` (`id`, `nome`, `slug`, `order_id`) VALUES
(3, 'Geral', 'geral', 3),
(4, 'Cotidiano', 'cotidiano', 4),
(5, 'Mundo', 'mundo', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `descricao1` text NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `descricao1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Projeto editado', 'Guilherme Grillo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam. Cras vel augue nec diam tempus efficitur. Aliquam et posuere libero. Integer malesuada justo sit amet ullamcorper pretium. Phasellus pellentesque tincidunt congue. Aliquam dictum ipsum aliquam, elementum massa quis, viverra nibh.\r\n\r\nDuis in hendrerit felis. Aliquam consequat augue quis urna aliquam, id tempor arcu lacinia. Donec egestas leo porttitor lacus laoreet varius. Nam ut pellentesque sapien. Pellentesque placerat dignissim rutrum. Praesent ex mauris, fringilla in tempor id, pharetra nec nibh. Curabitur a ligula sapien. Maecenas condimentum pellentesque fermentum. Fusce blandit lobortis erat, eu mattis metus convallis eleifend. Integer tincidunt ac arcu ut feugiat. Aliquam ac est interdum massa gravida tincidunt a ac leo. Maecenas elit magna, tempus ut eleifend a, sollicitudin et arcu. Aliquam sed tempor velit, at pulvinar tortor. Vestibulum eu lorem sit amet risus porta fringilla ut in nisl.', 'fa fa-css3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam.', 'fa fa-html5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi ege', 'fa fa-gg-circle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(8, 'Guilherme', 'Olá, funcionando', '19/09/2019', 11),
(9, 'João', 'Olá, funcionando', '19/09/2019', 10),
(10, 'Mario', 'Depoimento', '19/09/2019', 9),
(11, 'Outro', 'Ok', '19/08/2016', 8),
(12, 'Guilherme Grillo', 'Depoimento de teste', '25/05/1993', 12),
(13, 'Joao', 'outro depoimento editado', '25/05/1993', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.noticias`
--

CREATE TABLE `tb_site.noticias` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `capa` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.noticias`
--

INSERT INTO `tb_site.noticias` (`id`, `categoria_id`, `data`, `titulo`, `conteudo`, `capa`, `slug`, `order_id`) VALUES
(9, 3, '2020-08-20', 'Noticia', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum iaculis nisl scelerisque, iaculis mi id, iaculis enim. Ut et fermentum est. Vivamus sem felis, auctor commodo porttitor vel, accumsan sed sapien. Vestibulum lobortis orci nec nibh tincidunt, nec semper augue pharetra. Mauris placerat lobortis dolor vitae euismod. Etiam elementum nulla quis dolor vulputate, eget efficitur nisi tincidunt. Duis quis nibh leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed eu porttitor nunc. Nullam vitae iaculis dui. Praesent at augue felis. Maecenas vel enim urna. Duis posuere elit vel lectus maximus, egestas blandit tortor vulputate. Nullam lorem purus, elementum semper rhoncus a, consequat consectetur lorem. Quisque sed aliquet justo. Duis nibh diam, semper vitae dignissim rutrum, blandit non arcu. Quisque aliquet maximus massa nec porta. Fusce pretium, diam vel blandit suscipit, metus tortor rutrum tellus, eget blandit metus ante ac mi. Maecenas dolor dolor, pharetra vel viverra vel, tristique vel ante. Sed sit amet massa velit. Cras placerat orci sed tortor volutpat condimentum.<img src=\"https://img.elo7.com.br/product/zoom/29926C6/fundo-fotografico-em-tecido-paisagem-2-60x1-50m-newborn.jpg\" alt=\"img\" width=\"1200\" height=\"770\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum iaculis nisl scelerisque, iaculis mi id, iaculis enim. Ut et fermentum est. Vivamus sem felis, auctor commodo porttitor vel, accumsan sed sapien. Vestibulum lobortis orci nec nibh tincidunt, nec semper augue pharetra. Mauris placerat lobortis dolor vitae euismod. Etiam elementum nulla quis dolor vulputate, eget efficitur nisi tincidunt. Duis quis nibh leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed eu porttitor nunc. Nullam vitae iaculis dui. Praesent at augue felis. Maecenas vel enim urna. Duis posuere elit vel lectus maximus, egestas blandit tortor vulputate. Nullam lorem purus, elementum semper rhoncus a, consequat consectetur lorem. Quisque sed aliquet justo. Duis nibh diam, semper vitae dignissim rutrum, blandit non arcu. Quisque aliquet maximus massa nec porta. Fusce pretium, diam vel blandit suscipit, metus tortor rutrum tellus, eget blandit metus ante ac mi. Maecenas dolor dolor, pharetra vel viverra vel, tristique vel ante. Sed sit amet massa velit. Cras placerat orci sed tortor volutpat condimentum.</p>', '5f3e9667bbb2d.jpg', 'noticia', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(4, 'Meu serviço #1', 4),
(5, 'Meu serviço #2 EDITADO novamente', 6),
(6, 'Meu serviço #3 EDITADO NOVAMENTE NOVAMENTE', 7),
(7, 'Meu servico #4', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.slides`
--

INSERT INTO `tb_site.slides` (`id`, `nome`, `slide`, `order_id`) VALUES
(8, 'Imagem de teste', '594d4e65b16be.jpg', 8),
(9, 'Meu slide', '594d4ec5ad5dd.jpg', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
