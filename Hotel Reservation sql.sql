1.
SELECT COUNT(Booking_ID) AS total_reservations
FROM projectdataset.`hotel reservation dataset`;

2.
SELECT type_of_meal_plan, COUNT(*) AS total_count
FROM projectdataset.`hotel reservation dataset`
GROUP BY type_of_meal_plan
ORDER BY total_count DESC
LIMIT 1;

3.
SELECT AVG(avg_price_per_room) AS average_price
FROM projectdataset.`hotel reservation dataset`
WHERE no_of_children > 0;

4.
SELECT room_type_reserved, COUNT(*) AS total_count
FROM projectdataset.`hotel reservation dataset`
GROUP BY room_type_reserved
ORDER BY total_count DESC
LIMIT 1;

5.
SELECT COUNT(*) AS weekend_reservations
FROM projectdataset.`hotel reservation dataset`
WHERE no_of_weekend_nights > 0;

6.
SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM projectdataset.`hotel reservation dataset`;

7.
SELECT market_segment_type, COUNT(*) AS total_count
FROM projectdataset.`hotel reservation dataset`
GROUP BY market_segment_type
ORDER BY total_count DESC
LIMIT 1;

8.
SELECT COUNT(*) AS confirmed_reservations
FROM projectdataset.`hotel reservation dataset`
WHERE booking_status = 'Confirmed';

9.
SELECT SUM(no_of_adults) AS total_adults, SUM(no_of_children) AS total_children
FROM projectdataset.`hotel reservation dataset`;

10.
SELECT AVG(no_of_weekend_nights) AS avg_weekend_nights_with_children
FROM projectdataset.`hotel reservation dataset`
WHERE no_of_children > 0;

11.
SELECT EXTRACT(MONTH FROM arrival_date) AS month, COUNT(Booking_ID) AS num_of_reservations
FROM projectdataset.`hotel reservation dataset`
GROUP BY month
ORDER BY month;

12.
SELECT room_type_reserved, AVG(no_of_weekend_nights + no_of_week_nights) AS avg_nights
FROM projectdataset.`hotel reservation dataset`
GROUP BY room_type_reserved;

13.
SELECT room_type_reserved, AVG(avg_price_per_room) AS avg_price
FROM projectdataset.`hotel reservation dataset`
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY COUNT(Booking_ID) DESC
LIMIT 1;

14.
SELECT market_segment_type, AVG(avg_price_per_room) AS avg_price_per_room
FROM hotel_reservations
GROUP BY market_segment_type
ORDER BY avg_price_per_room DESC
LIMIT 1;
