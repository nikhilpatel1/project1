/*simple cursor */
declare 
     cursor c is select last_name,salary from employees;
	 v_ename employees.last_name%type;
	 v_salary employees.salary%type;
begin
     open c;
	 loop
	 fetch c into v_ename,v_salary;
	 exit when c%notfound;
	 dbms_output.put_line(v_ename||' '||v_salary);
	 end loop;
	 close c;
end;	 
/