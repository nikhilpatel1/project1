/* using current of clause */
declare
	cursor c is select * from emp12 for update;
	i emp12%rowtype;
begin
    open c;
    loop	
	fetch c into i;
	exit when c%notfound;
	if i.dept_no=10 then
	update emp12 set salary=i.salary+200 
	where current of c;
	end if;
	end loop;
	close c;
	commit;
end;
/	