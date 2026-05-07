#1. Retrieve all successful bookings:
Create View Successful_Bookings As
Select * From bookings
where Booking_Status = 'Successful';
#1. Retrieve all successful bookings:
Select * from Successful_Bookings;


#2. Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle_type AS
Select Vehicle_Type, AVG(Ride_distance) as avg_Distance
From bookings
Group by Vehicle_Type;
#2. Find the average ride distance for each vehicle type:
Select * From ride_distance_for_each_vehicle_type;


#3. Get the total number of cancelled rides by customers:
Create View  cancelled_rides_by_customer AS 
Select COUNT(*) From Bookings
Where Booking_Status = 'cancelled by Customer';
#3. Get the total number of cancelled rides by customers:
Select * From cancelled_rides_by_customer; 


#4. List the top 5 customers who booked the highest number of rides:
Create View the_highest_number_of_rides as 
Select Customer_ID, COUNT(Booking_ID) as Total_rides
From Bookings
Group by Customer_ID
Order By Total_rides Desc Limit 5;
#4. List the top 5 customers who booked the highest number of rides:
Select * From the_highest_number_of_rides;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View rides_cancelled_by_drivers as
Select Count(*) 
From Bookings
Where Cancelled_Rides_by_Driver ='Personal & Car related issues';

Select * From rides_cancelled_by_drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
Select MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

Select * From Max_Min_Driver_Rating;

#7. Retrieve the AVG Booking value:
Create View Average_amount As
SELECT AVG(Booking_Value) as avg_amount
FROM bookings
WHERE Booking_Status = 'Successful';

Select * From Average_amount;

#8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
Select Vehicle_Type, AVG(Customer_RAting) as Avg_customer_rating
From bookings
Group By Vehicle_Type;

Select * From AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Create View total_successful_ride_value As
Select SUM(Booking_Value) as total_successful_ride_value
From bookings
Where Booking_Status = 'Successful';

Select * From total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Create View Incomplete_RidesReason As
Select Booking_ID, Incomplete_Ride_Reason
From bookings
Where Incomplete_Rides = 'Yes';

Select * from Incomplete_RidesReason;
