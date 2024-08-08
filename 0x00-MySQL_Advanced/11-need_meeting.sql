-- Creates a view named "need_meeting" that displays all students,
-- with a score below 80 (Exclusive) and either no record of a last,
-- meeting or a last meeting that occurred more than one month ago.
DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
    SELECT name
        FROM students
        WHERE score < 80 AND
            (
                last_meeting IS NULL
                OR last_meeting < SUBDATE(CURRENT_DATE(), INTERVAL 1 MONTH)
            )
;
