/* */
declare 
    cursor c (v_deptno number) is select salary
	from employees where dept_no=v_deptno for update;
	deptno number;
begin
    select 	