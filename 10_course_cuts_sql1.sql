SELECT
	course_cuts.qty
    ,course_cuts.treatment_id
    ,course_cuts.contract_id
    ,course_cuts.created_at
FROM course_cuts
WHERE
 course_cuts.contract_id='CCEPL020072548'
 and course_cuts.deleted_at is null;
