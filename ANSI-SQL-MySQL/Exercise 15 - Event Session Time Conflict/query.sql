SELECT sessA.event_id,
       sessA.title AS session1,
       sessB.title AS session2,
       sessA.start_time,
       sessA.end_time,
       sessB.start_time,
       sessB.end_time
FROM Sessions sessA
JOIN Sessions sessB
    ON sessA.event_id = sessB.event_id
   AND sessA.session_id < sessB.session_id
WHERE (sessA.start_time < sessB.end_time)
  AND (sessB.start_time < sessA.end_time);