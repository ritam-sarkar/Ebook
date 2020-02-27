

    EMP_ID NAME            SALARY    DEPT_ID ADDRESS_ID MANAGER_ID
---------- --------------------------------------------------------
         5 Ram             20000          2                     0
         6 Shyam           15000          2                     5
         7 Jodu            14000          3                     0
         1 Alice           10000          1                     0
         2 Bob              8000          1                     1
         3 Tom                            1                     2
         4 Harry            6000          1                     3
         8 Modhu                          3                     7

/* find upper level hierarchy  or ancester */
select EMP_ID, NAME from employee start with EMP_ID = 4 connect by prior MANAGER_ID =EMP_ID
select EMP_ID, NAME from employee start with EMP_ID = 3 connect by prior MANAGER_ID =EMP_ID

/* find lower hierarchy or descendent */
select EMP_ID, NAME from employee start with EMP_ID = 1 connect by prior EMP_ID = MANAGER_ID
select EMP_ID, NAME from employee start with EMP_ID = 2 connect by prior EMP_ID = MANAGER_ID


select e.emp_id, e.name, e.manager_id, m.name as manager_name from employee e, employee m where e.manager_id = m.emp_id and e.emp_id in
(select EMP_ID from employee start with EMP_ID = 4 connect by prior MANAGER_ID =EMP_ID)

/* find number of descendent level */
select count(distinct level) from employee start with emp_id =1 connect by prior emp_id = manager_id
/*  Find number of ancester level */
select count(distinct level) from employee start with emp_id =4 connect by prior manager_id = emp_id






