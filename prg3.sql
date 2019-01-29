/*using CURSOR%rowtype */
declare 
    cursor c is select e.employee_id,e.last_name,d.department_name,l.city
	from employees e,departments d,locations l
	where e.department_id=d.department_id
	and d.location_id=l.location_id;
	v_emp_rec c%rowtype;
begin
    open c;
	loop
	fetch c into v_emp_rec;
	exit when c%notfound;
	dbms_output.put_line(v_emp_rec.employee_id||' '||v_emp_rec.last_name||' '||v_emp_rec.department_name||' '||v_emp_rec.city);	
	end loop;
	close c;
end;
/	