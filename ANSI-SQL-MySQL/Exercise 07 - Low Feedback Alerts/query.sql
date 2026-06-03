SELECT usr.full_name,
       feed.rating,
       feed.comments,
       evt.title AS event_name
FROM Feedback feed
JOIN Users usr ON feed.user_id = usr.user_id
JOIN Events evt ON feed.event_id = evt.event_id
WHERE feed.rating < 3;