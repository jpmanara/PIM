insert into TipoPagamento (valor) values ('Mensal');
insert into TipoPagamento (valor) values ('Adiantamento');

insert into TipoDesconto (valor) values ('INSS');
insert into TipoDesconto (valor) values ('Contribuição sindical');
insert into TipoDesconto (valor) values ('Vale transporte');
insert into TipoDesconto (valor) values ('Plano de saúde ou odontológico');


insert into TipoAdicional (cod, valor) values (1, 'Auxílio de custo teletrabalho');

insert into Funcionario (id, salario_base) values (1, 3000);
insert into Desconto (id, tipo_desconto_cod, valor) values ( 1, 1, 253.64);
insert into Adicional(id, tipo_adicional_cod, valor) values ( 1, 1, 150.54);

insert into Adicional_Funcionario (id, funcionario_id, adicional_id) values (1, 1, 1);
insert into Desconto_Funcionario (id, funcionario_id, desconto_id) values (1, 1, 1);

insert into Adicional_Pagamento (id, pagamento_id, adicional_id) values (1, 1, 1);
insert into Desconto_Pagamento (id, pagamento_id, desconto_id) values (1, 1, 1);

insert into Pagamento (id, funcionario_id, tipo_pagamento_cod, data_pagamento, valor) values (1, 1, 1, '2023-05-05', 3000);
