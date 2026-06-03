SELECT evt.title
FROM Events evt
JOIN Registrations reg ON evt.event_id = reg.event_id
LEFT JOIN Feedback feed ON evt.event_id = feed.event_id
WHERE feed.feedback_id IS NULL
GROUP BY evt.event_id;