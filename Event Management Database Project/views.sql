-- Upcoming events
CREATE VIEW upcoming_events AS
SELECT e.title AS event_title,
       e.date AS event_data,
       o.name AS organizer_name,
       v.name AS venue_name
FROM Event e
JOIN Organizer o ON e.organizer_id= o.organizer_id
JOIN Venue e    ON  e.venue_id=e.venue_id
WHERE e.date >= CURRENT_DATE;


-- event attendee list

CREATE VIEW event_attendees_list AS
SELECT e.title AS event_title,
       a.name AS attendee_name,
       a.email AS attendee_email,
       ea.ticket_price AS ticket_price
FROM Event e
JOIN Event_Attendee ea ON e.id = ea.event_id
JOIN Attendee a ON ea.attendee_id = a.id;

CREATE VIEW venue_utilization AS
SELECT v.name AS venue_name,
       COUNT(e.id) AS event_count,
       v.capacity AS venue_capacity
FROM Venue v
LEFT JOIN Event e ON v.id = e.venue_id
GROUP BY v.name, v.capacity;

CREATE VIEW organizer_event_summary AS
SELECT o.name AS organizer_name,
       COUNT(e.id) AS total_events,
       SUM((SELECT COUNT(*) 
            FROM Event_Attendee ea 
            WHERE ea.event_id = e.id)) AS total_attendees
FROM Organizer o
JOIN Event e ON o.id = e.organizer_id
GROUP BY o.name;

