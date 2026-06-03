SELECT evt.title
FROM Events evt
LEFT JOIN Sessions sess
       ON evt.event_id = sess.event_id
WHERE sess.session_id IS NULL;