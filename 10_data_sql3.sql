SELECT
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
FROM `customers`
RIGHT JOIN contracts on contracts.customer_id=customers.customer_id
WHERE
	(customers.name_th like '%ยุวดี%') or (customers.customer_id like '%CC%')
    and contracts.type_contract!='credit'
    and contracts.type_contract!='product'
    and contracts.deleted_at is null
    and contracts.remaining > 0
group by contracts.contract_id
ORDER by contracts.created_at desc;
