use northwind;
GO
select * FROM Employees;
SELECT * FROM Products;
SELECT * FROM Suppliers;
SELECT * FROM Orders;
SELECT * FROM [Order Details]

SELECT employeeid, lastname, firstname
    from Employees


select productname, UnitPrice
    FROM Products 
    WHERE ProductID = 1 

SELECT productid, productname, unitprice, CategoryID 
    FROM Products
    WHERE productname like '[a-c]%'




SELECT productid, productname, unitprice, CategoryID 
    FROM Products
    WHERE productname like '[a,c]%'

SELECT * from Employees 
    WHERE Region is null


SELECT productid, productname, unitprice, CategoryID 
    FROM Products
    WHERE UnitPrice in (30, 40)


SELECT productid, productname, unitprice, CategoryID 
    FROM Products
    WHERE UnitPrice BETWEEN 30 and 40 
    and CategoryID = 2