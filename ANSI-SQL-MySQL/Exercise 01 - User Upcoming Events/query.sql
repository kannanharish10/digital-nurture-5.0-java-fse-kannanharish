SELECT ev.title, ev.start_date, ev.city
FROM Events ev
JOIN Registrations reg ON ev.event_id = reg.event_id
JOIN Users usr ON reg.user_id = usr.user_id
WHERE usr.user_id = 1
  AND ev.status = 'upcoming'
  AND ev.city = usr.city
ORDER BY ev.start_date;