/*no need of open fetch and close. prg4.sql using for loop */
declare 
    cursor c is select e.employee_id,e.last_name,d.department_name,l.city
	from employees e,departments d,locations l
	where e.department_id=d.department_id
	and d.location_id=l.location_id;
begin
    for v_emp_rec in c
	loop
	dbms_output.put_line(v_emp_rec.employee_id||' '||v_emp_rec.last_name||' '||v_emp_rec.department_name||' '||v_emp_rec.city);	
	end loop;	
end;
/	