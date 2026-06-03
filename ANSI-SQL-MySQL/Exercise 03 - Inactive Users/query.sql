SELECT usr.user_id, usr.full_name
FROM Users usr
WHERE usr.user_id NOT IN (
    SELECT reg.user_id
    FROM Registrations reg
    WHERE reg.registration_date >= DATE_SUB(CURDATE(), INTERVAL 90 DAY)
);