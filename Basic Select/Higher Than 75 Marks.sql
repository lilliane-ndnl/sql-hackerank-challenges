SELECT Name
FROM STUDENTS
WHERE Marks > 75  -- Replace 75 with the actual threshold
ORDER BY SUBSTRING(Name, -3) ASC, ID ASC;
