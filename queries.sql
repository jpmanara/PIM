/* OBTER ADICIONAIS FIXOS DO FUNCIONARIO COM ID = 1 */
select * from Pagamento pgm
left join Adicional_Funcionario adcfn
on adcfn.funcionario_id = 1
left join Adicional adc
on adcfn.id = adc.id;


/* OBTER DESCONTOS FIXOS DO FUNCIONARIO COM ID = 1 */

