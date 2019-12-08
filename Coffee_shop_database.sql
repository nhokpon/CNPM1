create database coffee_shop

use coffee_shop

create table account(
	username nvarchar primary key,
	passwordd nvarchar,
	account_info nvarchar
)
create table adminn(
	admin_name nvarchar ,
	position nvarchar ,
	A_username nvarchar,
	salary int,
	addresss nvarchar,
	PRIMARY KEY (admin_name,position),
    FOREIGN KEY (A_username) REFERENCES account(username)
)
create table stock_manager(
	SM_name nvarchar,
	position nvarchar,
	salary int,
	addresss nvarchar,
	SM_username nvarchar,
	PRIMARY KEY (SM_name,position),
    FOREIGN KEY (SM_username) REFERENCES account(username)
)
create table cashier(
	C_name nvarchar,
	position nvarchar,
	salary int,
	addresss nvarchar,
	C_username nvarchar,
	PRIMARY KEY (C_name,position),
    FOREIGN KEY (C_username) REFERENCES account(username)
)

create table product(
	ID_product int,
	product_name nvarchar,
	quantity int,
	PRIMARY KEY (ID_product,product_name)
)

create table order_item(
	ID_list_of_product int,
	quantity int,
	price int,
	product_name nvarchar,
	ID_product int,
	PRIMARY KEY (ID_list_of_product),
	FOREIGN KEY (ID_product,product_name) REFERENCES product(ID_product,product_name)
)
create table bill(
	ID_bill int,
	ID_table int,
	product_price int,
	ID_list_of_product int,
	PRIMARY KEY (ID_bill),
    FOREIGN KEY (ID_list_of_product) REFERENCES order_item(ID_list_of_product),
)
create table table_manager(
	TM_name nvarchar,
	position nvarchar,
	salary int,
	addresss nvarchar,
	ID_bill int,
	TM_username nvarchar,
	PRIMARY KEY (TM_name,position),
    FOREIGN KEY (TM_username) REFERENCES account(username),
	FOREIGN KEY (ID_bill) REFERENCES bill(ID_bill)
)

create table stock(
	ID_stock int,
	product_name nvarchar,
	ID_product int,
	quantity int,
	PRIMARY KEY (ID_stock),
	FOREIGN KEY (ID_product,product_name) REFERENCES product(ID_product,product_name)
)

/*table_manager bill order_item product cashier stock_manager adminn account
  stock*/






/*select * from student

insert into student values('Son Tung MTP','10-24-1992',1,'mtp@gmail.com')
insert into student values('Dan Truong','11-04-1991',1,'dantruong@gmail.com')
insert into student values('Cam Ly','07-13-1990',0,'camly@gmail.com')
insert into student values('Pham Bang Bang','02-11-1993',0,'pbbang@gmail.com')
*/