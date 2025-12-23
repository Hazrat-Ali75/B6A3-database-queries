-- Retrieve booking information along with Customer name and Vehicle name.
SELECT
    b.booking_id,
    u.name,
    v.name,
    b.start_date,
    b.end_date,
    b.status
FROM
    bookings b
    INNER JOIN users u ON b.user_id = u.user_id
    AND u.role = 'Customer'
    INNER JOIN vehicles v ON b.vehicle_id = v.vehicle_id;

-- Find all vehicles that have never been booked.
SELECT
    *
FROM
    vehicles v
WHERE
    NOT EXISTS (
        SELECT
            vehicle_id
        FROM
            bookings b
        WHERE
            v.vehicle_id = b.vehicle_id
    );

-- Retrieve all available vehicles of a specific type (e.g. cars).
SELECT
    *
FROM
    vehicles
WHERE
    status = 'available';

-- Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
SELECT
    v.name,
    COUNT(*) as total_bookings
FROM
    bookings b
    INNER JOIN vehicles v ON b.vehicle_id = v.vehicle_id
GROUP BY
    v.name
HAVING
    COUNT(*) > 2;