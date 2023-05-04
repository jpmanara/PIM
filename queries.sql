/* OBTER ADICIONAIS FIXOS DO FUNCIONARIO COM ID = 1 */
select TipoAdicional.valor as tipo, Adicional.valor from Adicional
left join Adicional_Funcionario on Adicional_Funcionario.id = Adicional.id
left join TipoAdicional on TipoAdicional.cod = Adicional.tipo_adicional_cod
where Adicional_Funcionario.funcionario_id = 1


/* OBTER DESCONTOS FIXOS DO FUNCIONARIO COM ID = 1 */
select TipoDesconto.valor as tipo, Desconto.valor from Desconto
left join Desconto_Funcionario on Desconto_Funcionario.id = Desconto.id
left join TipoDesconto on TipoDesconto.cod = Desconto.tipo_desconto_cod
where Desconto_Funcionario.funcionario_id = 1

/* OBTER PAGAMENTOS DO FUNCIONARIO COM ID = 1 ORDENADOS POR DATA */
select TipoPagamento.valor as tipo, Pagamento.data_pagamento as data, Pagamento.valor
from Pagamento
inner join TipoPagamento on TipoPagamento.cod = Pagamento.tipo_pagamento_cod
where Pagamento.funcionario_id = 1
order BY Pagamento.data_pagamento;
