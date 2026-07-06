# 🚗 Ola Ride Cancellation & Booking Analysis

A data analytics project that analyzes **100,000+ Ola ride booking records** using **MySQL** and **Power BI** to identify ride cancellation patterns, customer behavior, revenue trends, and operational insights.

---

## 📌 Project Overview

This project focuses on understanding booking and cancellation behavior in an Ola ride dataset. Using SQL for data analysis and Power BI for visualization, the project answers key business questions related to:

- Ride cancellations by customers and drivers
- Vehicle type performance
- Customer and driver ratings
- Payment method preferences
- Revenue generated from successful bookings

The insights obtained can help improve fleet management, reduce cancellations, and enhance customer satisfaction.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **MySQL** | Data querying, filtering, aggregation, and view creation |
| **Power BI** | Dashboard creation and data visualization |
| **Microsoft Excel** | Data cleaning and preprocessing |

---

## 📂 Project Structure

```text
ola-ride-cancellation-analysis/
│
├── Dataset/
│   └── Bookings.xlsx
│
├── Screenshots/
│   ├── Overall.png
│   ├── Cancellation.png
│   ├── Ratings.png
│   ├── Revenue.png
│   └── Vehicle Type.png
│
├── analysis_queries.sql
├── Data analytics ola dashboard.pbix
└── README.md
```

---

## 📊 Dataset Information

- **Dataset Size:** 100,000+ booking records
- **Domain:** Transportation / Ride Booking
- **Key Attributes:**
  - Booking ID
  - Customer ID
  - Vehicle Type
  - Booking Status
  - Ride Distance
  - Booking Value
  - Payment Method
  - Driver Rating
  - Customer Rating
  - Cancellation Reason
  - Incomplete Ride Reason

---

## 🔍 SQL Analysis

The following business questions were answered using SQL.

### 1. Retrieve all successful bookings

```sql
CREATE VIEW Successful_Bookings AS
SELECT *
FROM ola_bookings
WHERE Booking_Status = 'Success';
```

---

### 2. Average ride distance for each vehicle type

```sql
SELECT Vehicle_Type,
AVG(Ride_Distance) AS Average_Distance
FROM ola_bookings
GROUP BY Vehicle_Type;
```

---

### 3. Total number of rides cancelled by customers

```sql
SELECT COUNT(*) AS Customer_Cancellations
FROM ola_bookings
WHERE Booking_Status = 'Canceled by Customer';
```

---

### 4. Top 5 customers with the highest number of rides

```sql
SELECT Customer_ID,
COUNT(*) AS Total_Rides
FROM ola_bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC
LIMIT 5;
```

---

### 5. Driver cancellations due to personal or car-related issues

```sql
SELECT COUNT(*) AS Driver_Cancellations
FROM ola_bookings
WHERE Canceled_Rides_by_Driver
IN ('Personal & Car related issue');
```

---

### 6. Maximum and minimum driver ratings for Prime Sedan

```sql
SELECT
MAX(Driver_Ratings) AS Maximum_Rating,
MIN(Driver_Ratings) AS Minimum_Rating
FROM ola_bookings
WHERE Vehicle_Type='Prime Sedan';
```

---

### 7. Retrieve all rides paid using UPI

```sql
SELECT *
FROM ola_bookings
WHERE Payment_Method='UPI';
```

---

### 8. Average customer rating for each vehicle type

```sql
SELECT Vehicle_Type,
AVG(Customer_Rating) AS Average_Rating
FROM ola_bookings
GROUP BY Vehicle_Type;
```

---

### 9. Total revenue generated from successful rides

```sql
SELECT SUM(Booking_Value) AS Total_Revenue
FROM ola_bookings
WHERE Booking_Status='Success';
```

---

### 10. List incomplete rides along with the reason

```sql
SELECT Booking_ID,
Incomplete_Rides_Reason
FROM ola_bookings
WHERE Incomplete_Rides='Yes';
```

---

## 📈 Power BI Dashboard

The Power BI dashboard includes interactive visualizations for:

- Booking Status Distribution
- Customer vs Driver Cancellation Analysis
- Vehicle Type Performance
- Revenue Analysis
- Payment Method Distribution
- Customer Rating Analysis
- Driver Rating Analysis
- Top Customers
- Ride Distance Analysis
- Cancellation Reasons

---

## 📊 Dashboard Features

- Interactive filters (Vehicle Type, Booking Status, Payment Method)
- KPI Cards
- Bar Charts
- Pie Charts
- Line Charts
- Revenue Dashboard
- Customer Insights
- Driver Performance Metrics

---

## 💡 Key Insights

- Most bookings are completed successfully, while cancellations represent a smaller percentage.
- Driver-initiated cancellations mainly occur due to personal or vehicle-related issues.
- UPI is the most frequently used payment method.
- Prime Sedan records one of the highest average driver ratings.
- A small group of customers contributes a significant share of total rides.
- Successful bookings account for the majority of total revenue.

---

## 🚀 How to Run the Project

### Step 1

Import the dataset into MySQL.

### Step 2

Execute the SQL queries available in:

```
sql/queries.sql
```

### Step 3

Open the Power BI dashboard:

```
dashboard/Ola_Ride_Analysis.pbix
```

### Step 4

Refresh the data source (if required).

---

## 📷 Dashboard Preview

Add dashboard screenshots inside the **screenshots** folder.

Example:

```
screenshots/
│── overview.png
│── cancellation_analysis.png
│── revenue_dashboard.png
│── vehicle_analysis.png
```

---

## 📈 Future Enhancements

- Predict ride cancellations using Machine Learning
- Real-time dashboard using Power BI Service
- Time-series forecasting of bookings
- Customer segmentation
- Driver performance prediction
- Interactive geographical mapping

---

## 📚 Skills Demonstrated

- SQL
- Data Cleaning
- Data Analysis
- Business Intelligence
- Power BI
- Dashboard Design
- Data Visualization
- KPI Reporting
- Business Analytics

---

## 👩‍💻 Author

**Shreya Shetty**

BE Computer Science Engineering  
Canara Engineering College, Mangalore

- GitHub: https://github.com/your-github-username
- LinkedIn: https://linkedin.com/in/your-linkedin-profile

---

## ⭐ If you found this project useful, consider giving it a Star!
