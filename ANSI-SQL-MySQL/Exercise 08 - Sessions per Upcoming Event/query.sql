SELECT evt.title,
       COUNT(sess.session_id) AS session_count
FROM Events evt
LEFT JOIN Sessions sess ON evt.event_id = sess.event_id
WHERE evt.status = 'upcoming'
GROUP BY evt.event_id;