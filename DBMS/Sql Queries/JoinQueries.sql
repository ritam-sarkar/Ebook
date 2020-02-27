/** Find 3rd maximum salary from employee table **/
/** 2 = 3-1 **/
select e1.* from employee e1 where 2 = (select count(distinct e2.id) from employee e2 where e2.salary > e1.salary)            

/** Find top 3 highest paid employees**/
select * from (select * from employee where salary is not null order by salary desc) where rownum <=3

===========================================
/* How to join multiple tables using join statement*/
SELECT A.order_number, A.header_id, B.line_id, B.quantity,
       C.hold_price_id, C.released_flag
FROM Table_A a JOIN
     Table_B b
     ON a.header_id = b.header_id JOIN
     Table_C c
     ON c.header_id = b.header_id AND c.line_id = b.line_id
WHERE a.order_number = '123';

======================================

/** Employee and department table has some relation, employee has 4 rows, department has 5 rows **/
Select * from employee, department 
will return  4 * 5 = 20 rows. 
It works with not related table as well

/** This is a perfect example of cross join, when two tables are related using foreign key, then it is called inner join, if not related to each other or we do not use any joincondition or where condition, then it will be a cratesian product. **/

===================================

/** Return highest slary of the department , emp_name, emp_id **/

select e.name,e.salary,d.dept_name from employee e join department d on e.dept_id = d.dept_id where 
e.salary in(select max(salary) from employee group by dept_id)

====================================

/** Return all employee whose range is between 20 to 30 **/  
select * from employee where id between 20 to 30

=============================
/** What is hash join ?  **/

select /* +use_hash( a b) */ a.emp_no,b.dept_no,b.dept_name from emp a,dept b where a.dept_no=b.dept_no;

https://techgoeasy.com/hash-join/

