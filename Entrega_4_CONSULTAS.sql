-- 1. Consulta buscando clientes que não possuem seu endereço no estado de São Paulo
select C.nome
from Cliente C, Enderecos E, cliente_possui_enderecos CPE
where C.cpf = CPE.cpf
and CPE.id = E.id_endereco
and E.estado <> 'São Paulo'
group by E.estado

-- 2. Consulta buscando os clientes que utilizaram cupom de desconto nas compras e quais eles usaram
select C.nome
from Cliente C, Pedido P
where C.cpf = P.cpf
and P.cupom <> 'C00000000'
and P.cupom = CP.id
group by CP.descricao

-- 3. Consulta buscando clientes que não possuem DDD de São Paulo
select c.nome
from Cliente C, Enderecos E, cliente_possui_enderecos CPE
where C.cpf = CPE.cpf
and CPE.id = E.id_endereco
and c.telefone not like '(1%'
group by E.cidade

-- 4. Consulta que junta usuários que possuem email do gmail ou hotmail
select c.nome, c.email
from Cliente C
where C.email like '%@gmail.com'
UNION
select c.nome, c.email
from Cliente C
where C.email like '%@hotmail.com'

-- 5. Consulta que busca clientes que pegaram camisa de torcedor ou camisa de jogador
select C.nome, Pdt.marca, Pdt.modelo, Pdt.descricao
from Cliente C, Produto Pdt, Pedido Pdd, Pedido_refere_ao_produto PRP
where Pdd.cpf = C.cpf
and Pdd.numero_pedido = PRP.num_pedido
and PRP.codigo_prod = Pdt.codigo
and Pdt.modelo = 'Camisa Torcedor'
UNION
select C.nome, Pdt.marca, Pdt.modelo, Pdt.descricao
from Cliente C, Produto Pdt, Pedido Pdd, Pedido_refere_ao_produto PRP
where C.cpf = Pdd.cpf
and Pdd.numero_pedido = PRP.num_pedido
and PRP.codigo_prod = Pdt.codigo
and Pdt.modelo = 'Camisa Jogador'

-- 6. Consulta que busca o nome dos clientes que não moram em apartamento e são do estado de São Paulo
select C.nome
from Cliente C, Enderecos E, cliente_possui_enderecos CPE
where C.cpf = CPE.cpf
and CPE.id = E.id_endereco
and E.complemento = '--'
INTERSECT
select C.nome
from Cliente C, Enderecos E, cliente_possui_enderecos CPE
where C.cpf = CPE.cpf
and CPE.id = E.id_endereco
and E.estado = 'São Paulo'

-- 7. Consulta que mostra os produtos que custaram mais de 250 reais no total e em qual categoria pertencem
select N.descricao, N.valor
from Nota_fiscal N, Produto Pdt, Pedido Pdd, Pedido_refere_ao_produto PRP
where N.id = Pdd.cod_nf
and Pdd.numero_pedido = PRP.Num_pedido
and PRP.Codigo_prod = Pdt.codigo
and N.valor > 250
group by Pdt.categoria

-- 8. Consulta que busca clientes que fizeram os pedidos com Mastercard crédito ou Visa crédito
select C.cliente, P.tipo_pagamento
from Cliente C, Pedido P
where C.cpf = P.cpf
and P.tipo_pagamento = 'Mastercard crédito'
UNION
select C.cliente, P.tipo_pagamento
from Cliente C, Pedido P
where C.cpf = P.cpf
and P.tipo_pagamento = 'Visa crédito'

-- 9. Consulta que mostra produtos que tenham mais de 300 produtos no estoque ou que tenham custo unitário menor que 300 reais
select P.marca, P.modelo, P.descricao
from Produto P, Estoque E
where P.codigo = E.cod_prod
and E.qtd_produtos_em_estoque > 300
UNION
select P.marca, P.modelo, P.descricao
from Produto P, Estoque E
where P.codigo = E.cod_prod
and E.preco_unitario < 200

-- 10. Consulta que busca a quantidade de pedidos pra cada pessoa
select c.nome ,count(P.numero_pedido)
from Pedido P, Cliente C
where C.cpf = P.cpf
group by P.cpf