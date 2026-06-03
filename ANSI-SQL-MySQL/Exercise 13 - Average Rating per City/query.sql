SELECT evt.city,
       AVG(feed.rating) AS avg_rating
FROM Events evt
JOIN Feedback feed ON evt.event_id = feed.event_id
GROUP BY evt.city;