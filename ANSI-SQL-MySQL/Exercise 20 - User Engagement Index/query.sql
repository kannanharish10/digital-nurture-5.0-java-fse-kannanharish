SELECT usr.full_name,
       COUNT(DISTINCT reg.event_id) AS events_registered,
       COUNT(DISTINCT feed.feedback_id) AS feedbacks_submitted
FROM Users usr
LEFT JOIN Registrations reg
       ON usr.user_id = reg.user_id
LEFT JOIN Feedback feed
       ON usr.user_id = feed.user_id
GROUP BY usr.user_id;