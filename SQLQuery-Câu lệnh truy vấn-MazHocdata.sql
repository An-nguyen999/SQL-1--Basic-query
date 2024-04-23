select 'Toi ten la An Thanh'

--1/ hiển thị tất cả các columns
select * 
from HumanResources.Department

--2/ hiển thị 5 dòng đầu tiên
select top 5* 
from HumanResources.Department

--3/ Hiển thị với các trường mà mình đã chọn
select Name,
		GroupName,
		DepartmentID

from HumanResources.Department
where GroupName = 'Manufacturing'

--4/ Group by và thể hiện nó ra bên ngoài
Select GroupName
	, count (Name) as Number_of_GroupName
From HumanResources.Department
Group by GroupName

--5/ Hàm count trong Group by
Select GroupName
	, count (Name) as Number_of_GroupName
From HumanResources.Department
Group by GroupName

--6/ Hàm count và sum trong Group by
select Color
	, count(Name) as Number_of_ProductID
	, sum (SafetyStockLevel) as Total_SafetyStock
from production.Product
group by Color

--7/ Hàm count và sum trong Group by + sắp xếp theo order by (desc/asc)
select Color
	, count(Name) as Number_of_ProductID
	, sum (SafetyStockLevel) as Total_SafetyStock
from production.Product
group by Color
order by Total_SafetyStock asc

--8/ Hàm Having đi sau group by
select Color
	, count(Name) as Number_of_ProductID
	, sum (SafetyStockLevel) as Total_SafetyStock
from production.Product
group by Color
Having sum (SafetyStockLevel)>100 -- câu lệnh đây nè
order by Total_SafetyStock desc
--from -> group by -> having -> select -> order by (thứ tự câu lệnh sẽ chạy): nên không thể để tên mình đặt được mà phải để hàm tính toán trong having

-- 9/ Nâng cao hàm LIKE: lấy giá trị gần giống/có chứa là được, chứ không phải so sánh bằng
select * 
from Purchasing.Vendor
where AccountNumber Like '%0001'
-- Hàm like đi kèm những cái gì phía sau