create table Funcionario (
	id int not null,
	salario_base float not null,
	primary key (id)
);

create table TipoPagamento (cod int not null, valor varchar(255), primary key (cod));
create table TipoDesconto (cod int not null, valor varchar(255), primary key (cod));
create table TipoAdicional (cod int not null, valor varchar(255), primary key (cod));

create table Adicional_Funcionario (
	id int not null,
	funcionario_id int not null,
	adicional_id int not null,
	primary key (id),
);

create table Pagamento (
	id int not null, 
	funcionario_id int not null, 
	tipo_pagamento_cod int not null,
	data_pagamento DATE not null,
	valor float not null,

	primary key (id),
	foreign key (tipo_pagamento_cod) references TipoPagamento (cod),
	foreign key (funcionario_id) references Funcionario(id),
);

create table Desconto (
	id int not null,
	tipo_desconto_cod int not null,
	pagamento_id int not null,
	valor float not null,

	primary key(id),
	foreign key (tipo_desconto_cod) references TipoDesconto (cod),
	foreign key (pagamento_id) references Pagamento (id)
);

create table Adicional (
	id int not null,
	tipo_adicional_cod int not null,
	pagamento_id int not null, 
	valor float not null,

	primary key(id),
	foreign key (tipo_adicional_cod) references TipoDesconto (cod),
	foreign key (pagamento_id) references Pagamento (id)
);

