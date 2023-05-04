create table TipoPagamento (cod int not null, valor varchar(255), primary key (cod));
create table TipoDesconto (cod int not null, valor varchar(255), primary key (cod));
create table TipoAdicional (cod int not null, valor varchar(255), primary key (cod));

create table Funcionario (
	id int auto_increment not null,
	salario_base float not null,
	primary key (id)
);

create table Pagamento (
	id int auto_increment not null, 
	funcionario_id int not null, 
	tipo_pagamento_cod int not null,
	data_pagamento DATE not null,
	valor float not null,

	primary key (id),
	foreign key (tipo_pagamento_cod) references TipoPagamento (cod),
	foreign key (funcionario_id) references Funcionario(id)
);

create table Desconto (
	id int auto_increment not null,
	pagamento_id int not null,
	tipo_desconto_cod int not null,
	valor float not null,

	primary key(id),
	foreign key (tipo_desconto_cod) references TipoDesconto (cod),
	foreign key (pagamento_id) references Pagamento (id)
);

create table Adicional (
	id int auto_increment not null,
	pagamento_id int not null,
	tipo_adicional_cod int not null,
	valor float not null,

	primary key(id),
	foreign key (tipo_adicional_cod) references TipoDesconto (cod),
	foreign key (pagamento_id) references Pagamento (id)
);

create table Adicional_Funcionario (
	id int auto_increment not null,
	funcionario_id int not null,
	adicional_id int not null,
	foreign key (funcionario_id) references Funcionario(id),
	foreign key (adicional_id) references Adicional(id),
	primary key (id)
);

create table Desconto_Funcionario (
	id int auto_increment not null,
	funcionario_id int not null,
	desconto_id int not null,
	foreign key (funcionario_id) references Funcionario(id),
	foreign key (desconto_id) references Desconto(id),
	primary key (id)
);


insert into Adicional(id, pagamento_id, tipo_adicional_cod, valor) values (1, 1, 1, 150.54);
select * from Adicional;

insert into Funcionario (id, salario_base) values (1, 3000);
select * from Funcionario;

insert into TipoPagamento (cod, valor) values (1, 'Mensal');
select * from TipoPagamento;

insert into TipoDesconto (cod, valor) values (1, 'INSS');
select * from TipoDesconto;

insert into TipoAdicional (cod, valor) values (1, 'Auxílio de custo teletrabalho');
select * from TipoAdicional;

insert into Adicional_Funcionario (id, funcionario_id, adicional_id) values (1, 1, 1);
select * from Adicional_Funcionario;

insert into Pagamento (id, funcionario_id, tipo_pagamento_cod, data_pagamento, valor) values (1, 1, 1, GETDATE(), 3000);
select * from Pagamento;

insert into Desconto (id, pagamento_id, tipo_desconto_cod, valor) values (1, 1, 1, 253.64);
select * from Desconto;
