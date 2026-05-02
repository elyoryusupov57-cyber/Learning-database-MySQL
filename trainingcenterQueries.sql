
-- 01 Introductory
CREATE TABLE IF NOT EXISTS tblEasy AS
SELECT ci.*, cl.Description AS LevelDescription
FROM tblCourseinfo ci
JOIN tblCourselevel cl ON ci.LevelCode = cl.LevelCode
WHERE cl.Description = 'Introductory';

-- 02 Intermediate
INSERT INTO tblEasy
SELECT ci.*, cl.Description AS LevelDescription
FROM tblCourseinfo ci
JOIN tblCourselevel cl ON ci.LevelCode = cl.LevelCode
WHERE cl.Description = 'Intermediate';

-- 03 Delete
DELETE FROM tblCourseinfo
WHERE LevelCode IN (
    SELECT LevelCode FROM tblCourselevel
    WHERE Description IN ('Introductory', 'Intermediate')
);

-- 04 Cancel
UPDATE tblCourseSchedule
SET Canceled = 'True'
WHERE STR_TO_DATE(StartDate, '%Y-%m-%d %H:%i:%s') BETWEEN '2001-06-20' AND '2001-06-30';

-- 05 Student
SELECT Salutation, COUNT(*) AS Count
FROM tblStudent
WHERE Salutation IN ('Mr.', 'Ms.')
GROUP BY Salutation;
