SELECT usr.full_name,
       COUNT(feed.feedback_id) AS feedback_count
FROM Users usr
JOIN Feedback feed
     ON usr.user_id = feed.user_id
GROUP BY usr.user_id
ORDER BY feedback_count DESC
LIMIT 5;