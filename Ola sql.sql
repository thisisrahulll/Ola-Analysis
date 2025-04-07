create database ola;
use ola;

select * from bookings;

# Retrieve all successful bookings:
SELECT * from bookings
where Booking_Status = 'Success';

# Find the average ride distance for each vehicle type:
select Vehicle_Type, avg(Ride_Distance) as ride_distance
from bookings
group by Vehicle_Type;

-- Get the total number of cancelled rides by customers:
select count(*) as rides_canceled 
from bookings
where Booking_Status = 'cancelled by Customer';

-- List the top 5 customers who booked the highest number of rides:
select Customer_ID, count(Booking_ID) as total_rides 
from bookings
group by Customer_ID
order by total_rides desc
limit 5;

-- Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*)
from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- Find the maximum and minimum driver ratings for Prime Sedan bookings:
select Vehicle_Type, max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_rating
from bookings
where Vehicle_Type = 'Prime sedan'; 

-- Retrieve all rides where payment was made using UPI:
select * from bookings
where Payment_Method = 'UPI';

-- Find the average customer rating per vehicle type:
select Vehicle_Type, avg(Customer_Rating) as Customer_rating
from bookings
group by Vehicle_Type;

-- Calculate the total booking value of rides completed successfully:
select sum(Booking_Value) as total_sucess_value
from bookings
where Booking_Status = 'Success';

-- List all incomplete rides along with the reason:
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';


