/* Tabela Cliente */
insert into cliente(nome, cpf, data_nasc, email, telefone) values 
('Álvaro dos Santos', '462.658.248-65', '1993-12-5', 'alvarinho_chama@gmail.com','(18) 99858-1665'),
('Victor Hugo Mazzarotti', '778.686.312-28', '1981-06-26', 'vitao_mazza81@yahoo.com.br', '(31) 98731-6687'),
('Roseli Ganzerousi', '158.930.148-33', '1988-02-13', 'roseli.ganzer@hotmail.com', '(41) 93683-7673'),
('James Campos', '825.696.644-41', '1973-08-03', 'james_dometal@gmail.com', '(11) 91286-7411'),
('Antônio Pimentel', '189.425.35-517', '1992-11-01', 'toninho.picante@hotmail.com', '(19) 99658-2578'),
('David Mustafa', '778.568.118-98', '1971-09-13', 'eusouodavi_59@gmail.com', '(11) 99244-5771'),
('Alexandre Junior', '459.179.250-13', '2001-07-29', 'ale_juninho69@outlook.com', '(69) 97472-1567'),
('Bruno Henrique Baptista', '863.768.158-98', '1995-03-15', 'bruno_baptistao95@yahoo.com.br', '(19) 99632-5862'),
('Ana Letícia Machado', '292.813.498-23', '1999-08-31', 'aninhamachado99@hotmail.com', '(44) 97678-8531'),
('Renata Duarte', '709.523.097-84', '1992-04-18', 'renataduarte92@hotmail.com', '(86) 93638-7721');

/* Tabela Produto */
insert into produto(codigo, marca, modelo, descricao, categoria) values
('P64319564', 'Nike', 'Mercurial Vapor 13', 'Chuteira Futebol Society', 'Futebol'),
('P64331952', 'Nike', 'Camisa Torcedor', 'Uniforme I PSG', 'Futebol'),
('P64751221', 'Nike', 'Precision IV', 'Tênis Masculino Basquete', 'Basquete'),
('P78643295', 'Adidas', 'Camisa Jogador', 'Uniforme II São Paulo', 'Futebol'),
('P64582255', 'Nike', 'Air Max', 'Tênis Feminino Vôlei', 'Vôlei'),
('P78312568', 'Adidas', 'Camisa Torcedor', 'Uniforme I Flamengo', 'Futebol'),
('P31695478', 'Asics', 'Hypersprint', 'Sapatilha de Atletismo', 'Atletismo'),
('P11458629', 'Wilson', 'Pro Spin', 'Raquete de Tênis', 'Tênis'),
('P58796692', 'Diadora', 'Camisa Torcedor', 'Uniforme I Vasco', 'Futebol'),
('P64878991', 'Nike', 'Camisa Jogador', 'Uniforme I Brasil', 'Futebol');

/* Tabela Estoque */
insert into estoque(id, preco_unitario, preco_sugerido, qtd_produtos_em_estoque, lote, data_entrada, cod_prod) values
('E02345678', 149.90, 159.90, 540, 8644593, '2020-05-10', 'P64319564'),
('E98652451', 249.90, 229.90, 210, 1423693, '2020-05-10', 'P64331952'),
('E30155286', 299.90, 269.90, 304, 7593216, '2020-05-10', 'P64751221'),
('E97824134', 399.90, 409.90, 120, 6629716, '2020-05-10', 'P78643295'),
('E22837740', 449.90, 459.90, 340, 4458963, '2020-07-11', 'P64582255'),
('E73950340', 249.90, 229.90, 560, 1467822, '2020-07-11', 'P78312568'),
('E48196097', 139.90, 119.90, 230, 9476318, '2020-07-11', 'P31695478'),
('E69499175', 299.90, 269.90, 58,  1642590, '2020-07-11', 'P11458629'),
('E24355751', 199.90, 219.90, 180, 4025319, '2020-07-11', 'P58796692'),
('E20863758', 349.90, 379.90, 460, 9803167, '2020-06-09', 'P64878991');

/* Tabela Logística */
insert into logistica(id, galpao, empresa_responsavel_galpao) values
('L17082037', 'Sala A01', 'Juninho Empacotadora'),
('L20994072', 'Sala A01', 'Juninho Empacotadora'),
('L42828042', 'Sala A01', 'Juninho Empacotadora'),
('L58852021', 'Sala A01', 'Juninho Empacotadora'),	
('L47981082', 'Sala B02', 'Pacote Entregue LTDA'),
('L25712330', 'Sala B02', 'Pacote Entregue LTDA'),
('L41354335', 'Sala B03', 'Pacote Entregue LTDA'),
('L79107798', 'Sala B03', 'Pacote Entregue LTDA'),
('L22742350', 'Sala C01', 'Serj Soluções'),
('L56026143', 'Sala C01', 'Serj Soluções'),
('L78863263', 'Sala C02', 'Serj Soluções'),
('L79395726', 'Sala C02', 'Serj Soluções'),
('L88493705', 'Sala C04', 'Serj Soluções'),
('L43621353', 'Sala C04', 'Serj Soluções'),
('L18113690', 'Sala D01', 'Tá Na Mão Empacotadora'),
('L12335491', 'Sala D01', 'Tá Na Mão Empacotadora'),
('L61049032', 'Sala D02', 'Tá Na Mão Empacotadora'),
('L44688078', 'Sala D02', 'Tá Na Mão Empacotadora'),
('L78021565', 'Sala D03', 'Tá Na Mão Empacotadora'),
('L25240702', 'Sala D03', 'Tá Na Mão Empacotadora');

/* Tabela Retirada */
insert into retirada(local_retirada, data_limite, data_produto_recolhido, id) values
('Sede São Paulo',      '2011-03-02', '2011-03-01', 'L20994072'),
('Sede São Paulo',      '2012-10-15', '2012-10-12', 'L58852021'),
('Sede São Paulo',      '2014-04-11', '2014-04-09', 'L25712330'),
('Sede Rio de Janeiro', '2014-12-22', '2014-12-19', 'L79107798'),
('Sede Rio de Janeiro', '2015-12-02', '2015-12-01', 'L56026143'),
('Sede Porto Alegre',   '2016-06-11', '2016-06-09', 'L79395726'),
('Sede Porto Alegre',   '2017-03-17', '2017-03-16', 'L43621353'),
('Sede Porto Alegre',   '2017-09-30', '2017-09-28', 'L12335491'),
('Sede Porto Alegre',   '2019-01-05', '2019-01-03', 'L44688078'),
('Sede Fortaleza',      '2019-06-10', '2019-06-08', 'L25240702');

/* Tabela Entrega */
insert into entrega(data_prevista, transportadora, frete, id) values
('2011-03-02', 'Sedex', 39.90, 'L17082037'),
('2012-10-15', 'Sedex', 39.90, 'L42828042'),
('2014-04-11', 'PAC',   25.90, 'L47981082'),
('2014-12-22', 'PAC',   25.90, 'L41354335'),
('2015-12-02', 'Sedex', 39.90, 'L22742350'),
('2016-06-11', 'PAC',   25.90, 'L78863263'),
('2017-03-17', 'Sedex', 39.90, 'L88493705'),
('2017-09-30', 'Sedex', 39.90, 'L18113690'),
('2019-01-05', 'PAC',   25.90, 'L61049032'),
('2019-06-10', 'Sedex', 39.90, 'L78021565');

/* Tabela Nota Fiscal */
insert into nota_fiscal(codigo, valor, descricao, data_nota) values
(16778383, 279.80, 'Camisa do Flamengo Entrega',    '2011-02,25'),
(97048119, 249.90, 'Camisa do Flamengo Retirada',   '2012-06-14'),
(17922695, 179.83, 'Camisa do Vasco Entrega',       '2012-10-06'),
(48937195, 139.93, 'Camisa do Vasco Retirada',      '2012-10-30'),
(12221992, 425.80, 'Camisa do São Paulo Entrega',   '2014-04-02'),
(86189836, 399.90, 'Camisa do São Paulo Retirada',  '2014-12-12'),
(33736423, 149.90, 'Chuteira Fut Society Entrega',  '2014-12-13'),
(34756092, 149.90, 'Chuteira Fut Society Retirada', '2015-10-09'),
(91083500, 489.80, 'Tênis Vôlei Entrega',           '2015-11-24'),
(71643698, 427.40, 'Tênis Vôlei Retirada',          '2016-04-08'),
(72981887, 275.80, 'Camisa do PSG Entrega',         '2016-06-02'),
(35224653, 224.91, 'Camisa do PSG Retirada',        '2017-01-19'),
(47537556, 354.81, 'Camisa do Brasil Entrega',      '2017-03-08'),
(40028922, 307.91, 'Camisa do Brasil Retirada',     '2017-09-21'),
(77555799, 339.80, 'Raquete de Tênis Entrega',      '2018-06-07'),
(27121981, 299.90, 'Raquete de Tênis Retirada',     '2018-12-26'),
(85033826, 263.91, 'Tênis Basquete Entrega',        '2019-01-29'),
(71729708, 299.90, 'Tênis Basquete Retirada',       '2019-06-01'),
(10779373, 144.82, 'Sapatilha Atletismo Entrega',   '2019-06-15'),
(23234603, 139.90, 'Sapatilha Atletismo Retirada',  '2020-04-25');

/* Tabela Cupom Desconto */
insert into cupom_desconto(data_inicio, data_fim, porcent_desconto, descricao, id) values
('1970-01-01', '3000-12-31', 1,     'Sem Cupom',                          'C00000000'),
('2012-03-01', '2012-12-21', 0.7,   'Promoção Fim do Mundo',              'C80291531'),
('2016-02-24', '3000-12-31', 0.9,   'Cliente por mais de 5 anos',         'C36500543'),
('2015-06-20', '2015-09-20', 0.9,   'Inverno 2015',                       'C14225585'),
('2016-05-02', '2020-07-17', 0.88,  'Patrocinio YouTube PewDiePie',       'C62535361'),
('2019-01-01', '2019-12-31', 0.75,  'Campanha do Agasalho 2019',          'C41534475'),
('2018-11-27', '2018-11-30', 0.5,   'Black Friday 2018',                  'C88131620'),
('2016-12-21', '2017-03-20', 0.85,  'Verão 2016-2017',                    'C89534912'),
('2020-05-01', '2020-05-18', 0.88,  'Promoção Dia das Mães 2020',         'C87341107'),
('2019-03-10', '2019-12-05', 0.01,  'Patrocinio Twitch MolecularBroom',   'C55208459');

/* Tabela Pedidos */
insert into pedido(tipo_pagamento, status_p, data_compra, numero_pedido, canal, id_log, cpf, cupom, cod_nf) values
('Mastercard Crédito',  'Entregue', '2011-02-24', 27268, 'Ad Google',   'L17082037', '825.696.644-41', 'C00000000', 16778383),
('Boleto',              'Entregue', '2012-06-13', 27725, 'Catálogo',    'L20994072', '825.696.644-41', 'C00000000', 97048119),
('Visa Crédito',        'Entregue', '2012-10-05', 61384, 'Catálogo',    'L42828042', '778.568.118-98', 'C80291531', 17922695),
('Visa Crédito',        'Entregue', '2012-10-29', 51788, 'Ad YouTube',  'L58852021', '778.568.118-98', 'C80291531', 48937195),
('Mastercard Crédito',  'Entregue', '2014-04-01', 42162, 'Ad Facebook', 'L47981082', '462.658.248-65', 'C00000000', 12221992),
('Boleto',              'Entregue', '2014-12-11', 53227, 'Catálogo',    'L25712330', '462.658.248-65', 'C00000000', 86189836),
('Visa Crédito',        'Entregue', '2014-12-12', 27296, 'Ad Facebook', 'L41354335', '778.686.312-28', 'C00000000', 33736423),
('Boleto',              'Entregue', '2015-10-08', 51001, 'Catálogo',    'L79107798', '778.686.312-28', 'C14225585', 34756092),
('Boleto',              'Entregue', '2015-11-23', 21983, 'Ad Facebook', 'L22742350', '158.930.148-33', 'C00000000', 91083500),
('Mastercard Crédito',  'Entregue', '2016-04-07', 88215, 'Ad Google',   'L56026143', '158.930.148-33', 'C36500543', 71643698),
('Mastercard Crédito',  'Entregue', '2016-06-01', 64616, 'Ad Google',   'L78863263', '189.425.355-17', 'C00000000', 72981887),
('Caixa Débito',        'Entregue', '2017-01-18', 47139, 'Catálogo',    'L79395726', '189.425.355-17', 'C36500543', 35224653),
('Boleto',              'Entregue', '2017-03-07', 38073, 'Catálogo',    'L88493705', '863.768.158-98', 'C36500543', 47537556),
('Caixa Débito',        'Entregue', '2017-09-20', 66045, 'Ad Facebook', 'L43621353', '863.768.158-98', 'C62535361', 40028922),
('Visa Crédito',        'Entregue', '2018-06-06', 53851, 'Ad YouTube',  'L18113690', '709.523.097-84', 'C00000000', 77555799),
('Visa Crédito',        'Entregue', '2018-12-25', 67347, 'Ad YouTube',  'L12335491', '709.523.097-84', 'C62535361', 27121981),
('Boleto',              'Entregue', '2019-01-23', 83494, 'Ad YouTube',  'L61049032', '459.179.250-13', 'C00000000', 85033826),
('Boleto',              'Entregue', '2019-05-31', 20023, 'Catálogo',    'L44688078', '459.179.250-13', 'C00000000', 71729708),
('Caixa Débito',        'Entregue', '2019-06-14', 16401, 'Ad Facebook', 'L78021565', '292.813.498-23', 'C41534475', 10779373),
('Mastercard Crédito',  'Entregue', '2020-04-24', 79300, 'Ad Google',   'L25240702', '292.813.498-23', 'C00000000', 23234603);

/* Tabela Endereços*/
insert into enderecos(id_endereco, nome_rua, numero_rua, complemento, bairro, cidade, estado) values
('D61893511', 'Rua Amador Franco da Silveira', 56,    '--',   'Jardim Bela Vista',  'Pacaembu',          'São Paulo'),
('D90610006', 'Rua Domingos de Callistas',     345,	  '41A',  'Vila Pinheiros',     'São Paulo',         'São Paulo'),
('D53685415', 'Rua José Augusto',              1023,  '--',   'Vila Malachias',     'Pirassununga',      'São Paulo'),
('D25779766', 'Avenida Moacir Oséias Gucci',   1232,  '32B',  'Centro',             'Belo Horizonte',    'Minas Gerais'),
('D72461898', 'Rua dos Prazeres',              7566,  '14C',  'Jardim Eldorado',    'Cascavel',          'Paraná'),
('D49794402', 'Rua Quatro',                    4534,  '56D',  'Escalvado',          'Amarante',          'Piaui'),
('D63625219', 'Rua Katarina de Camargo',       42,    '--',   'Vila Madalena',      'Curitiba',          'Paraná'),
('D56498914', 'Rua Rio Grande Do Sul',         2344,  '--',   'São José',           'Espigão Do Oeste',  'Rondônia'),
('D74125883', 'Avenida Ângelo Bruno',          567,   '23E',  'Centro',             'Campinas',          'São Paulo'),
('D65740147', 'Avenida Prudente de Moraes',    266,   '--',   'Centro',             'Pirassununga',      'São Paulo');

/* Tabela Cliente possui endereços*/
insert into cliente_possui_enderecos(cpf, id) values
(46265824865, 'D61893511'),
(77868631228, 'D25779766'),
(15893014833, 'D63625219'),
(82569664441, 'D90610006'),
(18942535517, 'D74125883'),
(77856811898, 'D90610006'),
(45917925013, 'D56498914'),
(86376815898, 'D53685415'),
(29281349823, 'D72461898'),
(70952309784, 'D49794402');

/*Tabela Pedido refere ao Produto*/
insert into pedido_refereao_produto(npedido, codigo) values
(27268,	'P78312568'),
(27725,	'P78312568'),
(61384,	'P58796692'),
(51788,	'P58796692'),
(42162,	'P78643295'),
(53227,	'P78643295'),
(27296,	'P64319564'),
(51001,	'P64319564'),
(21983,	'P64582255'),
(88215,	'P64582255'),
(64616,	'P64331952'),
(47139,	'P64331952'),
(38073,	'P64878991'),
(66045,	'P64878991'),
(53851,	'P11458629'),
(67347,	'P11458629'),
(83494,	'P64751221'),
(20023,	'P64751221'),
(16401,	'P31695478'),
(79300,	'P31695478');
