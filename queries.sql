select 
	Funcionario.nome, 
	TipoCargo.valor as cargo, 
	Funcionario.salario_base ,
	Funcionario.jornada_trabalho_semanal 
from Funcionario
inner join TipoCargo on Funcionario.tipo_cargo_cod = TipoCargo.cod

select 
	 TipoDesconto.valor as tipo_desconto, 
	 Desconto.valor_fixo,
	 Desconto.porcentagem, 
	 Desconto.min_salario, 
	 Desconto.max_salario 
from Desconto
inner join TipoDesconto on Desconto.tipo_desconto_cod = TipoDesconto.cod
inner join Desconto_funcionario on Desconto_funcionario.funcionario_id  = 1;

select 
	 TipoAdicional.valor as tipo_adicional, 
	 Adicional.valor_fixo,
	 Adicional.porcentagem, 
	 Adicional.min_salario, 
	 Adicional.max_salario 
from Adicional
inner join TipoAdicional on Adicional.tipo_adicional_cod = TipoAdicional.cod
inner join Adicional_funcionario on Adicional_funcionario.funcionario_id  = 1;

select 
	 TipoDesconto.valor as tipo_desconto, 
	 Desconto.valor_fixo,
	 Desconto.porcentagem, 
	 Desconto.min_salario, 
	 Desconto.max_salario 
from Desconto
inner join TipoDesconto on Desconto.tipo_desconto_cod = TipoDesconto.cod
inner join Desconto_pagamento on Desconto_pagamento.pagamento_id  = 3;

select 
	 TipoAdicional.valor as tipo_adicional, 
	 Adicional.valor_fixo,
	 Adicional.porcentagem, 
	 Adicional.min_salario, 
	 Adicional.max_salario 
from Adicional
inner join TipoAdicional on Adicional.tipo_adicional_cod = TipoAdicional.cod
inner join Adicional_Pagamento on Adicional_Pagamento.pagamento_id  = 3;
