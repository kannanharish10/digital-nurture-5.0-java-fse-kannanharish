SELECT evt.title
FROM Events evt
LEFT JOIN Resources res
       ON evt.event_id = res.event_id
WHERE res.resource_id IS NULL;