
-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

-- Compass
SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

-- My answer
-- SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissions 
-- FROM cohorts -- error because must appear in the GROUP BY clause or be used in an aggregate function
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC