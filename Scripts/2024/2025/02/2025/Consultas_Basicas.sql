use northwind;
GO
select * FROM Employees;
SELECT * FROM Products;
SELECT * FROM Suppliers;
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


    SELECT sum(UnitPrice*Quantity- Discount*UnitPrice*Quantity) from [Order Details];
    


    SELECT sum(UnitPrice*Quantity- Discount*UnitPrice*Quantity) from [Order Details];
    
    
    SELECT sum([Order Details].UnitPrice * Quantity-discount*[Order Details].UnitPrice*Quantity) as mango from [Order Details]
    JOIN products on Products.productid = [Order Details].productid 
    WHERE CategoryID = 1; 




    SELECT CategoryID FROM Categories
        WHERE CategoryName like 'Beverages'

    SELECT sum([Order Details].UnitPrice * Quantity-discount*[Order Details].UnitPrice*Quantity) as mango from [Order Details]
        

    select dataname(month, o.orderdate) sum(o.OrderDate*Quantity - Discount * od.UnitPrice * Quantity) from [Order Details]
        join orders o on O.OrderID = o.OrderID
        JOIN Products p on od.ProductID = p.ProductID
        join Categories c on p.CategoryID = c.CategoryID 
        WHERE YEAR(o.OrderDate ) = 1997 
        group by c.CategoryName, DATEPART( month, o.OrderDate), 




    select productid, productname, Categories.categoryid, CategoryName FROM Products
    JOIN Categories on Products.CategoryID = Categories.CategoryID; 


    SELECT orderid, sum([Order details]*Quantity- Discount*{Order details]*Quantity) 
    FROM [Order details]
    where importe< 500
    GROUP by orderid;
    


SELECT orderid, sum([Order details]*Quantity- Discount*{Order details]*Quantity) FROM [Order details]




--Con variable 
DECLARE @maximo money 
select @maximo = max(Unitprice) from products 

select productname from products
where Unitprice = @maximo
--Sin variable
SELECT productname, Unitprice FROM products 
where  UnitPrice = (select max (Unitprice) from products)

SELECT companyName FROM customers 
join orders on customers.customerID = orders.customerID
WHERE orderdate > '1/1/1995';



