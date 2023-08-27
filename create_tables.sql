create table TipoPagamento (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create table TipoDesconto (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create table TipoAdicional (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create table TipoCargo (cod int identity(1,1) not null, valor varchar(255), primary key (cod));
create Table TipoUsuario (cod int identity(1,1) not null, valor varchar(255), primary key (cod));

create table Empresas (
   id int identity(1,1) not null,
   nome varchar(255) not null,
   cpfCnpj varchar(14) not null unique,
   primary key(id)
)

create table Usuarios (
  id int identity(1,1) not null,
  tipoUsuarioCod int not null,
  email varchar(255) not null unique,
  senha varchar(255) not null,
  foreign key (tipoUsuarioCod) references TipoUsuario (cod),
  primary key(id)
)


create table Funcionarios (
	id int identity(1,1) not null,
	nomeCompleto varchar(255) not null,
	cpf varchar(11) not null unique,
	endereco varchar(255) not null,
	tipoCargoCod int not null, 
	salarioBase float not null,
	jornadaTrabalhoSemanal float not null,
	usuarioId int not null,
	empresaId int not null,
	
	foreign key (empresaId) references Empresa (id),
	foreign key (usuarioId) references Usuario (id),
	foreign key (tipoCargoCod) references TipoCargo (cod),
	primary key (id)
);

create table Pagamentos (
	id int identity(1,1) not null, 
	funcionarioId int not null, 
	tipoPagamentoCod int not null,
	dataPagamento DATE not null,
	horasTrabalhadas float not null,
	valor float not null,

	primary key (id),
	foreign key (tipoPagamentoCod) references TipoPagamento (cod),
	foreign key (funcionarioId) references Funcionario(id)
);

create table Descontos (
	id int identity(1,1) not null,
	tipoDescontoCod int not null,
	valorFixo float,
	porcentagem int,
	minSalario int,
	maxSalario int,

	primary key(id),
	foreign key (tipoDescontoCod) references TipoDesconto (cod)
);

create table Adicionais (
	id int identity(1,1) not null,
	tipoAdicionalCod int not null,
	valorFixo float not null,
	porcentagem int,
	minSalario int,
	maxSalario int,

	primary key(id),
	foreign key (tipoAdicionalCod) references TipoAdicional (cod)
);

create table AdicionalFuncionario (
	id int identity(1,1) not null,
	funcionarioId int not null,
	adicionalId int not null,
	foreign key (funcionarioId) references Funcionario(id),
	foreign key (adicionalId) references Adicional(id),
	primary key (id)
);

create table DescontoFuncionario (
	id int identity(1,1) not null,
	funcionarioId int not null,
	descontoId int not null,
	foreign key (funcionarioId) references Funcionario(id),
	foreign key (descontoId) references Desconto(id),
	primary key (id)
);

create table AdicionalPagamento (
	id int identity(1,1) not null,
	pagamentoId int not null,
	adicionalId int not null,
	foreign key (pagamentoId) references Pagamento(id),
	foreign key (adicionalId) references Adicional(id),
	primary key (id)
);

create table DescontoPagamento (
	id int identity(1,1) not null,
	pagamentoId int not null,
	descontoId int not null,
	foreign key (pagamentoId) references Pagamento(id),
	foreign key (descontoId) references Desconto(id),
	primary key (id)


);
