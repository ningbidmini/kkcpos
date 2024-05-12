select 
contracts.contract_id as contract_id,
contracts.course_name as course_name,
contracts.created_at as created_at,
contracts.start_date as start_date,
contracts.expire_date as expire_date,
contracts.available_value as available_value,
contracts.used as used,
contracts.remaining as remaining,
customers.name_th as customer_name_th


from contracts
inner join customers on customers.customer_id = contracts.customer_id
inner join course_cuts on course_cuts.contract_id=contracts.contract_id
where 
  customers.name_th like '%ยุวดี%' or customers.name_th like '%ยุวดี%'

group by course_cuts.created_at