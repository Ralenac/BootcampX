-- Get the total number of assignments for each day of bootcamp.

-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.

-- Compass
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;

-- My answer
-- SELECT day, count(assignments.*) as total_sassignments
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;
