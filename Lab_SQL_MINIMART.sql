-- แบบฝึกหัด SQL ใช้ฐานข้อมูล  Minimart
select UnitPrice from Products where UnitPrice = 15 -- 1. สินค้าที่มีราคา 15 บาท 
select COUNT(*) as จำนวนสินค้า from Products where UnitsInStock <250 -- 2. สินค้าที่มีจำนวนคงเหลือในสต๊อกต่ำกว่า 250
select ProductID , Discontinued from Products where Discontinued = 1 -- 3. รหัสสินคา ชื่อสินค้าที่เลิกจำหน่ายแล้ว
select productID,ProductName,UnitPrice from Products where UnitPrice >100 -- 4. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีราคามากกว่า 100
select productID,UnitPrice from Products where productid =2 -- 5. รหัสสินค้า และราคาของยางลบ
select ReceiptID,Receiptdate,totalcash from Receipts where ReceiptDate < '2013-02-15' ORDER BY ReceiptDate; -- 6. หมายเลขใบเสร็จ วันที่ และ ราคารวม ของใบเสร็จที่ออกก่อนวันที่ 15 ก.พ.
select productid,productname,UnitsInStock from Products where UnitsInStock >= 400 -- 7. รหัสสินค้า ชื่อสินค้า ที่มีจำนวนคงเหลือตั้งแต่ 400 ขึ้นไป
select * from products where productname IN ('ดินสอ', 'ยางลบ', 'น้ำยาสระผม', 'แป้งเด็ก'); -- 8. รหัสสินค้า ชื่อสินค้า ราคา และ จำนวนคงเหลือ ของแชมพู,แป้งเด็ก,ดินสอ,ยางลบ
select * from products where CategoryID = 1 -- 9. รายละเอียดของสินค้าประเภทเครื่องเขียน
select * from Categories where CategoryID = 4 -- 10. รหัสประเภทสินค้า ชื่อประเภท และรายละเอียดของ สินค้าประเภทเครื่องสำอาง
select title,firstname,lastname from Employees where Position = 'Sale Representative' -- 11.คำนำหน้า ชื่อ นามสกุล ของพนักงานที่เป็น Sale Representative
select employeeid,firstname,username,Password from Employees -- 12. รหัสพนักงาน ชื่อพนักงาน ชื่อผู้ใช้ รหัสผ่าน ของพนักงานทุกคน
select firstname,username,password from Employees where firstname = 'ก้องนิรันดร์' -- 13. ชื่อผู้ใช้ และรหัสผ่านของพนักงานที่ชื่อก้องนิรันดร์
select firstname ,employeeid from Employees where employeeid = 5 -- 14. รหัสพนักงานที่ออกใบเสร็จหมายเลข 3
select productid,productname,unitprice from Products where CategoryID = 2 or categoryID = 4 -- 15. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีรหัสประเภท 2, 4