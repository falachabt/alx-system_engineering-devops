-- List the content of the Provider  table    
SELECT * FROM provider;

-- List the content of the Customer  table  
SELECT * FROM customer;

-- List the content of   table “product” (product)
SELECT * FROM product;

-- Show the 10 most expensive products selected based on their unit price (Attribute UnitPrice)
SELECT * FROM product ORDER BY UnitPrice DESC LIMIT 10;

-- List French customers living in Paris
SELECT * FROM customer WHERE City="Paris";

-- List customers in Spain, Germany and Switzerland.
SELECT * FROM customer WHERE Country="Espagne"OR Country="Allemagne" OR Country="Suisse" ;

-- List customers whose names contain the word “Restaurant” (names listed in the Society column)
SELECT * FROM customer WHERE Society LIKE '%Restaurant%';

-- Only list the description of product categories (Category table)
SELECT Description FROM Category;

-- List the various countries of customers 
SELECT Country FROM Customer;

-- Calculate the number of employees who are “representatives” 
SELECT COUNT(*) FROM employe WHERE Function LIKE '%Representant%';

-- Calculate the number of products that cost less the EUR 50
SELECT COUNT(*) FROM product WHERE UnitPrice<50;

-- Calculate the number of category 2 products which have at least ten units in stocks
SELECT COUNT(*) FROM product WHERE( CategCode=2 AND QuantityPerUnit>=10);

-- List products( products name and suppliers) supplied by Australian companies 
SELECT product.ProdName, provider.Society FROM product INNER JOIN provider ON product.NoProv = provider.NoProvider WHERE Country="Australie";

-- Provide the total number of product units in stock in the table “employee 1”
SELECT SUM(UnitesStock) FROM employe_1;

-- Show the minimum and maximum unit price in the table “employee 1”
SELECT MIN(PrixUnit), MAX(PrixUnit) FROM employe_1;


-- Add units in stock to ordered units (ComUnit), for every product and add ProdName, StockUnits, ComUnit and StockUnits + ComUnit
SELECT ProdName, StockUnits, ComUnit, StockUnits + ComUnit FROM product;

-- show ProdName, UnitPrice and a 5% increase in product prices
SELECT ProdName, UnitPrice, UnitPrice*1.05 FROM product;

-- From the Product table, show out of stock products when the Unavailable attribute is 1 
SELECT ProdName FROM product WHERE (StockUnits=0 AND Unavailable=1);

-- Show the name and surname of employees whose client code: is “HANAR” in the command table. 
SELECT employe.LastName, employe.FirstName, command.CustomerCode FROM employe JOIN command on command.NoEmp=employe.NoEmp WHERE CustomerCode="HANAR";

-- Show the company and phone numbers of customers whose delivery address “ USA” in the command table
SELECT Society, Phone FROM customer
JOIN command ON command.CustomerCode=customer.CustomerCode
WHERE DeliverCountry="Etats-Unis";

-- Make the following insertions
-- INSERT INTO customer (CustomerCode,Society,Contact,Function,Address,City,Region,PostalCode,Country,Phone,Fax)
-- VALUES	('LUCDR','LUC DRYFUS','Fred Martin','Owner','12, rue des Bouchers','Strasbourg','',67001,'France','88.60.15.33','88.60.15.34'), ('REVAC','REVA CONSTRUCTION','Alain Roudil','Marketing Assistant',"184, chaussée de Tournai",'Lille','',59001,'France','88.60.15.33','88.60.15.34'); 


-- show the custumers
SELECT * FROM customer