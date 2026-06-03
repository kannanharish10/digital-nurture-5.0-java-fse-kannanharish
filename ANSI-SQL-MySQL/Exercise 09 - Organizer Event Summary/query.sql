SELECT usr.full_name AS organizer_name,
       evt.status,
       COUNT(evt.event_id) AS event_count
FROM Users usr
JOIN Events evt ON usr.user_id = evt.organizer_id
GROUP BY usr.user_id, evt.status;