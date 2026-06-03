SELECT evt.title,
       COUNT(sess.session_id) AS session_count
FROM Events evt
JOIN Sessions sess ON evt.event_id = sess.event_id
GROUP BY evt.event_id
HAVING session_count = (
    SELECT COUNT(session_id) AS total_sessions
    FROM Sessions
    GROUP BY event_id
    ORDER BY total_sessions DESC
    LIMIT 1
);