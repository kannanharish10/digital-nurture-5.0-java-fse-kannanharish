SELECT evt.title,
       COUNT(reg.registration_id) AS registration_count
FROM Events evt
JOIN Registrations reg ON evt.event_id = reg.event_id
GROUP BY evt.event_id
ORDER BY registration_count DESC
LIMIT 3;