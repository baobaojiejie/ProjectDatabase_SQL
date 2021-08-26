
/* Purpose: Avoidf duplicated records in the database Aragon Pharmacy.
Script Date: April 11, 2021
Developed by: Jin Pan, Zhang zhaoyu
*/

/* add a statement that specifies the script
runs in the context of the master database */

-- switch to the Northwind database
-- Syntax: use database_name

use AragonPharmarcy
;
go 



select C.CustID,C.HouseID,CustFirst,H.Address
from sales.tblCustomer as C 
     inner join sales.tblHousehold as H
     on C.HouseID = H.HouseID
where C.HeadHH = 1
order by HouseID
;
go