--------Customer table-------------------------
CREATE TABLE Customer (Id int IDENTITY(1,1) PRIMARY KEY,Name varchar(255),Registered GetDate())
INSERT INTO Customer VALUES (Raju)
INSERT INTO Customer VALUES (Mahesh)
INSERT INTO Customer VALUES (Lakshmi)
INSERT INTO Customer VALUES (Aruna)

select * from Customer where Id = 2
update table Customer set Name = 'CH_Lakshmi' where Id = 3
delete from Customer where Id = 2

--------------------------Order table--------------
CREATE TABLE Order (
    item_id int,status varchar(255),created_at GetDate(),sku varchar(255),price float(255),qty_ordered int,
    grand_total float,increment_id int IDENTITY(100140000,1) PRIMARY KEY,category_name_1 varchar(255),
    sales_commission_code varchar(10),discount_amount int,payment_method varchar(10),Working_Date GetDate(),
    Working_Date GetDate(),BI_Status varchar(10),MV int,Year int,Month int,Customer_Since varchar(20),
    M_Y varchar(20),FY varchar(10),Customer_ID int FOREIGN KEY REFERENCES Customer(Id));

INSERT INTO Order VALUES (211131,'complete','kreations_YI 06-L',1950,1,1950,'Women's Fashion',\N,0,cod,'Gross',1950,2016,7,'2016-7','Jul-16','FY17',1)
INSERT INTO Order VALUES (211133,'canceled','kcc_Buy 2 Frey Air Freshener & Get 1 Kasual Body Spray Free',240,1,240,'Beauty & Grooming',\N,0,cod,'Gross',240,2016,7,'2016-7','Jul-16','FY17',2)
INSERT INTO Order VALUES (211134,'canceled','Ego_UP0017-999-MR0',2450,1,2450,'Women's Fashion',\N,0,cod,'Gross',2450,2016,7,'2016-7','Jul-16','FY17',3)

select * from Order where increment_id = 100140000
update table Order set status = 'complete' where increment_id = 100140001

select c.Name,o.item_id from Order o inner join Customer c on o.Customer_ID = c.Id