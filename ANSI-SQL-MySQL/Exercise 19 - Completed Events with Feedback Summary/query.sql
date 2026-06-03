SELECT evt.title,
       COUNT(DISTINCT reg.registration_id) AS total_registrations,
       AVG(feed.rating) AS avg_rating
FROM Events evt
LEFT JOIN Registrations reg
       ON evt.event_id = reg.event_id
LEFT JOIN Feedback feed
       ON evt.event_id = feed.event_id
WHERE evt.status = 'completed'
GROUP BY evt.event_id;