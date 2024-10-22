

create or replace function test()
returns table(
	 EMP_NO integer,
	FROM_DATE date,
	SALARY decimal (17,3),
	TO_DATE date
)
 reads sql data 
as
begin
    return 
    select 
      EMP_NO,  
	  FROM_DATE,
	  SALARY, 
	  TO_DATE from  "SALARIES";
end;


SELECT top 1000
	"EMP_NO"  
--	"FROM_DATE",  
--	"SALARY",  
--	"TO_DATE"
FROM "SALARIES";


SELECT TOP 1000
	"EMP_NO"--,  
--	"FROM_DATE",  
--	"SALARY",  
--	"TO_DATE"
FROM  test();
