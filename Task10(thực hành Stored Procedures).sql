CREATE DATABASE TOYS
GO

USE TOYS
GO

-- tạo bảng Toys
CREATE TABLE Toys
(
ProductCode int Primary Key,
Name nvarchar(50),
Category nvarchar(50),
Manufaturer nvarchar(40),
AgeRange varchar (15),
UnitPrice money,
Netweight int,
QtyOnHand int
)
GO

--thêm dữ liệu Toys(mã sản phẩm, tên, loại, sản xuất, độ tuổi, giá, trọng lượng, số lượng)
INSERT INTO Toys VALUES (1, N'LEGO', N'Lắp Ghép', N'Việt Nam', 10, 50000, 400, 1000),
						(2, N'Mô Hình', N'Lắp Ghép', N'Việt Nam', 10, 100000, 1000, 1000),
						(3, N'Ô Tô', N'Lắp Ghép', N'Việt Nam', 10, 100000, 200, 1000),
						(4, N'Xe Máy', N'Lắp Ghép', N'Việt Nam', 10, 100000, 100, 1000),
						(5, N'Máy Cẩu', N'Lắp Ghép', N'Việt Nam', 10, 100000, 250, 1000),
						(6, N'PS5', N'Bộ Game', N'Việt Nam', 16, 1000000, 3000, 100),
						(7, N'Máy Chơi Game MINI', N'Bộ Game', N'Việt Nam', 16, 200000, 600, 500)

go

select * from Toys
go

--Thủ tục lưu trữ liệt kê đồ chơi >500gr
CREATE PROCEDURE HeavyToys
AS
SELECT * FROM Toys WHERE Netweight > 500
go

--Thủ tục lưu trữ cho phép tăng giá
CREATE PROCEDURE PriceIncrease 
AS
SELECT ProductCode,Name,Category,Manufaturer,AgeRange,Netweight,QtyOnHand,UnitPrice+10 
AS TangGia 
FROM Toys
GO

--thủ tục lưu trữ làm giảm số lượng 
CREATE PROCEDURE QtyOnHand
AS
SELECT ProductCode,Name,Category,Manufaturer,AgeRange,Netweight,UnitPrice,QtyOnHand-5 
AS GiamSoLuong 
FROM Toys
GO

