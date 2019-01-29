/* to five high salary records*/
declare
    cursor c is select last_name,salary from employees order by salary desc;
	v_ename employees.last_name%type;
	v_sal employees.salary%type;
begin
    open c;
	loop
	fetch c into v_ename,v_sal;
	dbms_output.put_line(v_ename||'  '||v_sal);
	exit when c%rowcount=5;
	end loop;
	close c;
end;
/	
    	