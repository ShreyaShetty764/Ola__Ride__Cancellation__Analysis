create database Ola;
Use Ola;

#question 1:Retrieve all successful bookings:
create view successful_bookings as
select*
from bookings
where Booking_Status="Success";

select*from successful_bookings;

#question 2:Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as 
select Vehicle_Type,avg(Ride_Distance) as avg_distance
from bookings
group by Vehicle_Type;

select*from ride_distance_for_each_vehicle;

#question 3:Get the total number of cancelled rides by customers:
create view canceled_rides_by_customer as
select count(*)
from bookings
where Booking_Status="Canceled by Customer";

select*from canceled_rides_by_customer;

#question 4:List the top 5 customers who booked the highest number of rides:
create view top_5_customers as
select Customer_ID,count(Customer_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;

select*from top_5_customers;

#question 5:Get the number of rides cancelled by drivers due to personal and car-related issues:
create view rides_canceled_by_drives_P_C_Issues as
select count(*) 
from bookings
where Canceled_Rides_By_Driver="Personal & Car related issue";

select* from rides_canceled_by_drives_P_C_Issues;

#question 6:Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view min_max_driver_rating as 
select min(Driver_Ratings) as min_rating,max(Driver_Ratings) as max_rating
from bookings
where Vehicle_Type="Prime Sedan";

select* from min_max_driver_rating;

#question 7:Retrieve all rides where payment was made using UPI:
create view rides_payment_through_UPI as
select* 
from bookings
where Payment_Method="UPI";

select * from rides_payment_through_UPI;

#Question 8:Find the average customer rating per vehicle type:
create view avg_customer_rating_per_vehicle_type as
select Vehicle_Type,avg(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

select*from avg_customer_rating_per_vehicle_type;

#Question 9:Calculate the total booking value of rides completed successfully:
create view total_booking_value_of_rides_completed_successfully as 
select sum(Booking_Value) as total_booking_value
from bookings
where Booking_Status="Success";

select*from total_booking_value_of_rides_completed_successfully;

#Question 10: List all incomplete rides along with the reason:
create view incomplete_rides_along_with_reason as
select Booking_ID,Incomplete_Rides_Reason
from bookings
where Incomplete_Rides="Yes";

select*from incomplete_rides_along_with_reason;
