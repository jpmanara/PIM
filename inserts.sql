insert into TipoPagamento (valor) values ('Mensal');
insert into TipoPagamento (valor) values ('Adiantamento');
insert into TipoCargo (valor) values ('Desenvolvedor');
insert into TipoUsuario (valor) values ('admin');
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

insert into Empresas (cpfCnpj) values ('01236547898745');

insert into Usuarios (tipoUsuarioCod, email, senha) values (1, 'joao@gmail.com', '12Qwaszx!');

insert into Funcionario 
(nomeCompleto, endereco, cpf, tipoCargoCod, salarioBase, jornadaTrabalhoSemanal, usuarioId, empresaId) 
values 
('Joao','Manara','12365478987',1,3000,40,'janetinha@gmail.com',1);
insert into Desconto (tipoDescontoCod, valorFixo, porcentagem, minSalario, maxSalario) values (1, NULL, 7.5, 0, 1110);
insert into Desconto (tipoDescontoCod, valorFixo, porcentagem, minSalario, maxSalario) values (1, NULL, 9, 1110.01, 2203.48);
insert into Desconto (tipoDescontoCod, valorFixo, porcentagem, minSalario, maxSalario) values (1, NULL, 12, 2203.48, 3305.22);
insert into Desconto (tipoDescontoCod, valorFixo, porcentagem, minSalario, maxSalario) values (1, 925.46, NULL, 6610.44, NULL);
/*daqui pra baixo tem que arrumar ainda*/
insert into Adicional(tipoAdicionalCod, valorFixo, porcentagem, minSalario, maxSalario ) values (1, 150.5, NULL, NULL, NULL);
insert into AdicionalFuncionario (funcionarioId, adicionalId) values (1, 1);
insert into DescontoFuncionario (funcionarioId, descontoId) values (1, 1);
insert into AdicionalPagamento (pagamentoId, adicionalId) values (1, 1);
insert into DescontoPagamento (pagamentoId, descontoId) values (1, 1);
insert into Pagamento (funcionarioId, tipoPagamentoCod, dataPagamento,horasTrabalhadas, valor) values (1, 1, '2023-05-05', 44, 3000);
