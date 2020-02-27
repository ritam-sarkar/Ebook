

 STUDENTID NAME                 ADDRESS            
---------- -------------------- --------------------
         1 A                    Kolkata             
         2 B                    Bangalore           
         3 C                    Chennai             
         4 D                    Delhi               
         5 A                    Kolkata             
         6 B                    Banglaore           
		 

/**Find number of duplicate rows **/

select name, address, count(*) from student group by (name,address) having count(*) >1

/** Remove duplicates which are recent **/
delete from student where studentid not in(select min(studentid) from student group by name, address)

/** Remove duplicates which are older **/
delete from student where studentid not in(select max(studentid) from student group by name, address)




/** Find all duplicate rows **/

 ID CATEGORY             NAME               
---------- -------------------- --------------------
         1 A                    Abir                
         2 B                    Balbir              
         3 A                    Abir                
         4 C                    Abir                

select * from product  where (name, category) in(select name,category from product group by (name,category) having count(*) >1)




		 



