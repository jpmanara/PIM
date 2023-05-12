create table TipoPagamento (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create table TipoDesconto (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create table TipoAdicional (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create table TipoCargo (cod int identity(1,1) not null, valor varchar(255), primary key (cod));

create table Funcionario (
	id int identity(1,1) not null,
	nome varchar(255) not null,
	tipo_cargo_cod int not null, 
	salario_base float not null,
	jornada_trabalho_semanal float not null,
	foreign key (tipo_cargo_cod) references TipoCargo (cod),
	primary key (id)
);

create table Pagamento (
	id int identity(1,1) not null, 
	funcionario_id int not null, 
	tipo_pagamento_cod int not null,
	data_pagamento DATE not null,
	horas_trabalhadas float not null,
	valor float not null,

	primary key (id),
	foreign key (tipo_pagamento_cod) references TipoPagamento (cod),
	foreign key (funcionario_id) references Funcionario(id)
);

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

create table Adicional (
	id int identity(1,1) not null,
	tipo_adicional_cod int not null,
	valor_fixo float not null,
	porcentagem int,
	min_salario int,
	max_salario int,

	primary key(id),
	foreign key (tipo_adicional_cod) references TipoDesconto (cod)
);

create table Adicional_Funcionario (
	id int identity(1,1) not null,
	funcionario_id int not null,
	adicional_id int not null,
	foreign key (funcionario_id) references Funcionario(id),
	foreign key (adicional_id) references Adicional(id),
	primary key (id)
);

create table Desconto_Funcionario (
	id int identity(1,1) not null,
	funcionario_id int not null,
	desconto_id int not null,
	foreign key (funcionario_id) references Funcionario(id),
	foreign key (desconto_id) references Desconto(id),
	primary key (id)
);

create table Adicional_Pagamento (
	id int identity(1,1) not null,
	pagamento_id int not null,
	adicional_id int not null,
	foreign key (pagamento_id) references Pagamento(id),
	foreign key (adicional_id) references Adicional(id),
	primary key (id)
);

create table Desconto_Pagamento (
	id int identity(1,1) not null,
	pagamento_id int not null,
	desconto_id int not null,
	foreign key (pagamento_id) references Pagamento(id),
	foreign key (desconto_id) references Desconto(id),
	primary key (id)
);
