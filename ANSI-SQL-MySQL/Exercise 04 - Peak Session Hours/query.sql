SELECT ev.title, COUNT(sess.session_id) AS session_count
FROM Events ev
LEFT JOIN Sessions sess ON ev.event_id = sess.event_id
    AND HOUR(sess.start_time) >= 10
    AND HOUR(sess.start_time) < 12
GROUP BY ev.event_id;