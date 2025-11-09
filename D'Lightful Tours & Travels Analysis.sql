
-- D'LIGHTFUL TOURS & TRAVELS - 2025
-- Turning Destinations into Delightful Memories
-- Memorable journeys that shine with happiness.
-- MySQL Workbench Data Analysis

-- Create Database
CREATE DATABASE DLightful_Tours;
USE DLightful_Tours;

-- ALL TABLES-: Customers, Destinations, Tour_Packages, Bookings, Payments, Reviews

-- TABLE 1: CUSTOMERS

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL,
    city VARCHAR(50) NOT NULL,
    registration_date DATE NOT NULL
);

INSERT INTO Customers (name, email, phone, city, registration_date) VALUES
('Aditi Sharma', 'aditi.sharma@email.com', '9876543210', 'Mumbai', '2025-01-15'),
('Rohan Mehta', 'rohan.mehta@email.com', '9876543211', 'Delhi', '2025-01-20'),
('Priya Nair', 'priya.nair@email.com', '9876543212', 'Bangalore', '2025-02-05'),
('Arjun Singh', 'arjun.singh@email.com', '9876543213', 'Pune', '2025-02-10'),
('Kavya Reddy', 'kavya.reddy@email.com', '9876543214', 'Hyderabad', '2025-02-18'),
('Vikram Patel', 'vikram.patel@email.com', '9876543215', 'Ahmedabad', '2025-03-01'),
('Sneha Iyer', 'sneha.iyer@email.com', '9876543216', 'Chennai', '2025-03-12'),
('Rahul Gupta', 'rahul.gupta@email.com', '9876543217', 'Kolkata', '2025-03-25'),
('Ananya Desai', 'ananya.desai@email.com', '9876543218', 'Surat', '2025-04-02'),
('Karthik Kumar', 'karthik.kumar@email.com', '9876543219', 'Coimbatore', '2025-04-15'),
('Meera Joshi', 'meera.joshi@email.com', '9876543220', 'Jaipur', '2025-04-28'),
('Siddharth Rao', 'siddharth.rao@email.com', '9876543221', 'Lucknow', '2025-05-10'),
('Ishita Kapoor', 'ishita.kapoor@email.com', '9876543222', 'Chandigarh', '2025-05-22'),
('Aarav Pandey', 'aarav.pandey@email.com', '9876543223', 'Indore', '2025-06-05'),
('Diya Malhotra', 'diya.malhotra@email.com', '9876543224', 'Nagpur', '2025-06-18'),
('Harsh Verma', 'harsh.verma@email.com', '9876543225', 'Bhopal', '2025-07-01'),
('Riya Saxena', 'riya.saxena@email.com', '9876543226', 'Kochi', '2025-07-15'),
('Nikhil Bansal', 'nikhil.bansal@email.com', '9876543227', 'Goa', '2025-07-28'),
('Pooja Agarwal', 'pooja.agarwal@email.com', '9876543228', 'Visakhapatnam', '2025-08-10'),
('Aditya Chopra', 'aditya.chopra@email.com', '9876543229', 'Noida', '2025-08-25'),
('Shruti Mishra', 'shruti.mishra@email.com', '9876543230', 'Patna', '2025-09-05'),
('Varun Tiwari', 'varun.tiwari@email.com', '9876543231', 'Vadodara', '2025-09-18'),
('Neha Bhatt', 'neha.bhatt@email.com', '9876543232', 'Dehradun', '2025-09-30');
SELECT * FROM Customers;


-- TABLE 2: DESTINATIONS

CREATE TABLE Destinations (
    destination_id INT PRIMARY KEY AUTO_INCREMENT,
    destination_name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    average_cost DECIMAL(10,2) NOT NULL,
    popularity_rating DECIMAL(3,2) NOT NULL CHECK (popularity_rating BETWEEN 1 AND 5)
);

INSERT INTO Destinations (destination_name, country, category, average_cost, popularity_rating) VALUES
('Goa', 'India', 'Beach', 25000.00, 4.8),
('Manali', 'India', 'Hill Station', 30000.00, 4.7),
('Jaipur', 'India', 'Historical', 22000.00, 4.6),
('Kerala Backwaters', 'India', 'Cultural', 35000.00, 4.9),
('Leh-Ladakh', 'India', 'Adventure', 45000.00, 4.9),
('Agra', 'India', 'Historical', 18000.00, 4.5),
('Shimla', 'India', 'Hill Station', 28000.00, 4.4),
('Andaman Islands', 'India', 'Beach', 50000.00, 4.8),
('Paris', 'France', 'Cultural', 150000.00, 4.9),
('Dubai', 'UAE', 'Adventure', 80000.00, 4.7),
('Bali', 'Indonesia', 'Beach', 60000.00, 4.8),
('Bangkok', 'Thailand', 'Cultural', 45000.00, 4.6),
('Singapore', 'Singapore', 'Cultural', 70000.00, 4.7),
('Maldives', 'Maldives', 'Beach', 120000.00, 5.0),
('Switzerland', 'Switzerland', 'Hill Station', 180000.00, 4.9),
('New York', 'USA', 'Cultural', 200000.00, 4.8),
('Tokyo', 'Japan', 'Cultural', 140000.00, 4.8),
('London', 'UK', 'Historical', 160000.00, 4.7),
('Sydney', 'Australia', 'Beach', 190000.00, 4.8),
('Rome', 'Italy', 'Historical', 155000.00, 4.9),
('Barcelona', 'Spain', 'Cultural', 145000.00, 4.7),
('Phuket', 'Thailand', 'Beach', 55000.00, 4.6),
('Kathmandu', 'Nepal', 'Adventure', 35000.00, 4.5);
SELECT * FROM Destinations;


-- TABLE 3: TOUR_PACKAGES

CREATE TABLE Tour_Packages (
    package_id INT PRIMARY KEY AUTO_INCREMENT,
    package_name VARCHAR(150) NOT NULL,
    destination_id INT NOT NULL,
    duration_days INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    available_from DATE NOT NULL,
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

INSERT INTO Tour_Packages (package_name, destination_id, duration_days, price, available_from) VALUES
('Goa Beach Paradise', 1, 5, 28000.00, '2025-01-01'),
('Manali Snow Adventure', 2, 6, 35000.00, '2025-01-15'),
('Royal Rajasthan Tour', 3, 4, 25000.00, '2025-02-01'),
('Kerala Houseboat Experience', 4, 7, 42000.00, '2025-02-15'),
('Leh-Ladakh Bike Expedition', 5, 10, 55000.00, '2025-05-01'),
('Taj Mahal Express', 6, 3, 20000.00, '2025-01-01'),
('Shimla-Kufri Hill Escape', 7, 5, 32000.00, '2025-01-01'),
('Andaman Island Hopping', 8, 8, 58000.00, '2025-03-01'),
('Romantic Paris Getaway', 9, 7, 165000.00, '2025-04-01'),
('Dubai Desert Safari & City Tour', 10, 6, 88000.00, '2025-01-01'),
('Bali Cultural & Beach Experience', 11, 6, 68000.00, '2025-02-01'),
('Bangkok Shopping & Temple Tour', 12, 5, 48000.00, '2025-01-01'),
('Singapore Family Fun', 13, 5, 75000.00, '2025-03-01'),
('Maldives Luxury Honeymoon', 14, 6, 135000.00, '2025-01-01'),
('Swiss Alps Adventure', 15, 9, 195000.00, '2025-06-01'),
('New York City Explorer', 16, 7, 215000.00, '2025-04-01'),
('Tokyo Cherry Blossom Special', 17, 6, 150000.00, '2025-03-15'),
('London Royal Heritage', 18, 6, 170000.00, '2025-05-01'),
('Sydney Opera & Beaches', 19, 8, 205000.00, '2025-01-01'),
('Rome Historical Walk', 20, 6, 165000.00, '2025-04-01'),
('Barcelona Art & Architecture', 21, 6, 155000.00, '2025-05-01'),
('Phuket Island Adventure', 22, 5, 58000.00, '2025-02-01'),
('Kathmandu Trekking Expedition', 23, 8, 40000.00, '2025-03-01'),
('Goa Weekend Getaway', 1, 3, 18000.00, '2025-01-01'),
('Manali Summer Special', 2, 4, 28000.00, '2025-06-01');
SELECT * FROM Tour_Packages;


-- TABLE 4: BOOKINGS

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    package_id INT NOT NULL,
    booking_date DATE NOT NULL,
    travel_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (package_id) REFERENCES Tour_Packages(package_id)
);

INSERT INTO Bookings (customer_id, package_id, booking_date, travel_date, status) VALUES
(1, 1, '2025-01-16', '2025-02-14', 'Completed'),
(2, 2, '2025-01-22', '2025-02-20', 'Completed'),
(3, 12, '2025-02-06', '2025-03-15', 'Completed'),
(4, 3, '2025-02-12', '2025-03-10', 'Completed'),
(5, 4, '2025-02-20', '2025-04-05', 'Completed'),
(6, 10, '2025-03-03', '2025-04-12', 'Completed'),
(7, 6, '2025-03-14', '2025-04-20', 'Completed'),
(8, 11, '2025-03-28', '2025-05-08', 'Completed'),
(9, 8, '2025-04-05', '2025-06-10', 'Completed'),
(10, 13, '2025-04-18', '2025-06-22', 'Completed'),
(11, 9, '2025-05-01', '2025-07-15', 'Completed'),
(12, 5, '2025-05-12', '2025-07-20', 'Ongoing'),
(13, 16, '2025-05-25', '2025-08-05', 'Confirmed'),
(14, 7, '2025-06-08', '2025-08-18', 'Confirmed'),
(15, 14, '2025-06-20', '2025-09-10', 'Confirmed'),
(16, 18, '2025-07-03', '2025-09-25', 'Confirmed'),
(17, 15, '2025-07-18', '2025-10-12', 'Upcoming'),
(18, 22, '2025-07-30', '2025-10-20', 'Upcoming'),
(19, 19, '2025-08-12', '2025-11-05', 'Upcoming'),
(20, 17, '2025-08-28', '2025-11-18', 'Upcoming'),
(21, 20, '2025-09-08', '2025-11-28', 'Pending'),
(22, 21, '2025-09-20', '2025-12-10', 'Pending'),
(23, 23, '2025-10-02', '2025-12-20', 'Pending'),
(1, 24, '2025-03-10', '2025-04-15', 'Completed'),
(5, 1, '2025-04-20', '2025-06-05', 'Completed'),
(8, 3, '2025-05-15', '2025-03-22', 'Cancelled'),
(10, 12, '2025-06-01', '2025-07-10', 'Completed'),
(15, 10, '2025-02-28', '2025-04-08', 'Refunded'),
(3, 25, '2025-07-05', '2025-08-20', 'Confirmed'),
(7, 2, '2025-08-15', '2025-10-05', 'Upcoming');
SELECT * FROM Bookings;


-- TABLE 5: PAYMENTS

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_mode VARCHAR(30) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Payments (booking_id, amount, payment_date, payment_mode, payment_status) VALUES
(1, 28000.00, '2025-01-16', 'UPI', 'Paid'),
(2, 35000.00, '2025-01-22', 'Credit Card', 'Paid'),
(3, 48000.00, '2025-02-06', 'Net Banking', 'Paid'),
(4, 25000.00, '2025-02-12', 'UPI', 'Paid'),
(5, 42000.00, '2025-02-20', 'Credit Card', 'Paid'),
(6, 88000.00, '2025-03-03', 'Net Banking', 'Paid'),
(7, 20000.00, '2025-03-14', 'UPI', 'Paid'),
(8, 68000.00, '2025-03-28', 'Credit Card', 'Paid'),
(9, 58000.00, '2025-04-05', 'Net Banking', 'Paid'),
(10, 75000.00, '2025-04-18', 'Credit Card', 'Paid'),
(11, 165000.00, '2025-05-01', 'Net Banking', 'Paid'),
(12, 55000.00, '2025-05-12', 'UPI', 'Paid'),
(13, 215000.00, '2025-05-25', 'Credit Card', 'Paid'),
(14, 32000.00, '2025-06-08', 'UPI', 'Paid'),
(15, 135000.00, '2025-06-20', 'Net Banking', 'Paid'),
(16, 170000.00, '2025-07-03', 'Credit Card', 'Paid'),
(17, 195000.00, '2025-07-18', 'Net Banking', 'Paid'),
(18, 58000.00, '2025-07-30', 'UPI', 'Paid'),
(19, 205000.00, '2025-08-12', 'Credit Card', 'Paid'),
(20, 150000.00, '2025-08-28', 'Net Banking', 'Paid'),
(21, 165000.00, '2025-09-08', 'Cash', 'Pending'),
(22, 155000.00, '2025-09-20', 'UPI', 'Pending'),
(23, 40000.00, '2025-10-02', 'Credit Card', 'Pending'),
(24, 18000.00, '2025-03-10', 'UPI', 'Paid'),
(25, 28000.00, '2025-04-20', 'Credit Card', 'Paid'),
(26, 25000.00, '2025-05-15', 'Net Banking', 'Paid'),
(27, 48000.00, '2025-06-01', 'UPI', 'Paid'),
(28, 88000.00, '2025-02-28', 'Credit Card', 'Refunded'),
(29, 28000.00, '2025-07-05', 'Net Banking', 'Paid'),
(30, 35000.00, '2025-08-15', 'UPI', 'Paid');
SELECT * FROM Payments;


-- TABLE 6: REVIEWS

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    package_id INT NOT NULL,
    rating DECIMAL(2,1) NOT NULL CHECK (rating BETWEEN 1 AND 5),
    review_comment TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (package_id) REFERENCES Tour_Packages(package_id)
);

INSERT INTO Reviews (customer_id, package_id, rating, review_comment, review_date) VALUES
(1, 1, 5.0, 'Amazing beach experience! The resort was fantastic and the tour was well organized.', '2025-02-20'),
(2, 2, 4.5, 'Manali was beautiful but weather was unpredictable. Overall great trip.', '2025-02-27'),
(3, 12, 4.0, 'Bangkok was fun. Shopping was great but temples were crowded. Good value for money.', '2025-03-22'),
(4, 3, 5.0, 'Jaipur was magical! The palaces and forts were stunning. Excellent guide.', '2025-03-17'),
(5, 4, 4.8, 'Kerala backwaters were serene and relaxing. Houseboat experience was unforgettable.', '2025-04-13'),
(6, 10, 4.5, 'Dubai was impressive! Desert safari was thrilling. City tour covered all major spots.', '2025-04-19'),
(7, 6, 4.0, 'Taj Mahal is breathtaking. Short trip but covered everything. Slightly rushed schedule.', '2025-04-27'),
(8, 11, 5.0, 'Bali exceeded expectations! Beautiful beaches, temples, and amazing food. Highly recommend.', '2025-05-16'),
(9, 8, 4.7, 'Andaman Islands are paradise! Crystal clear water and pristine beaches. Perfect for families.', '2025-06-18'),
(10, 13, 4.3, 'Singapore was clean and modern. Great for kids with Universal Studios and zoo visits.', '2025-06-30'),
(11, 9, 5.0, 'Paris is the city of love! Eiffel Tower, Louvre, and Seine cruise were highlights. Magical!', '2025-07-23'),
(1, 24, 4.5, 'Short Goa trip was perfect for a quick getaway. Loved the beach shacks and nightlife.', '2025-04-22'),
(5, 1, 4.8, 'Second time in Goa and it never disappoints. This package had better hotel options.', '2025-06-13'),
(8, 3, 3.0, 'Had to cancel due to personal emergency. Refund process took time but amount was returned.', '2025-05-20'),
(10, 12, 4.6, 'Bangkok again! This time focused more on street food tours. Absolutely delicious.', '2025-07-18'),
(3, 25, 4.4, 'Manali in summer is different from winter. Pleasant weather and beautiful green valleys.', '2025-08-27'),
(12, 5, 4.9, 'Leh-Ladakh bike trip was adventure of lifetime! Challenging but absolutely worth it.', '2025-07-28'),
(15, 14, 5.0, 'Maldives honeymoon was dreamy! Overwater villa, snorkeling, and candlelight dinners. Perfect!', '2025-09-18'),
(9, 8, 4.8, 'Andaman trip was well organized. Scuba diving and water sports were thrilling experiences.', '2025-06-20'),
(7, 6, 4.2, 'Quick Agra trip for Taj visit. Clean hotel and punctual transfers. Value for money.', '2025-04-28');
SELECT * FROM Reviews;


--  QUESTIONS


-- Q1: Total Revenue Generated in 2025
SELECT 
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT booking_id) AS total_bookings
FROM Payments
WHERE payment_status = 'Paid';


-- Q2: Monthly Revenue Trend
SELECT 
    DATE_FORMAT(payment_date, '%M') AS Month,
    SUM(amount) AS Monthly_Revenue
FROM Payments
WHERE payment_status = 'Paid'
GROUP BY Month
ORDER BY MIN(MONTH(payment_date));


-- Q3: Most Profitable Destination
SELECT 
    d.destination_name,
    SUM(p.amount) AS Total_Revenue
FROM Destinations d
JOIN Tour_Packages t ON d.destination_id = t.destination_id
JOIN Bookings b ON t.package_id = b.package_id
JOIN Payments p ON b.booking_id = p.booking_id
WHERE p.payment_status = 'Paid'
GROUP BY d.destination_name
ORDER BY Total_Revenue DESC
LIMIT 5;


-- Q4: Overall Average Rating per Destination
SELECT 
    d.destination_name,
    ROUND(AVG(r.rating), 2) AS Avg_Rating
FROM Reviews r
JOIN Tour_Packages t ON r.package_id = t.package_id
JOIN Destinations d ON t.destination_id = d.destination_id
GROUP BY d.destination_name
ORDER BY Avg_Rating DESC;


-- Q5: Monthly Booking Trends
SELECT 
    MONTHNAME(booking_date) AS month_name,
    COUNT(booking_id) AS bookings_count,
    SUM(CASE WHEN status = 'Completed' THEN 1 ELSE 0 END) AS completed,
    SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled,
    SUM(CASE WHEN status = 'Upcoming' THEN 1 ELSE 0 END) AS upcoming,
    SUM(CASE WHEN status = 'Pending' THEN 1 ELSE 0 END) AS Pending
FROM Bookings
GROUP BY MONTHNAME(booking_date), MONTH(booking_date)
ORDER BY MONTH(booking_date);


-- Q6: Top 5 Customers by Spending
SELECT 
    c.customer_id,
    c.name,
    c.city,
    COUNT(b.booking_id) AS total_bookings,
    SUM(p.amount) AS total_spent,
    ROUND(AVG(r.rating), 2) AS average_rating_given
FROM Customers c
JOIN Bookings b ON c.customer_id = b.customer_id
JOIN Payments p ON b.booking_id = p.booking_id
    AND p.payment_status = 'Paid'
LEFT JOIN Reviews r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.name, c.city
ORDER BY total_spent DESC
LIMIT 5;



-- Q7: Payment Mode Analysis
SELECT 
    payment_mode,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount,
    ROUND(AVG(amount), 0) AS average_amount,
    ROUND(SUM(amount) * 100.0 / (SELECT SUM(amount) FROM Payments WHERE payment_status = 'Paid'), 2) AS percentage_of_revenue
FROM Payments
WHERE payment_status = 'Paid'
GROUP BY payment_mode
ORDER BY total_amount DESC;


-- Q8: Destination Category Performance
SELECT 
    d.category,
    COUNT(b.booking_id) AS total_bookings,
    SUM(p.amount) AS total_revenue,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM Destinations d
JOIN Tour_Packages tp ON d.destination_id = tp.destination_id
JOIN Bookings b ON tp.package_id = b.package_id
LEFT JOIN Payments p ON b.booking_id = p.booking_id AND p.payment_status = 'Paid'
LEFT JOIN Reviews r ON tp.package_id = r.package_id
GROUP BY d.category
ORDER BY total_revenue DESC;


-- Q9: Booking Status Distribution
SELECT 
    status,
    COUNT(*) AS booking_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Bookings), 2) AS percentage
FROM Bookings
GROUP BY status
ORDER BY booking_count DESC;


-- Q10: Customer Satisfaction Analysis
SELECT 
    CASE 
        WHEN rating >= 4.5 THEN 'Excellent (4.5-5.0)'
        WHEN rating >= 3.5 THEN 'Good (3.5-4.4)'
        WHEN rating >= 2.5 THEN 'Average (2.5-3.4)'
        ELSE 'Poor (1.0-2.4)'
    END AS satisfaction_level,
    COUNT(*) AS review_count,
    ROUND(AVG(rating), 2) AS avg_rating
FROM Reviews
GROUP BY satisfaction_level
ORDER BY avg_rating DESC;


-- Q11: International vs Domestic Preference
SELECT 
    CASE 
        WHEN d.country = 'India' THEN 'Domestic'
        ELSE 'International'
    END AS tour_type,
    COUNT(b.booking_id) AS total_bookings,
    SUM(p.amount) AS total_revenue
FROM Bookings b
JOIN Tour_Packages tp ON b.package_id = tp.package_id
JOIN Destinations d ON tp.destination_id = d.destination_id
LEFT JOIN Payments p ON b.booking_id = p.booking_id
    AND p.payment_status = 'Paid'
GROUP BY tour_type
ORDER BY total_revenue DESC;


-- Q12: Top Customers by Spending
SELECT 
    c.name AS Customer_Name,
    SUM(p.amount) AS Total_Spent
FROM Customers c
JOIN Bookings b ON c.customer_id = b.customer_id
JOIN Payments p ON b.booking_id = p.booking_id
WHERE p.payment_status = 'Paid'
GROUP BY c.customer_id
ORDER BY Total_Spent DESC
LIMIT 5;


-- Q13: Most Popular Destinations (by Bookings)
SELECT 
    d.destination_name,
    COUNT(b.booking_id) AS Total_Bookings
FROM Destinations d
JOIN Tour_Packages t ON d.destination_id = t.destination_id
JOIN Bookings b ON t.package_id = b.package_id
GROUP BY d.destination_name
ORDER BY Total_Bookings DESC
Limit 5;








