-- Select the total number of students who were in the first 3 cohorts.

-- Compass
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);

-- My answer
-- SELECT COUNT(*)
-- FROM students
-- WHERE cohort_id <=3;
