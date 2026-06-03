SELECT usr.user_id,
       usr.full_name
FROM Users usr
LEFT JOIN Registrations reg
       ON usr.user_id = reg.user_id
WHERE usr.registration_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
  AND reg.registration_id IS NULL;