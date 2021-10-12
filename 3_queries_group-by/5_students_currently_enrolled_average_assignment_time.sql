-- Get currently enrolled students' average assignment completion time.

-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

-- Compass
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;

-- SELECT students.name as student, AVG(assignments.duration) as average_assignment_duration 
-- FROM assignments // need to look GROUP BY!!!!
-- JOIN assignment_submissions ON assignment_id = assignments.id
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- ORDER BY AVG(assignments.duration) ASC


