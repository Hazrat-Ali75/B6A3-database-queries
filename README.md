📄 SQL Queries – Vehicle Rental System

This document explains the SQL queries used in the Vehicle Rental System database.
Each query demonstrates essential SQL concepts such as JOIN, EXISTS, WHERE, GROUP BY, and HAVING.

🧾 Query 1: Retrieve Booking Information with Customer & Vehicle Details
🔍 Description

This query retrieves booking details along with:

Customer name

Vehicle name

Booking start and end date

Booking status

Only users with the role Customer are included.

🧠 Concepts Used

INNER JOIN

Table relationships

Filtering with conditions

🚫 Query 2: Find Vehicles That Have Never Been Booked
🔍 Description

This query returns all vehicles that do not have any booking records.

🧠 Concepts Used

NOT EXISTS

Subquery


🚘 Query 3: Retrieve All Available Vehicles
🔍 Description

This query retrieves all vehicles that are currently available for rent.

📌 Vehicle type filtering (e.g., cars) can be added if needed.


📊 Query 4: Vehicles with More Than 2 Bookings
🔍 Description

This query calculates the total number of bookings for each vehicle and displays only those vehicles that have more than 2 bookings.

🧠 Concepts Used

INNER JOIN

GROUP BY

HAVING

COUNT()
