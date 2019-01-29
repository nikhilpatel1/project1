begin
   for i in (select * from employees)
   loop
   dbms_output.put_line(i.last_name||'  '||i.salary);
   end loop;
end;
/   