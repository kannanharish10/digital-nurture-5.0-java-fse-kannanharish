SELECT ev.title, ev.city, ev.rating
FROM Events ev
WHERE ev.rating = (
    SELECT MAX(rating)
    FROM Events
)
ORDER BY ev.title;