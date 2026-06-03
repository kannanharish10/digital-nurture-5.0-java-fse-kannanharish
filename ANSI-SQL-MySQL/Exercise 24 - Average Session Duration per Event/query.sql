SELECT evt.title,
       AVG(TIMESTAMPDIFF(MINUTE, sess.start_time, sess.end_time)) AS avg_duration_minutes
FROM Sessions sess
JOIN Events evt
     ON sess.event_id = evt.event_id
GROUP BY evt.event_id;