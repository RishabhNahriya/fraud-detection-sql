-- 1. High-Value Transactions (e.g., over ₹10,000)
SELECT *
FROM transactions
WHERE amount > 10000;

-- 2. Location Mismatch: User making a transaction from a different location
SELECT t.*
FROM transactions t
JOIN users u ON t.user_id = u.user_id
WHERE t.location != u.registered_location;

-- 3. Device Mismatch: User using an unusual device
SELECT t.*
FROM transactions t
JOIN users u ON t.user_id = u.user_id
WHERE t.device_type != u.registered_device;

-- 4. Frequent Transactions in a Single Day
SELECT user_id, COUNT(*) AS transaction_count, DATE(date) AS trans_date
FROM transactions
GROUP BY user_id, trans_date
HAVING transaction_count > 3;

-- 5. Repeated Failed Transaction Attempts
SELECT user_id, COUNT(*) AS failed_attempts
FROM transactions
WHERE status = 'Failed'
GROUP BY user_id
HAVING failed_attempts > 2;

-- 6. High Total Amount Spent in One Day
SELECT user_id, DATE(date) AS trans_date, SUM(amount) AS total_spent
FROM transactions
GROUP BY user_id, trans_date
HAVING total_spent > 25000;

-- 7. Users with Multiple Location/Device Mismatches
SELECT t.user_id, COUNT(*) AS mismatch_count
FROM transactions t
JOIN users u ON t.user_id = u.user_id
WHERE t.location != u.registered_location
   OR t.device_type != u.registered_device
GROUP BY t.user_id
HAVING mismatch_count > 2;
