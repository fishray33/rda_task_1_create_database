# 1. Create a database (schema) called ShopDB
create database ShopDB;
use ShopDB;

# 2. In the ShopDB database, create the following tables
create table Products (
	ID int auto_increment,
	Name varchar(50),
	Description varchar(100),
	Price int,
	WarehouseAmount int,
    primary key (ID)
);

create table Customers (
	ID int auto_increment,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(50),
	Address varchar(100),
    primary key (ID)
);

create table Orders (
	ID int auto_increment,
    CustomerID int null,
    foreign key (CustomerID) references Customers(ID) on delete set null,
    Date date,
    primary key (ID)
);

create table OrderItems(
	ID int auto_increment,
    OrderID int null,
    ProductID int null,
    foreign key (OrderID) references Orders(ID) on delete set null,
    foreign key (ProductID) references Products(ID) on delete set null,
    primary key (ID)
);
