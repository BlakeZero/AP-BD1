drop table if exists pedido;
drop table if exists retirada;
drop table if exists entrega;
drop table if exists cliente_possui_enderecos;
drop table if exists pedido_possui_cupomdesconto;
drop table if exists pedido_refereao_produto;
drop table if exists produto_tem_estoque;
drop table if exists estoque;
drop table if exists cliente;
drop table if exists produto;
drop table if exists logistica;
drop table if exists cupom_desconto;
drop table if exists enderecos;
drop table if exists nota_fiscal;


create table cliente(
    nome varchar(200),
    cpf integer primary key,
    data_nasc date,
    email varchar(200),
    telefone varchar(200)
);

create table produto(
    codigo varchar(15) primary key,
    marca varchar(200),
    modelo varchar(200),
    descricao varchar(200),
    categoria varchar(200),
);

create table estoque(
    id varchar(15) primary key,
    preco_unitario decimal (10,2),
    preco_sugerido decimal (10,2),
    qtd_produtos_em_estoque integer,
    lote integer,
    data_entrada date,
    cod_prod varchar(15),

    foreign key (cod_prod) references produto(codigo)
);  

create table logistica(
    id varchar(15) primary key,
    galpao varchar(200),
    empresa_responsavel_galpao varchar(200)
);

create table retirada(
    id varchar(15),
    data_limite date,
    data_produto_recolhido date,
    local_retirada varchar(200),

    foreign key (id) references logistica(id)
);

create table entrega(
    id varchar(15),
    data_prevista date,
    transportadora varchar(200),
    frete decimal (10,2),

    foreign key (id) references logistica(id)
);

create table nota_fiscal(
    data_nota date,
    valor decimal (10,2),
    descricao varchar(200),
    codigo integer primary key
);

create table cupom_desconto(
    data_inicio date,
    data_fim date,
    porcent_desconto float,
    descricao varchar(200),
    id integer primary key
);

create table pedido(
    status_p varchar(200),
    tipo_pagamento varchar(200),
    data_compra date,
    numero_pedido integer primary key,
    canal varchar(200),
    
    id_log integer,
    cpf integer,
    cod_nf integer,
    cupom integer,

    foreign key (id_log) references logistica(id),
    foreign key (cpf) references cliente(cpf),
    foreign key (cod_nf) references nota_fiscal(codigo),
    foreign key (cupom) references cupom_desconto(id)
);

create table enderecos(
    id_endereco integer primary key,
    nome_rua varchar(200),
    numero_rua integer,
    complemento varchar(10),
    bairro varchar(200),
    cidade varchar(200),
    estado varchar(200)
);

create table cliente_possui_enderecos(
    cpf integer,
    id integer,
    primary key(cpf, id),

    foreign key (cpf) references cliente (cpf),
    foreign key (id) references enderecos (id_endereco)
);

create table pedido_refereao_produto(
    npedido integer,
    codigo integer,
    primary key(npedido,codigo),

    foreign key (npedido) references pedido (numero_pedido),
    foreign key (codigo) references produto (codigo)
);