SELECT ev.city, COUNT(DISTINCT reg.user_id) AS distinct_registrations
FROM Events ev
JOIN Registrations reg ON ev.event_id = reg.event_id
GROUP BY ev.city
ORDER BY distinct_registrations DESC
LIMIT 5;