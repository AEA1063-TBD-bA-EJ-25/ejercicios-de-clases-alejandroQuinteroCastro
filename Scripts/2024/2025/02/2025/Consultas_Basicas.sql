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



    select orderid, lastname, companyname, orderdate from orders 
    join Employees on employees.EmployeeID = orders.EmployeeID
    join Customers on customers.customerid = orders.CustomerID
    where orderid = 10252



    select max(Unitprice) FROM products; 


    SELECT categoryid, AVG(Unitprice) as PrecioPromedio FROM Products
        group by categoryid
        order by AVG(Unitprice) DESC 

    SELECT categoryid, AVG(ProductID) as Products FROM Products
        group by categoryid

    SELECT CategoryID, count(*) from Products 
        GROUP by CategoryID
        order by count(*) 

    SELECT unitprice * 1.10 as nuevoPrecio from products 

    SELECT COUNT(*) FROM [Order Details]
        WHERE [OrderID] = 10250


    SELECT * from [Order Details]
        