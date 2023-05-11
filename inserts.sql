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

insert into Funcionario (nome, numero_ctps, serie_ctps, tipo_cargo_cod, salario_bruto) values ('Johnny', 1234, 4321, 1, 4500.50);

insert into Desconto (tipo_desconto_cod, valor_fixo, porcentagem, min_salario, max_salario) values (1, NULL, 7.5, 0, 1110);

create table Desconto (
	id int identity(1,1) not null,
	tipo_desconto_cod int not null,
	valor_fixo float,
	porcentagem int,
	min_salario int,
	max_salario int,

	primary key(id),
	foreign key (tipo_desconto_cod) references TipoDesconto (cod)
);

insert into Adicional(id, tipo_adicional_cod, valor) values ( 1, 1, 150.54);

insert into Adicional_Funcionario (id, funcionario_id, adicional_id) values (1, 1, 1);
insert into Desconto_Funcionario (id, funcionario_id, desconto_id) values (1, 1, 1);

insert into Adicional_Pagamento (id, pagamento_id, adicional_id) values (1, 1, 1);
insert into Desconto_Pagamento (id, pagamento_id, desconto_id) values (1, 1, 1);

insert into Pagamento (id, funcionario_id, tipo_pagamento_cod, data_pagamento, valor) values (1, 1, 1, '2023-05-05', 3000);
