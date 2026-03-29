-- =========================================
-- BASIC QUERIES
-- =========================================

-- View all customers
SELECT * FROM Customers;

-- View all rooms
SELECT * FROM Rooms;

-- View all bookings
SELECT * FROM Bookings;


-- =========================================
-- AGGREGATE QUERIES
-- =========================================

-- Total Revenue
SELECT SUM(TotalAmount) AS Total_Revenue FROM Bookings;

-- Total Number of Bookings
SELECT COUNT(*) AS Total_Bookings FROM Bookings;

-- Average Room Price
SELECT AVG(PricePerNight) AS Avg_Room_Price FROM Rooms;


-- =========================================
-- ANALYSIS QUERIES (IMPORTANT 🔥)
-- =========================================

-- Most Booked Room Type
SELECT r.RoomType, COUNT(*) AS TotalBookings
FROM Rooms r
JOIN Bookings b ON r.RoomID = b.RoomID
GROUP BY r.RoomType
ORDER BY TotalBookings DESC;

-- Revenue by Room Type
SELECT r.RoomType, SUM(b.TotalAmount) AS Revenue
FROM Rooms r
JOIN Bookings b ON r.RoomID = b.RoomID
GROUP BY r.RoomType;

-- Top Customers by Number of Bookings
SELECT c.CustomerID, c.FirstName, COUNT(b.BookingID) AS TotalBookings
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.FirstName
ORDER BY TotalBookings DESC;

-- Staff Handling Most Bookings
SELECT s.StaffID, s.FirstName, COUNT(b.BookingID) AS TotalBookings
FROM Staff s
JOIN Bookings b ON s.StaffID = b.StaffID
GROUP BY s.StaffID, s.FirstName
ORDER BY TotalBookings DESC;


-- =========================================
-- DATE ANALYSIS
-- =========================================

-- Bookings per Month
SELECT MONTH(CheckInDate) AS Month, COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY Month
ORDER BY Month;

-- Revenue per Month
SELECT MONTH(CheckInDate) AS Month, SUM(TotalAmount) AS Revenue
FROM Bookings
GROUP BY Month
ORDER BY Month;