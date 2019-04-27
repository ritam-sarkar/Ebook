select EMP_ID, NAME from employee start with EMP_ID = 4 connect by prior MANAGER_ID =EMP_ID
select EMP_ID, NAME from employee start with EMP_ID = 3 connect by prior MANAGER_ID =EMP_ID

select EMP_ID, NAME from employee start with EMP_ID = 1 connect by prior EMP_ID = MANAGER_ID
select EMP_ID, NAME from employee start with EMP_ID = 2 connect by prior EMP_ID = MANAGER_ID

select e.emp_id, e.name, e.manager_id, m.name as manager_name from employee e, employee m where e.manager_id = m.emp_id and e.emp_id in
(select EMP_ID from employee start with EMP_ID = 4 connect by prior MANAGER_ID =EMP_ID)

select EMP_ID, NAME from employee connect by prior EMP_ID = MANAGER_ID

select count(distinct level) from employee start with emp_id =1 connect by prior emp_id = manager_id

select count(distinct level) from employee start with emp_id =4 connect by prior manager_id = emp_id






