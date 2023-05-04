insert into TipoPagamento (valor) values ('Mensal');
insert into TipoDesconto (valor) values ('INSS');
insert into TipoAdicional (valor) values ('Auxílio de custo teletrabalho');

insert into Funcionario (salario_base) values (3000);
insert into Desconto (pagamento_id, tipo_desconto_cod, valor) values (1, 1, 253.64);
insert into Adicional(pagamento_id, tipo_adicional_cod, valor) values (1, 1, 150.54);

insert into Adicional_Funcionario (funcionario_id, adicional_id) values (1, 1);
insert into Pagamento (funcionario_id, tipo_pagamento_cod, data_pagamento, valor) values (1, 1, '2023-05-05', 3000);
