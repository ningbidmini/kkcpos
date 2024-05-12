select 
customers.customer_id as customer_id,
customers.name_th as name_th ,
contracts.buffet as buffet ,
contracts.contract_id as contract_id,
 contracts.course_name as course_name,
 contracts.created_at as created_at,
 contracts.start_date as start_date,
 contracts.expire_date as expire_date,
 contracts.available_value as available_value,
 contracts.used as used,
 contracts.remaining as remaining 
from contracts
#inner join course_cuts on course_cuts.contract_id = contracts.contract_id 
inner join customers on customers.customer_id = contracts.customer_id 
where
	contracts.type_contract !='product' 
	and contracts.type_contract !='credit' 
	and contracts.deleted_at is null 
	and contracts.remaining > 0 
	and customers.name_th like '%ยุวดี%'
group by
case 
	when contracts.buffet = '999' then   contracts.contract_id 
	else false
end
