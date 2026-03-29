-- =========================================
-- Insert Data into Customers
-- =========================================
INSERT INTO Customers (FirstName, LastName, Email, Phone, City) VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'Mumbai'),
('Priya', 'Patil', 'priya@gmail.com', '9876543211', 'Pune'),
('Amit', 'Verma', 'amit@gmail.com', '9876543212', 'Delhi');

-- =========================================
-- Insert Data into Staff
-- =========================================
INSERT INTO Staff (FirstName, LastName, Role, Phone, Email) VALUES
('Suresh', 'Kumar', 'Manager', '9876500001', 'suresh@gmail.com'),
('Neha', 'Singh', 'Receptionist', '9876500002', 'neha@gmail.com');

-- =========================================
-- Insert Data into Rooms
-- =========================================
INSERT INTO Rooms (RoomType, PricePerNight, Capacity) VALUES
('Single', 2000.00, 1),
('Double', 3500.00, 2),
('Suite', 5000.00, 4);

-- =========================================
-- Insert Data into Bookings
-- =========================================
INSERT INTO Bookings (CustomerID, RoomID, StaffID, CheckInDate, CheckOutDate, TotalAmount) VALUES
(1, 1, 1, '2024-01-01', '2024-01-03', 4000.00),
(2, 2, 2, '2024-01-05', '2024-01-07', 7000.00);

-- =========================================
-- Insert Data into Payments
-- =========================================
INSERT INTO Payments (BookingID, PaymentDate, PaymentMethod, Amount) VALUES
(1, '2024-01-01', 'Credit Card', 4000.00),
(2, '2024-01-05', 'Cash', 7000.00);