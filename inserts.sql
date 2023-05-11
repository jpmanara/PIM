insert into TipoPagamento (valor) values ('Mensal');
insert into TipoPagamento (valor) values ('Adiantamento');

insert into TipoCargo (valor) values ('Desenvolvedor');

insert into TipoDesconto (valor) values ('INSS');
insert into TipoDesconto (valor) values ('Contribuição sindical');
insert into TipoDesconto (valor) values ('Vale transporte');
insert into TipoDesconto (valor) values ('Plano de saúde');
insert into TipoDesconto (valor) values ('Plano odontológico');
insert into TipoDesconto (valor) values ('Adiantamento');
insert into TipoDesconto (valor) values ('Ausência');

insert into TipoAdicional (valor) values ('Hora extra');
insert into TipoAdicional (valor) values ('Adicional noturno');
insert into TipoAdicional (valor) values ('Adicional de periculosidade');
insert into TipoAdicional (valor) values ('Adicional de insalubridade');
insert into TipoAdicional (valor) values ('Comissão');
insert into TipoAdicional (valor) values ('Gratificação');
insert into TipoAdicional (valor) values ('Auxílio de custo teletrabalho');

insert into Funcionario (nome, tipo_cargo_cod, salario_base, jornada_trabalho_semanal) values ('Johnny', 1, 4500.50, 44);

insert into Desconto (tipo_desconto_cod, valor_fixo, porcentagem, min_salario, max_salario) values (1, NULL, 7.5, 0, 1110);
insert into Desconto (tipo_desconto_cod, valor_fixo, porcentagem, min_salario, max_salario) values (1, NULL, 9, 1110.01, 2203.48);
insert into Desconto (tipo_desconto_cod, valor_fixo, porcentagem, min_salario, max_salario) values (1, NULL, 12, 2203.48, 3305.22);
insert into Desconto (tipo_desconto_cod, valor_fixo, porcentagem, min_salario, max_salario) values (1, 925.46, NULL, 6610.44, NULL);

/*daqui pra baixo tem que arrumar ainda*/
insert into Adicional(tipo_adicional_cod, valor_fixo, porcentagem, min_salario, max_salario ) values (1, 150.5, NULL, NULL, NULL);

insert into Adicional_Funcionario (funcionario_id, adicional_id) values (1, 1);
insert into Desconto_Funcionario (funcionario_id, desconto_id) values (1, 1);

insert into Adicional_Pagamento (pagamento_id, adicional_id) values (1, 1);
insert into Desconto_Pagamento (pagamento_id, desconto_id) values (1, 1);

insert into Pagamento (funcionario_id, tipo_pagamento_cod, data_pagamento,horas_trabalhadas, valor) values (1, 1, '2023-05-05', 44, 3000);
